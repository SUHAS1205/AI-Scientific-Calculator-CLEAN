import os
from flask import Flask, render_template, request, redirect, url_for, flash, session, jsonify
from dotenv import load_dotenv
from werkzeug.security import generate_password_hash, check_password_hash
from openai import OpenAI
import mysql.connector
import math
import numpy as np
import json
import re

# -----------------------------
# LOAD ENV
# -----------------------------
def load_config(app):
    env_path = os.path.join(app.instance_path, "secrets.env")
    if os.path.exists(env_path):
        load_dotenv(env_path)
    else:
        raise FileNotFoundError("secrets.env not found in /instance folder")

# -----------------------------
# DB CONNECTION
# -----------------------------
def get_db():
    if not hasattr(app, "db"):
        app.db = mysql.connector.connect(
            host=app.config["MYSQL_HOST"],
            port=app.config["MYSQL_PORT"],
            user=app.config["MYSQL_USER"],
            password=app.config["MYSQL_PASSWORD"],
            database=app.config["MYSQL_DB"]
        )
    return app.db

# -----------------------------
# CREATE APP
# -----------------------------
app = Flask(__name__, instance_relative_config=True)
load_config(app)

app.config["SECRET_KEY"] = os.getenv("FLASK_SECRET_KEY")
app.config["MYSQL_HOST"] = os.getenv("MYSQL_HOST")
app.config["MYSQL_PORT"] = int(os.getenv("MYSQL_PORT"))
app.config["MYSQL_USER"] = os.getenv("MYSQL_USER")
app.config["MYSQL_PASSWORD"] = os.getenv("MYSQL_PASSWORD")
app.config["MYSQL_DB"] = os.getenv("MYSQL_DB")




@app.route("/")
def home():
    return render_template("index.html")  




@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "POST":
        username = request.form["username"]
        email = request.form["email"]
        password = request.form["password"]

        db = get_db()
        cursor = db.cursor()

        cursor.execute("SELECT id FROM users WHERE email = %s", (email,))
        if cursor.fetchone():
            flash("Email already registered!", "error")
            return redirect(url_for("register"))

        hashed = generate_password_hash(password)
        cursor.execute(
            "INSERT INTO users (username, email, password) VALUES (%s, %s, %s)",
            (username, email, hashed),
        )
        db.commit()

        flash("Registration successful!", "success")
        return redirect(url_for("login"))

    return render_template("register.html")

@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]

        db = get_db()
        cursor = db.cursor(dictionary=True)

        cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
        user = cursor.fetchone()

        if not user or not check_password_hash(user["password"], password):
            flash("Invalid email or password!", "error")
            return redirect(url_for("login"))

        session["user_id"] = user["id"]
        session["username"] = user["username"]

        return redirect(url_for("calculator"))

    return render_template("login.html")

@app.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("login"))



@app.route("/calculator")
def calculator():
    if "user_id" not in session:
        return redirect(url_for("login"))
    return render_template("calculator.html")



# In app.py, replace your current process_expression function with this:

@app.route("/process", methods=["POST"])
def process_expression():
    if "user_id" not in session:
        return jsonify({"status": "error", "message": "Unauthorized"}), 401

    try:
        data = request.get_json()
        expression = data.get("expression", "").strip()

        if not expression:
            return jsonify({"status": "error", "message": "Empty expression"}), 400

        client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

        # 1. Ask AI to classify: Is this a graph request or a calculation?
        # We ask for a JSON response to make it machine-readable.
        system_instruction = """
        Analyze the user input.
        1. If the user asks to "plot", "graph", or "visualize" a function:
           - Return JSON: {"type": "graph", "equation": "python_numpy_syntax"}
           - Example: "Graph sine x" -> {"type": "graph", "equation": "np.sin(x)"}
           - Example: "Plot x squared" -> {"type": "graph", "equation": "x**2"}
           - Use 'np.' prefix for functions (np.sin, np.cos, np.tan, np.exp, np.log, np.sqrt).
        
        2. If it is a standard calculation:
           - Return JSON: {"type": "calc", "result": "HTML_formatted_solution"}
           - For the result, use <ol>, <li>, <b> tags for steps as defined previously.
        """

        response = client.chat.completions.create(
            model="gpt-4o-mini",
            messages=[
                {"role": "system", "content": system_instruction},
                {"role": "user", "content": expression}
            ],
            response_format={"type": "json_object"} # Force JSON mode
        )

        ai_data = json.loads(response.choices[0].message.content)

        # ---------------------------------------------------------
        # SCENARIO A: GRAPHING REQUEST
        # ---------------------------------------------------------
        if ai_data.get("type") == "graph":
            equation_str = ai_data.get("equation")
            
            # Generate X and Y values safely
            try:
                x_values = np.linspace(-10, 10, 400) # Generate 400 points from -10 to 10
                
                # Safe dictionary for eval
                allowed_locals = {"x": x_values, "np": np}
                
                # Calculate Y
                y_values = eval(equation_str, {"__builtins__": None}, allowed_locals)
                
                # Convert numpy arrays to lists for JSON
                graph_data = {
                    "x": x_values.tolist(),
                    "y": y_values.tolist(),
                    "equation": equation_str.replace("np.", "").replace("**", "^") # Clean name for display
                }
                
                # Save to DB (Store "Graph: [Equation]" as result text)
                db = get_db()
                cursor = db.cursor()
                cursor.execute(
                    "INSERT INTO history (user_id, expression, result) VALUES (%s, %s, %s)",
                    (session["user_id"], expression, f"Graph generated for {equation_str}")
                )
                db.commit()

                return jsonify({
                    "status": "success", 
                    "type": "graph", 
                    "graph_data": graph_data,
                    "result": f"Here is the graph for {equation_str}" # Text to speak
                })

            except Exception as math_err:
                return jsonify({"status": "error", "message": f"Could not plot: {str(math_err)}"})

        # ---------------------------------------------------------
        # SCENARIO B: STANDARD CALCULATION
        # ---------------------------------------------------------
        else:
            result_text = ai_data.get("result")
            
            # Save history
            db = get_db()
            cursor = db.cursor()
            cursor.execute(
                "INSERT INTO history (user_id, expression, result) VALUES (%s, %s, %s)",
                (session["user_id"], expression, result_text)
            )
            db.commit()

            return jsonify({"status": "success", "type": "calc", "result": result_text})

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)})





# ---------------------------------------------------------
# HISTORY ROUTE (With Pagination)
# ---------------------------------------------------------
import math

@app.route("/history")
def history():
    if "user_id" not in session:
        return redirect(url_for("login"))

    # 1. Get current page number from URL (default is 1)
    page = request.args.get('page', 1, type=int)
    per_page = 10  # Items per page
    offset = (page - 1) * per_page

    db = get_db()
    cursor = db.cursor(dictionary=True)
    
    # 2. Count total records (to calculate total pages)
    cursor.execute("SELECT COUNT(*) as count FROM history WHERE user_id = %s", (session["user_id"],))
    total_records = cursor.fetchone()['count']
    total_pages = math.ceil(total_records / per_page)
    
    # 3. Fetch only the records for this page
    cursor.execute(
        "SELECT * FROM history WHERE user_id = %s ORDER BY created_at DESC LIMIT %s OFFSET %s", 
        (session["user_id"], per_page, offset)
    )
    history_items = cursor.fetchall()

    return render_template(
        "history.html", 
        history=history_items, 
        page=page, 
        total_pages=total_pages,
        per_page=per_page
    )



@app.route("/delete_history/<int:id>")
def delete_history_item(id):
    if "user_id" not in session:
        return redirect(url_for("login"))
    
    db = get_db()
    cursor = db.cursor()
    # Ensure user only deletes their own data
    cursor.execute("DELETE FROM history WHERE id = %s AND user_id = %s", (id, session["user_id"]))
    db.commit()
    
    return redirect(url_for("history"))






if __name__ == "__main__":
    app.run(debug=True)

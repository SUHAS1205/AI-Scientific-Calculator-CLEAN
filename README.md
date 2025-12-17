# AI Scientific Calculator

---

## Project Overview

AI Scientific Calculator is a web-based tool that leverages AI to interpret natural language math queries via **text or voice**, performing advanced computations such as **calculus, algebra, matrices, and statistics** using OpenAI’s GPT-4o-mini.

---

## Key Features

- Natural language and voice input support  
  *(e.g., “Integrate sin(x) from 0 to 4”)* using Web Speech API for hands-free usage.

- Secure user authentication  
  Login and registration with personalized history tracking stored in a MySQL database.

- Real-time intelligent results  
  Text-to-speech output with higher flexibility and accuracy than traditional calculators.

---

## Tech Stack

### Frontend
- HTML5  
- Tailwind CSS  
- JavaScript (Fetch API, SpeechSynthesis)

### Backend
- Flask (Python)  
- Session management  
- Werkzeug security

### Core
- OpenAI GPT-4o-mini (AI math engine)  
- MySQL (data persistence)

---

## Project Impact

This project fills gaps in existing tools by offering **AI-driven, user-specific mathematical computation** for engineering students and researchers.

---

## Supported Commands

### Basic Arithmetic

**Example Commands**

"Solve 72 ÷ 6 × 5."


"Find 45 mod 7."


"Round 12.678 to 2 decimal places."


"What is floor(7.9) and ceil(7.1)?"


###Exponential & Logarithmic


**Example commands**


"Calculate 5^7."


"Solve for x: 3^x = 81."


"Find ln(32) and log₁₀(450)."


"Solve log₂(x) + log₂(8) = 5."


###Algebraic Expressions


**Example commands:**


"Find the distance between points (3,4) and (7,1)."


-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2025 at 09:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voice_calculator_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expression` text NOT NULL,
  `result` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `expression`, `result`, `created_at`) VALUES
(1, 1, 'how are you girl', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">I\'m here to help you with mathematics!</p>\n</div>', '2025-11-21 08:43:22'),
(3, 1, 'values of 2+2(4)/2', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">Calculating the expression: 2 + 2(4)/2</p>\n    <ol class=\"list-decimal pl-5 space-y-1 text-gray-700\">\n        <li>First, we follow the order of operations (PEMDAS/BODMAS). Start by calculating the multiplication and division from left to right.</li>\n        <li>Calculate 2(4): \n            <b>2(4) = 8</b>.\n        </li>\n        <li>Now replace the multiplication in the expression:\n            <b>2 + 8/2</b>.\n        </li>\n        <li>Next, calculate the division: \n            <b>8/2 = 4</b>.\n        </li>\n        <li>Replace the division in the expression:\n            <b>2 + 4</b>.\n        </li>\n        <li>Finally, perform the addition:\n            <b>2 + 4 = 6</b>.\n        </li>\n    </ol>\n    <p class=\"font-bold text-brand-600\">The final answer is: <b>6</b></p>\n</div>', '2025-11-21 08:54:12'),
(4, 1, 'integration of x cube + x square + x', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">Integration of x³ + x² + x</p>\n    <ol class=\"list-decimal pl-5 space-y-1 text-gray-700\">\n        <li>To find the integral of the function, we will integrate each term separately.</li>\n        <li>Integrate x³:\n            <ul>\n                <li>The integral of x³ is (1/4)x⁴ + C₁.</li>\n            </ul>\n        </li>\n        <li>Integrate x²:\n            <ul>\n                <li>The integral of x² is (1/3)x³ + C₂.</li>\n            </ul>\n        </li>\n        <li>Integrate x:\n            <ul>\n                <li>The integral of x is (1/2)x² + C₃.</li>\n            </ul>\n        </li>\n        <li>Now, add all the integrated terms together:\n            <ul>\n                <li>(1/4)x⁴ + (1/3)x³ + (1/2)x² + C, where C = C₁ + C₂ + C₃ is the constant of integration.</li>\n            </ul>\n        </li>\n    </ol>\n    <p class=\"font-bold text-brand-600\">Final Answer:</p>\n    <p><b>(1/4)x⁴ + (1/3)x³ + (1/2)x² + C</b></p>\n</div>', '2025-11-21 09:07:20'),
(5, 1, 'generate the graph for x cube versus x square', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">Graph of x³ versus x²</p>\n    <ol class=\"list-decimal pl-5 space-y-1 text-gray-700\">\n        <li>To generate the graph for the functions y = x³ and y = x², we first need to understand the behavior of these functions.</li>\n        <li>The function y = x² is a parabola opening upwards, which will have its vertex at the origin (0,0) and is symmetric with respect to the y-axis.</li>\n        <li>The function y = x³ is a cubic curve that passes through the origin as well, but unlike the parabola, it has a point of inflection at the origin and extends to the third quadrant in a \'S\' shape.</li>\n        <li>We can plot values for x within a range, say -3 to 3, to see how these two functions compare:</li>\n        <li>For x = -3: y = (-3)² = 9 and y = (-3)³ = -27</li>\n        <li>For x = -2: y = (-2)² = 4 and y = (-2)³ = -8</li>\n        <li>For x = -1: y = (-1)² = 1 and y = (-1)³ = -1</li>\n        <li>For x = 0: y = 0² = 0 and y = 0³ = 0</li>\n        <li>For x = 1: y = 1² = 1 and y = 1³ = 1</li>\n        <li>For x = 2: y = 2² = 4 and y = 2³ = 8</li>\n        <li>For x = 3: y = 3² = 9 and y = 3³ = 27</li>\n        <li>Using these points, we plot (x, y) coordinates for both functions on a Cartesian coordinate system.</li>\n        <li>The graph will show that y = x² remains positive for all x, while y = x³ takes negative values for negative x and positive values for positive x.</li>\n    </ol>\n    <p class=\"font-bold text-brand-600\">Final Note:</p>\n    <p class=\"text-gray-700\">To visualize this graph, you can use graphing software or tools like Desmos, GeoGebra, or even graph it by hand on a Cartesian plane.</p>\n</div>', '2025-11-21 09:08:30'),
(6, 1, 'how are you?', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">I\'m here to help you with your math questions!</p>\n</div>', '2025-11-21 09:09:39'),
(7, 1, 'thank you', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">You\'re Welcome!</p>\n    <p>If you have any questions or need help with math, feel free to ask!</p>\n</div>', '2025-11-21 09:09:49'),
(8, 1, '2+(9)(9)', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">Calculation of 2 + (9)(9)</p>\n    <ol class=\"list-decimal pl-5 space-y-1 text-gray-700\">\n        <li>First, calculate (9)(9): 9 * 9 = 81.</li>\n        <li>Next, add 2 to the result: 2 + 81 = 83.</li>\n    </ol>\n    <p class=\"font-bold text-brand-600\">Final Answer: <b>83</b></p>\n</div>', '2025-11-21 09:14:23'),
(9, 1, '2+(9)', '<div class=\"space-y-2\">\n    <p class=\"font-bold text-brand-600\">Simple Addition</p>\n    <ol class=\"list-decimal pl-5 space-y-1 text-gray-700\">\n        <li>Calculate the sum: 2 + 9 = 11</li>\n    </ol>\n    <b>11</b>\n</div>', '2025-11-21 09:16:24'),
(10, 1, 'generate the graph X ^ 2 versus x', 'Graph generated for x**2', '2025-11-21 12:43:23'),
(11, 1, 'generate the graph X ^ 2 versus 3', 'Graph generated for x**2', '2025-11-21 12:43:37'),
(12, 1, 'Plot x^2 + 2x', 'Graph generated for x**2 + 2*x', '2025-11-21 12:44:43'),
(13, 1, 'cos(45)', '<ol><li><b>Identify the cosine value:</b> The cosine of 45 degrees is a known value.</li><li><b>Calculate:</b> cos(45) = sqrt(2)/2.</li></ol>', '2025-11-22 05:21:25'),
(14, 1, 'cos(45)', '<ol><li><b>Identify the angle:</b> 45 degrees</li><li><b>Convert to radians:</b> 45 degrees = π/4 radians</li><li><b>Calculate:</b> cos(π/4) = √2/2</li></ol>', '2025-11-22 05:25:24'),
(15, 1, 'Graph sin(x)', 'Graph generated for np.sin(x)', '2025-11-22 05:28:40'),
(16, 1, 'what is the graph for tan(x)', 'Graph generated for np.tan(x)', '2025-11-22 05:29:28'),
(17, 1, '0.8509035245', '<ol><li><b>Result:</b> 0.8509035245</li></ol>', '2025-11-22 05:39:47'),
(18, 1, '7', '<ol><li><b>Input Value:</b> 7</li><li><b>Result:</b> 7</li></ol>', '2025-11-22 05:40:29'),
(19, 1, '14', '<ol><li><b>The input is a number: 14</b></li></ol>', '2025-11-22 05:40:39'),
(20, 1, 'Derivative of x^3', '<ol><li><b>Function:</b> x^3</li><li><b>Apply the power rule:</b> d/dx[x^n] = n*x^(n-1)</li><li><b>Result:</b> 3*x^2</li></ol>', '2025-11-22 05:40:47'),
(21, 1, 'Factorial of 5', '<ol><li><b>Definition:</b> The factorial of a non-negative integer n is the product of all positive integers less than or equal to n.</li><li><b>Calculation:</b> 5! = 5 × 4 × 3 × 2 × 1 = 120</li><li><b>Result:</b> 5! = 120</li></ol>', '2025-11-22 05:41:05'),
(22, 1, '-1.9952004122', '<ol><li><b>Step 1:</b> The given number is -1.9952004122.</li></ol>', '2025-11-22 05:41:49'),
(23, 1, '0', '<ol><li><b>Step 1:</b> The value is already provided as 0.</li></ol>', '2025-11-22 05:42:03'),
(24, 1, '112', '<ol><li><b>Identifying the number </b>: The given input is 112.</li><li><b>Conclusion</b> : The input is simply the number itself.</li></ol>', '2025-11-22 05:42:23'),
(25, 1, '5+8tan()', '<ol><li><b>Evaluate </b> tan(θ) where θ is unspecified, we need to define θ to proceed.</li><li><b>Add </b> 5 and 8 multiplied by tan(θ): 5 + 8 * tan(θ).</li><li><b>Final Expression:</b> 5 + 8 tan(θ).</li></ol>', '2025-11-22 05:55:34'),
(26, 1, 'plot a graph for sin x', 'Graph generated for np.sin(x)', '2025-11-22 05:56:18'),
(27, 1, 'what is sin theta by cos theta', '<ol><li><b>Identify the trigonometric identity:</b> The expression sin(θ)/cos(θ) is a known trigonometric identity.</li><li><b>Apply the identity:</b> sin(θ)/cos(θ) = tan(θ).</li><li><b>Final Result:</b> Therefore, sin(θ)/cos(θ) = tan(θ).</li></ol>', '2025-11-22 05:56:34'),
(28, 1, 'what is the differentiation of x cube + 3 X square + X + 5', '<ol><li><b>Identify the function:</b> f(x) = x<sup>3</sup> + 3x<sup>2</sup> + x + 5</li><li><b>Differentiate each term:</b></li><li><b>Term 1:</b> The derivative of x<sup>3</sup> is 3x<sup>2</sup></li><li><b>Term 2:</b> The derivative of 3x<sup>2</sup> is 6x</li><li><b>Term 3:</b> The derivative of x is 1</li><li><b>Term 4:</b> The derivative of 5 is 0</li><li><b>Combine the results:</b> f\'(x) = 3x<sup>2</sup> + 6x + 1</li></ol>', '2025-11-22 05:57:12'),
(29, 1, 'Derivative of x^2', '<ol><li><b>Identify the function:</b> f(x) = x<sup>2</sup></li><li><b>Apply the power rule:</b> f\'(x) = 2 * x<sup>(2-1)</sup> = 2x</li><li><b>Conclusion:</b> The derivative of x<sup>2</sup> is 2x.</li></ol>', '2025-11-22 05:58:40'),
(30, 1, 'what is the graph of tan x', 'Graph generated for np.tan(x)', '2025-11-22 05:59:19'),
(31, 1, 'Graph tan(8)', 'Graph generated for np.tan(8)', '2025-11-22 06:03:56'),
(32, 1, 'Graph sin(x)', 'Graph generated for np.sin(x)', '2025-11-22 06:04:33'),
(33, 1, 'derivation of x square', '<ol><li><b>Function:</b> f(x) = x<sup>2</sup></li><li><b>Step 1:</b> Apply the power rule of differentiation: if f(x) = x<sup>n</sup>, then f\'(x) = n*x<sup>n-1</sup>.</li><li><b>Step 2:</b> Here, n = 2, so f\'(x) = 2*x<sup>2-1</sup> = 2*x<sup>1</sup> = 2*x.</li></ol><b>Result:</b> The derivative of x<sup>2</sup> is 2x.', '2025-11-22 06:04:50'),
(34, 1, 'tan(90)', '<ol><li><b>Calculate:</b> tan(90°)</li><li><b>Result:</b> undefined (as tan(90°) approaches infinity)</li></ol>', '2025-11-22 06:07:39'),
(35, 1, 'graph tan(x)', 'Graph generated for np.tan(x)', '2025-11-22 06:07:56'),
(36, 1, 'graph tan(x)', 'Graph generated for np.tan(x)', '2025-11-22 06:12:20'),
(37, 1, 'Graph sin(x)', 'Graph generated for np.sin(x)', '2025-11-24 04:37:06'),
(38, 1, 'Graph sin(x)', 'Graph generated for np.sin(x)', '2025-11-24 04:37:07'),
(39, 1, 'tan(96)', '<ol><li>Convert 96 degrees to radians: <b>96 * (π / 180) = 1.6755 radians</b></li><li>Calculate the tangent: <b>tan(1.6755) = -5.107</b></li></ol>', '2025-11-24 04:39:26'),
(40, 1, 'Integral of 2x', '<ol><li><b>Identify the function to integrate:</b> The function is 2x.</li><li><b>Apply the power rule:</b> The integral of x^n is (x^(n+1))/(n+1) + C. Here, n=1, so the integral of 2x is 2 * (x^(1+1))/(1+1).</li><li><b>Calculate the result:</b> This gives us (2 * x^2)/2 = x^2 + C.</li></ol>', '2025-11-24 04:40:57'),
(41, 1, 'Integral of 2x ^2 +3x+2', '<ol><li><b>Identify the function:</b> f(x) = 2x² + 3x + 2</li><li><b>Apply the power rule of integration:</b> ∫x^n dx = (x^(n+1))/(n+1) + C</li><li><b>Integrate each term:</b></li><li><b>1st term:</b> ∫2x² dx = (2/3)x³</li><li><b>2nd term:</b> ∫3x dx = (3/2)x²</li><li><b>3rd term:</b> ∫2 dx = 2x</li><li><b>Combine the results:</b> (2/3)x³ + (3/2)x² + 2x + C</li></ol>', '2025-11-24 04:41:21'),
(42, 1, 'Integral of 2x', '<ol><li><b>Identify the function to integrate:</b> The function is 2x.</li><li><b>Apply the power rule of integration:</b> The integral of ax^n is (a/n+1)x^(n+1) + C. Here, a = 2 and n = 1.</li><li><b>Calculate the integral:</b> (2/2)x^(1+1) + C = x^2 + C.</li><li><b>Final answer:</b> The integral of 2x is x^2 + C.</li></ol>', '2025-11-25 07:01:07'),
(43, 1, 'what is the value of 2 power 60', '<ol><li><b>Calculate:</b> 2^60</li><li><b>Result:</b> 1152921504606846976</li></ol>', '2025-11-25 07:01:54'),
(44, 1, 'got a graph for cos(x)', 'Graph generated for np.cos(x)', '2025-11-25 07:02:27'),
(45, 1, 'generate the graph for sin x', 'Graph generated for np.sin(x)', '2025-11-25 07:02:40'),
(46, 1, 'what is the value of sin 90', '<ol><li><b>Use the sine function:</b> sin(90°) = 1</li></ol>', '2025-11-25 07:03:05'),
(47, 1, 'plot a graph for sin 90', 'Graph generated for np.sin(np.radians(90))', '2025-11-25 07:03:18'),
(48, 1, 'cos 90 / sin 90', '<ol><li><b>Calculate cos(90):</b> cos(90°) = 0</li><li><b>Calculate sin(90):</b> sin(90°) = 1</li><li><b>Perform the division:</b> 0 / 1 = 0</li></ol>', '2025-11-25 07:03:50'),
(49, 1, 'plot the graph for tan 90', 'Graph generated for np.tan(90)', '2025-11-25 07:04:31'),
(50, 1, 'plot a graph for cos 90', 'Graph generated for np.cos(90)', '2025-11-25 07:05:39'),
(51, 1, 'Integral of 2x', '<ol><li><b>Identify the function:</b> Here, the function is 2x.</li><li><b>Apply the power rule of integration:</b> The integral of x^n is (x^(n+1))/(n+1), where n is not equal to -1.</li><li><b>Calculate the integral:</b> ∫2x dx = 2 * (x^(1+1))/(1+1) = 2 * (x^2)/2 = x^2 + C</li></ol>', '2025-11-25 07:07:35'),
(52, 1, 'do the differentiate for the 5 x power of 5 + 4 x power 4 + 3 X ^ 2 + x square + X + 3', '<ol><li><b>Step 1:</b> Differentiate 5x^5: The derivative is 25x^4.</li><li><b>Step 2:</b> Differentiate 4x^4: The derivative is 16x^3.</li><li><b>Step 3:</b> Differentiate 3x^2: The derivative is 6x.</li><li><b>Step 4:</b> Differentiate x^2: The derivative is 2x.</li><li><b>Step 5:</b> Differentiate x: The derivative is 1.</li><li><b>Step 6:</b> The derivative of the constant 3 is 0.</li><li><b>Final Result:</b> Combine all derivatives: 25x^4 + 16x^3 + 6x + 2x + 1 = 25x^4 + 16x^3 + 8x + 1.</li></ol>', '2025-11-25 07:08:25'),
(53, 1, 'plot a graph for tan 90', 'Graph generated for np.tan(np.radians(90))', '2025-11-25 07:10:07'),
(54, 1, 'plot a graph for tan 45', 'Graph generated for np.tan(45)', '2025-11-25 07:10:22'),
(55, 1, 'plot a graph for sin 45', 'Graph generated for np.sin(45)', '2025-11-25 07:10:42'),
(56, 1, 'plot a graph for x square versus x', 'Graph generated for x**2', '2025-11-25 07:12:17'),
(57, 1, 'the grofer e power x', 'Graph generated for np.exp(x)', '2025-11-25 07:13:00'),
(58, 1, 'square + X + 8 = 0 then what is the value of x', '<ol><li><b>Rearrange the equation:</b> x² + x + 8 = 0</li><li><b>Calculate the discriminant:</b> D = b² - 4ac = (1)² - 4(1)(8) = 1 - 32 = -31</li><li><b>Since D < 0,</b> there are no real solutions for x.</li></ol>', '2025-11-25 07:13:40'),
(59, 1, 'x² + x + 7 = 0', '<ol><li><b>Identify the coefficients:</b> a = 1, b = 1, c = 7</li><li><b>Calculate the discriminant:</b> D = b² - 4ac = 1² - 4(1)(7) = 1 - 28 = -27</li><li><b>Since the discriminant is negative, there are no real roots. The solutions are complex:</b></li><li><b>Use the quadratic formula:</b> x = (-b ± √D) / 2a = (-1 ± √(-27)) / 2(1)</li><li><b>Express the imaginary roots:</b> x = (-1 ± 3i√3) / 2</li><li><b>The solutions are:</b> x = -1/2 + (3√3/2)i and x = -1/2 - (3√3/2)i</li></ol>', '2025-11-25 07:14:45'),
(60, 1, 'what is the value of x when x square - 6 +', '<ol><li><b>Given equation:</b> x² - 6 = 0</li><li><b>Add 6 to both sides:</b> x² = 6</li><li><b>Take the square root:</b> x = ±√6</li><li><b>Final values:</b> x ≈ ±2.45</li></ol>', '2025-11-25 07:16:17'),
(61, 1, 'what is the value of x when x square - 5 x + 6 equals to 0', '<ol><li><b>Identify the quadratic equation</b>: x<sup>2</sup> - 5x + 6 = 0</li><li><b>Factor the equation</b>: (x - 2)(x - 3) = 0</li><li><b>Set each factor to zero</b>: x - 2 = 0 or x - 3 = 0</li><li><b>Solve for x</b>: x = 2 or x = 3</li></ol>', '2025-11-25 07:16:40'),
(62, 1, 'x2 - 5x + 6 = 0', '<ol><li><b>Identify the coefficients:</b> a = 1, b = -5, c = 6</li><li><b>Calculate the discriminant:</b> D = b² - 4ac = (-5)² - 4(1)(6) = 25 - 24 = 1</li><li><b>Apply the quadratic formula:</b> x = (-b ± √D) / (2a)</li><li><b>Solve for x:</b> x = (5 ± √1) / 2(1)</li><li><b>Evaluate the solutions:</b> x₁ = (5 + 1) / 2 = 3 and x₂ = (5 - 1) / 2 = 2</li></ol>', '2025-11-25 07:17:27'),
(63, 1, 'Thank You', '<ol><li><b>Response:</b> You\'re welcome!</li></ol>', '2025-11-25 07:19:57'),
(64, 1, 'how can you help me', '<ol><li><b>Information Request:</b> You asked how I can assist you.</li><li><b>Available Actions:</b> I can provide help with mathematical calculations, graphing functions, answering questions, and more.</li></ol>', '2025-11-25 07:20:31'),
(65, 1, 'help me', '<ol><li><b>Identify the issue</b>: Determine what specific help you need.</li><li><b>Provide details</b>: Give information about the topic or problem.</li><li><b>Ask a specific question</b>: Clearly state what you would like assistance with.</li></ol>', '2025-11-25 07:20:50'),
(66, 1, 'factorial value of 5', '<ol><li><b>Identify the factorial definition:</b> n! = n × (n - 1) × (n - 2) × ... × 1</li><li><b>Calculate 5!:</b> 5! = 5 × 4 × 3 × 2 × 1</li><li><b>Perform the multiplication:</b> 5 × 4 = 20; 20 × 3 = 60; 60 × 2 = 120; 120 × 1 = 120</li><li><b>Conclusion:</b> 5! = 120</li></ol>', '2025-11-25 07:22:40'),
(67, 1, 'what is the use of formula', '<ol><li><b>Identify the Purpose:</b> Formulas are used to represent relationships between different quantities or variables.</li><li><b>Perform Calculations:</b> They allow for the calculation of specific values based on input variables. For example, the formula for the area of a circle (A = πr²) calculates the area based on the radius.</li><li><b>Simplify Complex Problems:</b> Formulas break down complex problems into manageable parts.</li><li><b>Predict Outcomes:</b> They can be used in models to predict future outcomes based on current data.</li></ol>', '2025-11-25 07:23:17'),
(68, 1, 'what is the euler formula', '<ol><li><b>Euler\'s formula</b> states that for any real number x, the following holds: e^(ix) = cos(x) + i*sin(x).</li><li>This expresses the relationship between complex exponentials and trigonometric functions.</li></ol>', '2025-11-25 07:23:43'),
(69, 1, 'what is the value of e power 2x', '<ol><li>Identify the expression: e<sup>2x</sup></li><li>Since e is a constant (approx. 2.71828), the expression can be evaluated for any specific value of x.</li><li>For general understanding, the expression remains e<sup>2x</sup>.</li></ol>', '2025-11-25 07:24:13'),
(70, 1, 'what is the value of e power 2 I', '<ol><li><b>Using Euler\'s formula:</b> e^(ix) = cos(x) + i*sin(x)</li><li><b>For x = 2:</b> e^(2i) = cos(2) + i*sin(2)</li><li><b>Calculate cos(2) and sin(2):</b></li><li><b>cos(2) ≈ -0.4161</b></li><li><b>sin(2) ≈ 0.9093</b></li><li><b>Combine the results:</b> e^(2i) ≈ -0.4161 + 0.9093i</li></ol>', '2025-11-25 07:24:45'),
(71, 1, 'modulus of 3 + 8i', '<ol><li><b>Calculate the modulus:</b> |z| = √(a² + b²), where z = a + bi</li><li><b>Here, a = 3 and b = 8:</b></li><li><b>Substituting the values:</b> |z| = √(3² + 8²)</li><li><b>Calculating:</b> |z| = √(9 + 64) = √73</li><li><b>Final result:</b> |z| = √73</li></ol>', '2025-11-25 07:25:38'),
(72, 1, 'modulus of 3 + 85', '<ol><li><b>Calculate the modulus:</b> The modulus of a number is its absolute value. Here, we consider the number 3 + 85.</li><li><b>Add 3 and 85:</b> 3 + 85 = 88</li><li><b>Take the modulus:</b> |88| = 88</li></ol>', '2025-11-25 07:26:19'),
(73, 1, 'what is the graph of modulus of 3 + 8i', 'Graph generated for np.abs(3 + 8j)', '2025-11-25 07:26:38'),
(74, 1, 'Derivative of x^2', '<ol><li><b>Definition:</b> To find the derivative of x^2, we use the power rule, which states that if f(x) = x^n, then f\'(x) = n*x^(n-1).</li><li><b>Apply the power rule:</b> For f(x) = x^2, n = 2. So, f\'(x) = 2*x^(2-1) = 2*x^1.</li><li><b>Final result:</b> The derivative of x^2 is 2x.</li></ol>', '2025-11-25 07:27:05'),
(75, 1, 'if I give derivation of X ^ 2 you can get the value definition', '<ol><li><b>Identify the function:</b> f(x) = x^2</li><li><b>Apply the power rule:</b> If f(x) = x^n, then f\'(x) = n*x^(n-1). Here, n=2.</li><li><b>Differentiate:</b> f\'(x) = 2*x^(2-1) = 2x.</li></ol>', '2025-11-25 07:27:15'),
(76, 1, 'Graph for the x^2', 'Graph generated for x**2', '2025-11-25 07:27:36'),
(77, 1, 'what is sin(0)', '<ol><li>Identify the value to be calculated: sin(0).</li><li>Using the sine function, we find that sin(0) = 0.</li><li>The final result is 0.</li></ol>', '2025-11-25 07:28:19'),
(78, 1, 'plot a  graph for sin(0)', 'Graph generated for np.sin(x)', '2025-11-25 07:28:39'),
(79, 1, 'plot a  graph for cot(45)', 'Graph generated for 1/np.tan(np.pi/4)', '2025-11-25 07:29:53'),
(80, 1, 'plot a  graph for cot(180)', 'Graph generated for 1/np.tan(np.radians(180))', '2025-11-25 07:30:22'),
(81, 1, 'plot a  graph for cot(180)', 'Graph generated for 1/np.tan(np.pi)', '2025-11-25 07:30:29'),
(82, 1, 'plot a  graph for tan(0)', 'Graph generated for np.tan(0)', '2025-11-25 07:30:48'),
(83, 1, 'plot a  graph for cos (60)', 'Graph generated for np.cos(60)', '2025-11-25 07:31:07'),
(84, 1, 'plot a  graph for cos (45)', 'Graph generated for np.cos(np.radians(45))', '2025-11-25 07:31:19'),
(85, 1, 'plot a  graph for cos (90)', 'Graph generated for np.cos(np.radians(90))', '2025-11-25 07:31:34'),
(86, 1, 'Derivative of x^2', '<ol><li><b>Identify the function:</b> f(x) = x^2</li><li><b>Apply the power rule:</b> f\'(x) = nx^(n-1) where n=2</li><li><b>Differentiate:</b> f\'(x) = 2x^(2-1) = 2x</li><li><b>Final result:</b> The derivative of x^2 is 2x</li></ol>', '2025-11-25 07:31:47'),
(87, 1, 'plot a graph for sin (90)', 'Graph generated for np.sin(np.radians(90))', '2025-11-25 07:32:34'),
(88, 1, 'Graph sin(x)', 'Graph generated for np.sin(x)', '2025-11-25 07:33:48'),
(89, 1, '2 3 4 5', '<ol><li><b>Input Values:</b> 2, 3, 4, 5</li><li><b>Result:</b> The input is a sequence of numbers without a specified operation. Please specify what you would like to compute with these numbers.</li></ol>', '2025-11-25 07:34:19'),
(90, 1, 'what is the determinant of 2,3,4,5', '<ol><li><b>Form the matrix:</b> A = [[2, 3], [4, 5]]</li><li><b>Calculate the determinant:</b> det(A) = (2*5) - (3*4) = 10 - 12 = -2</li></ol><b>Result:</b> The determinant is -2.', '2025-11-25 07:34:55'),
(91, 1, 'what is 10 model of 5', '<ol><li><b>Identify the calculation:</b> We need to calculate 10 mod 5.</li><li><b>Understand mod operation:</b> The mod operation finds the remainder of the division of one number by another.</li><li><b>Perform the calculation:</b> 10 divided by 5 is 2 with a remainder of 0.</li><li><b>Conclusion:</b> Therefore, 10 mod 5 is 0.</li></ol>', '2025-11-25 07:36:09'),
(92, 1, '10 Mod 7', '<ol><li><b>Step 1:</b> Find the integer division of 10 by 7, which is 1.</li><li><b>Step 2:</b> Multiply the quotient by 7: 1 * 7 = 7.</li><li><b>Step 3:</b> Subtract this result from 10: 10 - 7 = 3.</li><li><b>Result:</b> 10 Mod 7 = 3.</li></ol>', '2025-11-25 07:36:30'),
(93, 1, 'cube root of 999', '<ol><li>Identify the cube root operation.</li><li>Calculate the cube root of 999 using the formula: ∛999 = 999^(1/3).</li><li>Result: 9.997 (approximately)</li></ol>', '2025-11-25 07:37:26'),
(94, 1, 'cube root of 729', '<ol><li><b>Identify the number:</b> 729</li><li><b>Calculate the cube root:</b> 729^(1/3) = 9</li><li><b>Final result:</b> The cube root of 729 is 9</li></ol>', '2025-11-25 07:38:23'),
(95, 1, 'give plot graph for sin(x)', 'Graph generated for np.sin(x)', '2025-11-25 07:43:52'),
(96, 1, 'give plot graph for tan(x)', 'Graph generated for np.tan(x)', '2025-11-25 07:44:34'),
(97, 1, 'give plot graph for sin(x)', 'Graph generated for np.sin(x)', '2025-11-25 07:45:10'),
(98, 1, 'give plot graph for sin(90)', 'Graph generated for np.sin(np.radians(90))', '2025-11-25 07:47:40'),
(99, 1, 'give plot graph for sin(x)', 'Graph generated for np.sin(x)', '2025-11-25 07:47:49'),
(100, 1, 'give plot graph for sin(90)', 'Graph generated for np.sin(np.radians(90))', '2025-11-25 07:48:17'),
(101, 1, 'give plot graph for tan(x)', 'Graph generated for np.tan(x)', '2025-11-25 07:48:49'),
(102, 1, 'plot a graph x ^ 4- 2 x^2 +x-2=y', 'Graph generated for x**4 - 2*x**2 + x - 2', '2025-11-25 07:50:22'),
(103, 1, 'plot a graph x ^ 4- 2 x^2 +x-2=y and give the value of y', 'Graph generated for x**4 - 2*x**2 + x - 2', '2025-11-25 07:51:12'),
(104, 1, 'for this  x ^ 4- 2 x^2 +x-2=y and give the value of y', '<ol><li><b>Identify the equation:</b> y = x^4 - 2x^2 + x - 2</li><li><b>Calculate the value of y:</b> Substitute the value of x (if provided) into the equation.</li></ol>', '2025-11-25 07:51:31'),
(105, 1, 'for this  x ^ 4- 2 x^2 +x-2=10 and give the value of y', '<ol><li>Set the equation: x^4 - 2x^2 + x - 2 = 10</li><li>Rearrange it to: x^4 - 2x^2 + x - 12 = 0</li><li>Now, use numerical methods or factoring to find the values of x.</li><li>Let\'s say the solutions are x₁, x₂, ...</li><li>For y, you can define y in terms of x based on the context or further instructions.</li></ol>', '2025-11-25 07:52:01'),
(106, 1, 'for this  x ^ 4- 2 x^2 +x-2=10 and give the value of x', '<ol><li>Setup the equation: x^4 - 2x^2 + x - 2 = 10</li><li>Rearrange the equation: x^4 - 2x^2 + x - 12 = 0</li><li>Use numerical methods or a graphing tool to find the roots of the polynomial.</li><li>Approximating solutions, we find x ≈ 2.38, x ≈ -1.84, x ≈ 1.76, and x ≈ -2.08.</li></ol>', '2025-11-25 07:52:16'),
(107, 1, 'for this plot a graph x ^ 4- 2 x^2 +x-2=10', 'Graph generated for x**4 - 2*x**2 + x - 2 - 10', '2025-11-25 07:52:35'),
(108, 1, 'Integral of 2x', '<ol><li><b>Identify the function:</b> The function to integrate is 2x.</li><li><b>Apply the power rule:</b> The integral of x^n is (x^(n+1))/(n+1). Here, n = 1.</li><li><b>Integrate:</b> ∫2x dx = 2 * (x^(1+1))/(1+1) = 2 * (x^2)/2 = x^2.</li><li><b>Add the constant of integration:</b> Therefore, the integral is x² + C.</li></ol>', '2025-11-25 07:53:00'),
(109, 1, 'plot the graph for x ^2  and 5', 'Graph generated for x**2', '2025-11-25 07:53:33'),
(110, 1, 'convert 1000 meters into kilo meters', '<ol><li><b>Identify the conversion factor:</b> 1 kilometer = 1000 meters.</li><li><b>Set up the conversion:</b> 1000 meters × (1 kilometer / 1000 meters).</li><li><b>Calculate:</b> 1000 / 1000 = 1.</li></ol><b>Result:</b> 1000 meters is equal to 1 kilometer.', '2025-11-25 07:56:11'),
(111, 1, 'what is the midpoint of x(10,20) and y(20,30)', '<ol><li><b>Identify the coordinates:</b> Point A (10, 20) and Point B (20, 30).</li><li><b>Use the midpoint formula:</b> M = ( (x1 + x2)/2 , (y1 + y2)/2 )</li><li><b>Calculate the x-coordinate:</b> (10 + 20)/2 = 15</li><li><b>Calculate the y-coordinate:</b> (20 + 30)/2 = 25</li><li><b>Midpoint:</b> M = (15, 25)</li></ol>', '2025-11-25 07:58:04'),
(112, 1, 'what is the log 10 of base 2', '<ol><li>Use the change of base formula: <b>log_a(b) = log_c(b) / log_c(a)</b></li><li>Set <b>a = 2</b>, <b>b = 10</b>, and <b>c = 10</b> (common logarithm):</li><li><b>log_2(10) = log_10(10) / log_10(2)</b></li><li>Evaluate: <b>log_10(10) = 1</b></li><li>Now, calculate <b>log_10(2)</b> using a calculator: <b>log_10(2) ≈ 0.3010</b></li><li>Divide: <b>1 / 0.3010 ≈ 3.3219</b></li></ol>', '2025-11-25 07:58:47'),
(113, 1, 'sin (90)', '<ol><li><b>Convert 90 degrees to radians:</b> 90 * (π/180) = π/2</li><li><b>Calculate sin(π/2):</b> The value is 1.</li></ol>', '2025-11-25 07:59:24'),
(114, 1, 'sin(90)', '<ol><li><b>Convert degrees to radians:</b> 90 degrees = π/2 radians</li><li><b>Calculate sin(π/2):</b> sin(π/2) = 1</li></ol>', '2025-11-25 08:01:46'),
(115, 1, 'plot a graph sin(90)', 'Graph generated for np.sin(np.radians(90))', '2025-11-25 08:01:57'),
(116, 1, 'plot a graph for sin (90) to sin (180)', 'Graph generated for np.sin(np.radians(np.linspace(90, 180, 100)))', '2025-11-25 08:04:30'),
(117, 1, 'plot a graph for cos(90) to cos(180)', 'Graph generated for np.cos(np.linspace(np.pi/2, np.pi, 100))', '2025-11-25 08:05:41'),
(118, 1, 'plot a graph for cos(180) to cos(360)', 'Graph generated for np.cos(np.linspace(180, 360, num=100))', '2025-11-25 08:07:23'),
(119, 1, 'plot a graph for cos(180) to cos(270)', 'Graph generated for np.cos(np.linspace(np.pi, 3*np.pi/2, 100))', '2025-11-25 08:07:54'),
(120, 1, 'plot a graph for cos(180) to cos(360)', 'Graph generated for np.cos(np.linspace(180, 360, num=100))', '2025-11-25 08:08:19'),
(121, 1, 'plot a graph for tan(180) to tan(360)', 'Graph generated for np.tan(np.radians(x))', '2025-11-25 08:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'chandresh', 'chandresh@gmail.com', 'scrypt:32768:8:1$j0JXZUwRXNNdmDEP$c16d4fa3c7f6aaef6fe319f5f948d6e13d0b0f11093d7082474fb4518409fb5a43366e2c1c3be1466e1648e00808131303600936ba39609d022b444e578d780a', '2025-11-21 06:09:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

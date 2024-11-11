<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Handloom Fashion</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            line-height: 1.6;
            color: #333;
        }

        /* Header Styles */
        header {
            background-color: skyblue;
            color: white;
            padding: 20px;
            text-align: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        header h1 {
            margin-bottom: 10px;
            font-size: 2rem;
        }

        nav ul {
            list-style-type: none;
            display: flex;
            justify-content: center;
            padding: 0;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 1rem;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        /* Auth Container */
        .auth-container {
            background-color: skyblue;
            padding: 20px;
            border-radius: 8px;
            max-width: 400px;
            margin: 50px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .auth-container h2 {
            text-align: center;
            color: white;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: white;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        /* Button Styling */
        .auth-btn {
            background-color: #ff6347;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }

        .auth-btn:hover {
            background-color: #ff4500;
        }

        /* Error and Validation Messages */
        .error-message {
            color: red;
            font-size: 0.9rem;
            margin-top: 5px;
        }

        .validation {
            font-size: 0.9rem;
            color: #666;
            margin-top: 5px;
        }

        .valid {
            color: green;
        }

        .invalid {
            color: red;
        }
    </style>
</head>
<body>
    <header>
        <h1>Handloom Fashion</h1>
        <nav>
            <ul>
                <li><a href="home">Home</a></li>
            </ul>
        </nav>
    </header>

    <div class="auth-container">
        <h2>Register at Handloom Fashion</h2>
        <form id="registerForm" onsubmit="return registerUser()">
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" required onkeyup="validatePassword()">
                <small id="passwordError" class="error-message"></small>
                <div class="validation">
                    <p id="length" class="invalid">Minimum 8 characters</p>
                    <p id="uppercase" class="invalid">At least 1 uppercase letter</p>
                    <p id="lowercase" class="invalid">At least 1 lowercase letter</p>
                    <p id="digit" class="invalid">At least 1 digit</p>
                </div>
            </div>
            <div class="form-group">
                <label for="role">Role:</label>
                <select id="role" required>
                    <option value="admin">Admin</option>
                    <option value="artisan">Artisan</option>
                    <option value="buyer">Buyer</option>
                    <option value="marketing">Marketing Specialist</option>
                </select>
            </div>
            <button type="submit" class="auth-btn">Register</button>
        </form>
        <p>Already have an account? <a href="login">Login here</a></p>
    </div>

    <script>
        function validatePassword() {
            const password = document.getElementById('password').value;
            const lengthCriteria = document.getElementById('length');
            const uppercaseCriteria = document.getElementById('uppercase');
            const lowercaseCriteria = document.getElementById('lowercase');
            const digitCriteria = document.getElementById('digit');

            lengthCriteria.classList.toggle('valid', password.length >= 8);
            lengthCriteria.classList.toggle('invalid', password.length < 8);

            uppercaseCriteria.classList.toggle('valid', /[A-Z]/.test(password));
            uppercaseCriteria.classList.toggle('invalid', !/[A-Z]/.test(password));

            lowercaseCriteria.classList.toggle('valid', /[a-z]/.test(password));
            lowercaseCriteria.classList.toggle('invalid', !/[a-z]/.test(password));

            digitCriteria.classList.toggle('valid', /\d/.test(password));
            digitCriteria.classList.toggle('invalid', !/\d/.test(password));
        }

        function registerUser() {
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const role = document.getElementById('role').value;

            alert('Registration successful!');
            window.location.href = 'login';

            return false;
        }
    </script>
</body>
</html>

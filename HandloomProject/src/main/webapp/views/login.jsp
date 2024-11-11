<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Handloom Fashion</title>
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

        .form-group input {
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

        /* Footer */
        footer {
            background-color: skyblue;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <div class="auth-container">
        <h2>Login to Handloom Fashion</h2>
        <form id="loginForm" onsubmit="return loginUser()">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" required>
            </div>
            <button type="submit" class="auth-btn">Login</button>
        </form>
        <p>Don't have an account? <a href="register">Register here</a></p>
        <button onclick="window.location.href='home'" class="auth-btn">Home</button>
    </div>

    <script>
      

        function loginUser() {
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            const storedEmail = localStorage.getItem('userEmail');
            const storedPassword = localStorage.getItem('userPassword');
            const userRole = localStorage.getItem('userRole');

            if (email === storedEmail && password === storedPassword) {
                alert("Login successful!");

                switch (userRole) {
                    case 'admin':
                        window.location.href = 'admin_dashboard';
                        break;
                    case 'artisan':
                        window.location.href = 'artisan_dashboard';
                        break;
                    case 'buyer':
                        window.location.href = 'buyer_dashboard';
                        break;
                    case 'marketing':
                        window.location.href = 'marketing_dashboard';
                        break;
                    default:
                        alert("User role not recognized.");
                }
                return false;
            } else {
                alert("Invalid credentials, please try again.");
                return false;
            }
        }
    </script>
</body>
</html>

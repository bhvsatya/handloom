<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Handloom Fashion</title>
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
        /* Main Content */
        main {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }
        /* Contact Section */
        .contact-section {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            max-width: 500px;
            margin: 50px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .contact-section h2 {
            margin-bottom: 15px;
            font-size: 1.8rem;
            color: #333;
        }
        .contact-section p {
            font-size: 1.1rem;
            color: #666;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .cta-btn {
            background-color: #ff6347;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
            margin-top: 10px;
        }
        .cta-btn:hover {
            background-color: #ff4500;
        }
    </style>
</head>
<body>
    <header>
        <h1>Contact Handloom Fashion</h1>
        <nav>
            <ul>
                <li><a href="home">Home</a></li>
                <li><a href="shop">Shop</a></li>
                <li><a href="login">Login</a></li>
                <li><a href="register">Register</a></li>
                <li><a href="contact">Contact Us</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="contact-section">
            <h2>Get in Touch</h2>
            <p>If you have any questions, feel free to reach out to us. We would love to hear from you!</p>

            <form id="contactForm" onsubmit="return submitContactForm()">
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" required>
                </div>
                <div class="form-group">
                    <label for="subject">Subject:</label>
                    <input type="text" id="subject" required>
                </div>
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea id="message" rows="5" required></textarea>
                </div>
                <button type="submit" class="cta-btn">Send Message</button>
            </form>
        </section>
    </main>

    <script>
        function submitContactForm() {
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const subject = document.getElementById('subject').value;
            const message = document.getElementById('message').value;

            // Simple validation and alert
            if (name && email && subject && message) {
                alert('Thank you for your message! We will get back to you soon.');
                document.getElementById('contactForm').reset();
            } else {
                alert('Please fill in all fields.');
            }
            return false;  // Prevent page refresh
        }
    </script>
</body>
</html>

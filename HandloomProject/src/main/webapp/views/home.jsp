<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Fashion - Home</title>
    
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

        /* Intro Section */
        .intro {
            text-align: center;
            margin-bottom: 40px;
        }

        .intro h2 {
            font-size: 2rem;
            margin-bottom: 15px;
        }

        .intro p {
            font-size: 1.2rem;
        }

        /* Image Section */
        .home-image-section {
            text-align: center;
            margin-top: 20px;
        }

        .home-image {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }

        /* Button Styling */
        .cta-btn {
            background-color: #ff6347;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1rem;
        }

        .cta-btn:hover {
            background-color: #ff4500;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            nav ul {
                flex-direction: column;
            }

            nav ul li {
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Handloom Fashion</h1>
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
        <section class="intro">
            <h2>Discover the Uniqueness of Handloom Fashion</h2>
            <p>Explore handloom products crafted by talented artisans from around the world.</p>
            
        </section>

        <section class="home-image-section">
            <img src="images/Designer.png" alt="Handloom Fashion" class="home-image">
        </section>
    </main>

    <script>
        document.querySelector(".cta-btn").addEventListener("click", function() {
            window.location.href = "shop";
        });
    </script>
</body>
</html>

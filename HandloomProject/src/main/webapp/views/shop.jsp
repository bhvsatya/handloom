<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop - Handloom Fashion</title>
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

        /* Products Section */
        .products {
            text-align: center;
        }

        .products h2 {
            margin-bottom: 20px;
            font-size: 1.8rem;
            color: #333;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .product {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .product img {
            max-width: 100%;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .product h3 {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: #333;
        }

        .product p {
            font-size: 1rem;
            color: #666;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .auth-container {
                width: 90%;
            }

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
        <h1>Handloom Fashion Shop</h1>
        <nav>
            <ul>
                <li><a href="home">Home</a></li>
                <li><a href="login">Login</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="products">
            <h2>All Featured Products</h2>
            <div class="product-grid">
                <!-- Add all the featured products here -->
                <div class="product">
                    <img src="images/61ks8G0WSFL._SY741_.jpg" alt="Product 1">
                    <h3>Cotton Handloom</h3>
                    <p>₹679</p>
                </div>
                <div class="product">
                    <img src="images/51ag0UYaJGL.jpg" alt="Product 2">
                    <h3>Narayanpeth</h3>
                    <p>₹1,225</p>
                </div>
                <div class="product">
                    <img src="images/61elPp-cuSL._SX569_.jpg" alt="Product 3">
                    <h3>Cotton Handloom</h3>
                    <p>₹699</p>
                </div>
                <!-- Add more product divs as necessary -->
            </div>
        </section>
    </main>
</body>
</html>

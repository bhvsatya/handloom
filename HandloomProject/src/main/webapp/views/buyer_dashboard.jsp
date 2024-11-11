<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Dashboard - Handloom Fashion</title>
    <style>
        /* Reset default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #80deea);
            color: #333;
            line-height: 1.6;
        }

        /* Header styles */
        header {
            background: #00796b;
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
            letter-spacing: 1px;
        }

        nav ul {
            list-style: none;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        /* Main content styles */
        main {
            padding: 20px;
            max-width: 800px;
            margin: 30px auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #00796b;
            margin-bottom: 10px;
        }

        p {
            margin-bottom: 20px;
            font-size: 1.1em;
        }

        /* Button styles */
        #buyer-actions {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        button {
            background: #00796b;
            color: white;
            border: none;
            border-radius: 8px;
            padding: 12px 25px;
            font-size: 1em;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        button:hover {
            background: #004d40;
            transform: translateY(-2px);
        }

        /* Action content styles */
        #action-content {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background: #e0f2f1;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Buyer Dashboard</h1>
        <nav>
            <ul>
                <li><a href="#" onclick="buyerLogout()">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Welcome, Buyer!</h2>
        <p>Browse products, track orders, and provide feedback.</p>

        <section id="buyer-actions">
            <button onclick="buyerBrowseProducts()">Browse Products</button>
            <button onclick="buyerTrackOrders()">Track Orders</button>
            <button onclick="buyerProvideFeedback()">Provide Feedback</button>
            <div id="action-content">
                <!-- Dynamic content based on buyer actions will appear here -->
            </div>
        </section>
    </main>

    <script>
        // Mock data for demo purposes
        let products = [
            { id: 1, name: "Handloom Shawl", price: 50, stock: 10 },
            { id: 2, name: "Handloom Saree", price: 100, stock: 5 },
            { id: 3, name: "Handloom Kurta", price: 40, stock: 20 }
        ];

        let orders = [];
        let feedbacks = [];

        // Function to handle browsing all handloom products
        function buyerBrowseProducts() {
            let productHtml = '<h4>Available Products:</h4><ul>';
            products.forEach(product => {
                productHtml += `
                    <li>
                        ${product.name} - $${product.price} - ${product.stock} in stock
                        <button onclick="buyerOrderProduct(${product.id})">Order</button>
                    </li>`;
            });
            productHtml += '</ul>';
            document.getElementById('action-content').innerHTML = productHtml;
        }

        // Function to order a product
        function buyerOrderProduct(productId) {
            const product = products.find(p => p.id === productId);
            if (product && product.stock > 0) {
                orders.push({ productId: product.id, productName: product.name });
                product.stock--;
                alert(`You have ordered: ${product.name}`);
            } else {
                alert("Product is out of stock.");
            }
        }

        // Function to track orders
        function buyerTrackOrders() {
            let ordersHtml = '<h4>Your Orders:</h4><ul>';
            if (orders.length === 0) {
                ordersHtml += '<li>No orders placed yet.</li>';
            } else {
                orders.forEach(order => {
                    ordersHtml += `<li>${order.productName}</li>`;
                });
            }
            ordersHtml += '</ul>';
            document.getElementById('action-content').innerHTML = ordersHtml;
        }

        // Function to provide feedback
        function buyerProvideFeedback() {
            const buyerFeedback = prompt("Enter your feedback:");
            if (buyerFeedback) {
                feedbacks.push(buyerFeedback);
                alert("Your feedback has been submitted!");
            } else {
                alert("Please provide feedback.");
            }
        }

        // Function to handle logout
        function buyerLogout() {
            alert("You have been logged out.");
            window.location.href = 'home'; // Redirect to home
        }
    </script>
</body>
</html>

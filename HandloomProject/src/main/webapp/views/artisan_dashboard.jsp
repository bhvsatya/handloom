<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artisan Dashboard - Handloom Fashion</title>
    <style>
        /* Global Styles */
        * { margin: 0; padding: 0; box-sizing: border-box; }
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
        header h1 { margin-bottom: 10px; font-size: 2rem; }
        nav ul { list-style-type: none; display: flex; justify-content: center; padding: 0; }
        nav ul li { margin: 0 15px; }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 1rem;
        }
        nav ul li a:hover { text-decoration: underline; }
        /* Main Content */
        main { padding: 20px; max-width: 1200px; margin: 0 auto; }
        /* Products Section */
        .products { text-align: center; }
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
        .product h3 { font-size: 1.2rem; margin-bottom: 10px; color: #333; }
        .product p { font-size: 1rem; color: #666; }
    </style>
</head>
<body>
    <header>
        <h1>Artisan Dashboard</h1>
        <nav>
            <ul>
                <li><a href="#" onclick="artisanLogout()">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Welcome, Artisan!</h2>
        <p>List handloom products, manage inventory, and interact with buyers.</p>
        <section id="artisan-actions">
            <button onclick="artisanListProducts()">List Products</button>
            <button onclick="artisanAddProduct()">Add New Product</button>
            <button onclick="artisanInteractWithBuyers()">Interact with Buyers</button>
            <div id="action-content"></div>
        </section>
    </main>
    
    <script>
        // Mock data for demo purposes
        let artisanProducts = [
            { id: 1, name: "Handloom Shawl", price: 50, stock: 10 },
            { id: 2, name: "Handloom Saree", price: 100, stock: 5 },
            { id: 3, name: "Handloom Kurta", price: 40, stock: 20 }
        ];
        let artisanFeedbacks = []; // Array to store buyer feedbacks

        // Function to list all handloom products
        function artisanListProducts() {
            let productHtml = '<h4>Available Products:</h4><ul>';
            artisanProducts.forEach(product => {
                productHtml += `<li>${product.name} - $${product.price} - ${product.stock} in stock
                    <button onclick="artisanUpdateProduct(${product.id})">Update Inventory</button></li>`;
            });
            productHtml += '</ul>';
            document.getElementById('action-content').innerHTML = productHtml;
        }

        // Function to add a new product
        function artisanAddProduct() {
            const productName = prompt("Enter product name:");
            const productPrice = prompt("Enter product price:");
            const productStock = prompt("Enter product stock:");

            if (!productName || isNaN(productPrice) || isNaN(productStock)) {
                alert("Please provide valid product details.");
                return;
            }

            const newProduct = {
                id: artisanProducts.length + 1,
                name: productName,
                price: parseFloat(productPrice),
                stock: parseInt(productStock)
            };

            artisanProducts.push(newProduct);
            alert("Product added successfully!");
            artisanListProducts(); // Refresh the product list
        }

        // Function to update inventory for a product
        function artisanUpdateProduct(productId) {
            const product = artisanProducts.find(p => p.id === productId);
            const newStock = prompt(`Enter new stock for ${product.name} (current stock: ${product.stock}):`);

            if (newStock === null || newStock.trim() === '' || isNaN(newStock)) {
                alert("Stock update cancelled or invalid input.");
                return;
            }

            product.stock = parseInt(newStock);
            alert(`Inventory updated for ${product.name}. New stock: ${product.stock}`);
            artisanListProducts(); // Refresh the product list
        }

        // Function to interact with buyers
        function artisanInteractWithBuyers() {
            const buyerMessage = prompt("Enter your message to buyers:");

            if (!buyerMessage) {
                alert("Please provide a message to interact with buyers.");
                return;
            }

            artisanFeedbacks.push(buyerMessage);
            alert("Your message has been submitted to interact with buyers!");
        }

        // Function to handle logout
        function artisanLogout() {
            alert("You have been logged out.");
            window.location.href = 'home.html';
        }
    </script>
</body>
</html>

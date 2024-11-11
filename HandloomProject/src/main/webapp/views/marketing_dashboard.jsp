<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marketing Specialist Dashboard - Handloom Fashion</title>
    <style>
        /* Global Styles */
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; }
        header { background-color: skyblue; color: white; padding: 20px; text-align: center; position: sticky; top: 0; z-index: 1000; }
        header h1 { margin-bottom: 10px; font-size: 2rem; }
        nav ul { list-style-type: none; display: flex; justify-content: center; padding: 0; }
        nav ul li { margin: 0 15px; }
        nav ul li a { color: white; text-decoration: none; font-weight: bold; font-size: 1rem; }
        nav ul li a:hover { text-decoration: underline; }
        main { padding: 20px; max-width: 1200px; margin: 0 auto; }
        .auth-container { background-color: skyblue; padding: 20px; border-radius: 8px; max-width: 400px; margin: 50px auto; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }
        .auth-btn { background-color: #ff6347; color: white; border: none; padding: 10px 20px; cursor: pointer; border-radius: 5px; width: 100%; }
        .auth-btn:hover { background-color: #ff4500; }
        .products { text-align: center; }
        .products h2 { margin-bottom: 20px; font-size: 1.8rem; color: #333; }
        .product-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; }
        .product { background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); text-align: center; }
        @media (max-width: 600px) { .auth-container { width: 90%; } nav ul { flex-direction: column; } nav ul li { margin: 5px 0; }}
    </style>
</head>
<body>
    <header>
        <h1>Marketing Specialist Dashboard</h1>
        <nav>
            <ul>
                <li><a href="#" onclick="logout()">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Welcome, Marketing Specialist!</h2>
        <p>Promote handloom products, manage campaigns, and engage with global audiences.</p>
        
        <section id="marketing-actions">
            <button onclick="listProducts()">Promote Products</button>
            <button onclick="manageCampaigns()">Manage Campaigns</button>
            <button onclick="engageAudiences()">Engage Global Audiences</button>
            <div id="action-content">
                <!-- Dynamic content based on marketing actions will appear here -->
            </div>
        </section>
    </main>
    
    <script>
        let products = [
            { id: 1, name: "Handloom Shawl", price: 50, stock: 10 },
            { id: 2, name: "Handloom Saree", price: 100, stock: 5 },
            { id: 3, name: "Handloom Kurta", price: 40, stock: 20 }
        ];
        
        let campaigns = [];
        
        function listProducts() {
            let productHtml = '<h4>Available Products:</h4><ul>';
            products.forEach(product => {
                productHtml += `
                    <li>
                        ${product.name} - $${product.price} - ${product.stock} in stock
                        <button onclick="promoteProduct(${product.id})">Promote</button>
                        <button onclick="updateProduct(${product.id})">Update Inventory</button>
                    </li>`;
            });
            productHtml += '</ul>';
            document.getElementById('action-content').innerHTML = productHtml;
        }

        function promoteProduct(productId) {
            const product = products.find(p => p.id === productId);
            alert(`You have promoted: ${product.name}`);
        }

        function updateProduct(productId) {
            const product = products.find(p => p.id === productId);
            const newStock = prompt(`Enter new stock for ${product.name} (current stock: ${product.stock}):`);
            if (newStock === null || newStock.trim() === '' || isNaN(newStock)) {
                alert("Stock update cancelled or invalid input.");
                return;
            }
            product.stock = parseInt(newStock);
            alert(`Inventory updated for ${product.name}. New stock: ${product.stock}`);
            listProducts();
        }

        function manageCampaigns() {
            let campaignsHtml = '<h4>Your Campaigns:</h4><ul>';
            campaigns.forEach((campaign, index) => {
                campaignsHtml += `<li>Campaign ${index + 1}: ${campaign}</li>`;
            });
            campaignsHtml += '</ul>';
            campaignsHtml += `
                <h4>Add New Campaign:</h4>
                <input type="text" id="campaign-name" placeholder="Campaign Name">
                <button onclick="addCampaign()">Add Campaign</button>
            `;
            document.getElementById('action-content').innerHTML = campaignsHtml;
        }

        function addCampaign() {
            const campaignName = document.getElementById('campaign-name').value;
            if (!campaignName) {
                alert("Please enter a campaign name.");
                return;
            }
            campaigns.push(campaignName);
            alert("Campaign added successfully!");
            manageCampaigns();
        }

        function engageAudiences() {
            document.getElementById('action-content').innerHTML = `
                <h4>Engage with Global Audiences:</h4>
                <form id="engagement-form">
                    <label for="engagement-content">Your Message:</label><br>
                    <textarea id="engagement-content" name="engagement-content" rows="4" required></textarea><br>
                    <button type="button" onclick="submitEngagement()">Submit Message</button>
                </form>
            `;
        }

        function submitEngagement() {
            const engagementContent = document.getElementById('engagement-content').value;
            if (!engagementContent) {
                alert("Please provide your message.");
                return;
            }
            alert("Your message has been submitted to engage with global audiences!");
            document.getElementById('engagement-form').reset();
        }

        function logout() {
            alert("You have been logged out.");
            window.location.href = 'home.html';
        }
    </script>
</body>
</html>

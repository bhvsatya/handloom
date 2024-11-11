<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Handloom Fashion</title>
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
        footer p {
            margin: 0;
            font-size: 1rem;
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
        <h1>Admin Dashboard</h1>
        <nav>
            <ul>
                <li><a href="#" onclick="logout()">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Welcome, Admin!</h2>
        <p>Manage users, oversee platform operations, and ensure content accuracy.</p>

        <!-- User Management Section -->
        <section id="user-management">
            <h3>User Management</h3>
            <button onclick="viewUsers()">View All Users</button>
            <button onclick="addUser()">Add User</button>
            <button onclick="editUser()">Edit User Roles</button>
            <button onclick="deleteUser()">Delete User</button>
            <div id="user-actions"></div>
        </section>

        <!-- Content Accuracy Section -->
        <section id="content-management">
            <h3>Content Management</h3>
            <button onclick="viewContent()">View All Content</button>
            <button onclick="verifyContent()">Verify Content Accuracy</button>
            <button onclick="removeContent()">Remove Inappropriate Content</button>
            <div id="content-actions"></div>
        </section>
    </main>


    
</body>
</html>

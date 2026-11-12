<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Amazon Orders</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #eaeded;
        }

        /* Amazon Header */

        header {
            background-color: #131921;
            color: white;
            height: 70px;
            display: flex;
            align-items: center;
            padding: 0 7%;
        }

        .logo {
            font-size: 32px;
            font-weight: bold;
            color: white;
            cursor: pointer;
        }

        .logo span {
            color: #ff9900;
        }

        nav {
            margin-left: auto;
            display: flex;
            gap: 30px;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-size: 15px;
        }

        nav a:hover {
            color: #ff9900;
        }

        /* Main Section */

        .hero {
            min-height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        /* Order Card */

        .order-card {
            width: 500px;
            background-color: white;
            border-radius: 8px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
        }

        .amazon-icon {
            font-size: 60px;
            margin-bottom: 15px;
        }

        .order-card h2 {
            color: #111;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .order-card p {
            color: #565959;
            margin-bottom: 30px;
            font-size: 16px;
        }

        /* Get Order Button */

        .order-button {
            display: inline-block;
            width: 100%;
            padding: 15px;
            background-color: #ffd814;
            color: #111;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            border: 1px solid #fcd200;
            transition: 0.3s;
        }

        .order-button:hover {
            background-color: #f7ca00;
        }

        .order-info {
            margin-top: 20px;
            color: #565959;
            font-size: 14px;
        }

        /* Footer */

        footer {
            background-color: #232f3e;
            color: white;
            text-align: center;
            padding: 18px;
            font-size: 14px;
        }

    </style>

</head>

<body>

    <!-- Header -->

    <header>

        <div class="logo">
            amazon<span>Orders</span>
        </div>

        <nav>
            <a href="#">Home</a>
            <a href="#">Your Orders</a>
            <a href="#">Cart</a>
            <a href="#">Account</a>
        </nav>

    </header>


    <!-- Main Section -->

    <section class="hero">

        <div class="order-card">

            <div class="amazon-icon">
                📦
            </div>

            <h2>Amazon Orders</h2>

            <p>
                View your order details, status and delivery information.
            </p>

            <!-- Your Spring URL -->

            <a href="orders/1001" class="order-button">
                Get Order Details
            </a>

            <div class="order-info">
                Click above to view order #1001
            </div>
            
            <!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Place New Order</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #eaeded;
            color: #111;
        }

        /* Header */

        header {
            height: 70px;
            background-color: #131921;
            display: flex;
            align-items: center;
            padding: 0 8%;
            color: white;
        }

        .logo {
            font-size: 30px;
            font-weight: bold;
        }

        .logo span {
            color: #ff9900;
        }

        nav {
            margin-left: auto;
            display: flex;
            gap: 25px;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-size: 15px;
        }

        nav a:hover {
            color: #ff9900;
        }

        /* Main Container */

        .container {
            max-width: 850px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .page-title {
            margin-bottom: 25px;
            font-size: 30px;
        }

        /* Form Card */

        .order-form-card {
            background-color: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
        }

        .order-form-card h2 {
            margin-bottom: 10px;
            font-size: 24px;
        }

        .order-form-card p {
            color: #565959;
            margin-bottom: 30px;
        }

        /* Form Layout */

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #111;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 13px;
            border: 1px solid #a6a6a6;
            border-radius: 5px;
            font-size: 15px;
            outline: none;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            border-color: #ff9900;
            box-shadow: 0 0 4px rgba(255, 153, 0, 0.6);
        }

        .form-group textarea {
            height: 100px;
            resize: vertical;
        }

        /* Two Column Layout */

        .form-row {
            display: flex;
            gap: 20px;
        }

        .form-row .form-group {
            width: 100%;
        }

        /* Submit Button */

        .place-order-button {
            width: 100%;
            padding: 15px;
            background-color: #ffd814;
            color: #111;
            border: 1px solid #fcd200;
            border-radius: 8px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 10px;
        }

        .place-order-button:hover {
            background-color: #f7ca00;
        }

        /* Footer */

        footer {
            background-color: #232f3e;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 50px;
            font-size: 14px;
        }

        /* Responsive Design */

        @media (max-width: 600px) {

            .form-row {
                flex-direction: column;
                gap: 0;
            }

            nav {
                display: none;
            }

            .order-form-card {
                padding: 25px;
            }

        }

    </style>

</head>

<body>

    <!-- Header -->

    <header>

        <div class="logo">
            amazon<span>Orders</span>
        </div>

        <nav>
            <a href="#">Home</a>
            <a href="#">Your Orders</a>
            <a href="#">Cart</a>
            <a href="#">Account</a>
        </nav>

    </header>


    <!-- Main Section -->

    <div class="container">

        <h1 class="page-title">
            Place New Order
        </h1>

        <div class="order-form-card">

            <h2>Order Information</h2>

            <p>
                Enter the details below to place your new order.
            </p>


            <!-- Order Form -->

            <form action="placeOrder" method="post">

                <!-- Item Name -->

                <div class="form-group">

                    <label for="item">
                        Item Name
                    </label>

                    <input 
                        type="text" 
                        id="item"
                        name="item"
                        placeholder="Enter item name"
                        required
                    >

                </div>


                <!-- Price and Quantity -->

                <div class="form-row">

                    <div class="form-group">

                        <label for="price">
                            Price
                        </label>

                        <input 
                            type="number"
                            id="price"
                            name="price"
                            placeholder="Enter price"
                            required
                        >

                    </div>


                    <div class="form-group">

                        <label for="qty">
                            Quantity
                        </label>

                        <input 
                            type="number"
                            id="qty"
                            name="qty"
                            placeholder="Enter quantity"
                            required
                        >

                    </div>

                </div>


                <!-- Description -->

                <div class="form-group">

                    <label for="description">
                        Product Description
                    </label>

                    <textarea 
                        id="description"
                        name="description"
                        placeholder="Enter product description"
                    ></textarea>

                </div>


                <!-- Address -->

                <div class="form-group">

                    <label for="address">
                        Delivery Address
                    </label>

                    <textarea 
                        id="address"
                        name="address"
                        placeholder="Enter your complete delivery address"
                        required
                    ></textarea>

                </div>


                <!-- Mobile and User ID -->

                <div class="form-row">

                    <div class="form-group">

                        <label for="mobile">
                            Mobile Number
                        </label>

                        <input 
                            type="tel"
                            id="mobile"
                            name="mobile"
                            placeholder="Enter mobile number"
                            required
                        >

                    </div>


                    <div class="form-group">

                        <label for="user">
                            User ID
                        </label>

                        <input 
                            type="text"
                            id="user"
                            name="user"
                            placeholder="Enter user ID"
                            required
                        >

                    </div>

                </div>


                <!-- Submit Button -->

                <input 
                    type="submit"
                    value="Place Order"
                    class="place-order-button"
                >

            </form>

        </div>

    </div>


    <!-- Footer -->

    <footer>
        © 2026 Amazon Clone - Order Management System
    </footer>

</body>

</html>

        </div>

    </section>


    <!-- Footer -->

    <footer>
        © 2026 Amazon Clone - Order Management System
    </footer>

</body>

</html>
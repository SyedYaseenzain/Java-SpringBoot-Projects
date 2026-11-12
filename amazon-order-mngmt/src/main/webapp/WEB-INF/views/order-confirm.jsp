<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Order Confirmed</title>

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

        /* Main Section */

        .confirmation-container {
            min-height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        /* Confirmation Card */

        .confirmation-card {
            width: 550px;
            background-color: white;
            padding: 45px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 3px 12px rgba(0, 0, 0, 0.15);
        }

        /* Success Icon */

        .success-icon {
            width: 90px;
            height: 90px;
            margin: 0 auto 25px;
            background-color: #e7f8e9;
            color: #067d62;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 50px;
            font-weight: bold;
        }

        .confirmation-card h1 {
            font-size: 30px;
            margin-bottom: 15px;
            color: #067d62;
        }

        .confirmation-card p {
            color: #565959;
            font-size: 17px;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        /* Order Status Box */

        .order-status {
            margin: 30px 0;
            padding: 20px;
            background-color: #f7f8f8;
            border-radius: 8px;
            border-left: 5px solid #ff9900;
        }

        .order-status h3 {
            margin-bottom: 8px;
        }

        .order-status span {
            color: #067d62;
            font-weight: bold;
        }

        /* Buttons */

        .button-container {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 25px;
        }

        .primary-button,
        .secondary-button {
            padding: 14px 22px;
            text-decoration: none;
            border-radius: 8px;
            font-size: 15px;
            font-weight: bold;
        }

        .primary-button {
            background-color: #ffd814;
            color: #111;
            border: 1px solid #fcd200;
        }

        .primary-button:hover {
            background-color: #f7ca00;
        }

        .secondary-button {
            background-color: white;
            color: #111;
            border: 1px solid #888;
        }

        .secondary-button:hover {
            background-color: #f3f3f3;
        }

        /* Footer */

        footer {
            background-color: #232f3e;
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 14px;
        }

        /* Responsive */

        @media (max-width: 600px) {

            nav {
                display: none;
            }

            .confirmation-card {
                padding: 30px 20px;
            }

            .button-container {
                flex-direction: column;
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


    <!-- Confirmation Section -->

    <div class="confirmation-container">

        <div class="confirmation-card">

            <div class="success-icon">
                ✓
            </div>

            <h1>Order Confirmed!</h1>

            <p>
                Thank you for your order.
            </p>

            <p>
                Your order has been successfully received and is being processed.
            </p>


            <!-- Order Status -->

            <div class="order-status">

                <h3>Order Status</h3>

                <span>
                    Confirmed and Processing
                </span>

                <p style="margin-top: 10px; margin-bottom: 0;">
                    Your order will be placed soon and delivery details
                    will be updated shortly.
                </p>

            </div>


            <!-- Buttons -->

            <div class="button-container">

                <a href="index.html" class="primary-button">
                    View My Orders
                </a>

                <a href="index.html" class="secondary-button">
                    Continue Shopping
                </a>

            </div>

        </div>

    </div>


    <!-- Footer -->

    <footer>
        © 2026 Amazon Clone - Order Management System
    </footer>

</body>

</html>
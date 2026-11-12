<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Order Details</title>

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

        /* Amazon-inspired Header */

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

        .container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .page-title {
            font-size: 30px;
            margin-bottom: 25px;
        }

        /* Order Card */

        .order-card {
            background-color: white;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
        }

        .order-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 20px;
            margin-bottom: 25px;
        }

        .order-number {
            color: #565959;
            font-size: 15px;
        }

        .order-status {
            background-color: #e7f8e9;
            color: #067d62;
            padding: 8px 15px;
            border-radius: 20px;
            font-weight: bold;
        }

        /* Product Section */

        .product-details {
            display: flex;
            align-items: center;
            gap: 25px;
            margin-bottom: 30px;
        }

        .product-image {
            width: 120px;
            height: 120px;
            background-color: #f3f3f3;
            border-radius: 8px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 60px;
        }

        .product-info h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .product-info p {
            color: #565959;
            margin-bottom: 8px;
        }

        .price {
            color: #b12704 !important;
            font-size: 20px;
            font-weight: bold;
        }

        /* Order Summary */

        .order-summary {
            background-color: #f7f8f8;
            border-radius: 8px;
            padding: 20px;
            margin-top: 20px;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 12px;
            color: #565959;
        }

        .summary-row.total {
            border-top: 1px solid #ddd;
            padding-top: 15px;
            margin-top: 15px;
            font-size: 20px;
            font-weight: bold;
            color: #111;
        }

        /* Button */

        .back-button {
            display: inline-block;
            margin-top: 30px;
            padding: 14px 25px;
            background-color: #ffd814;
            border: 1px solid #fcd200;
            color: #111;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
        }

        .back-button:hover {
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

        /* Responsive */

        @media (max-width: 600px) {

            header {
                padding: 0 5%;
            }

            nav {
                display: none;
            }

            .product-details {
                flex-direction: column;
                align-items: flex-start;
            }

            .order-header {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
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


    <!-- Main Content -->

    <div class="container">

        <h1 class="page-title">Order Details</h1>

        <div class="order-card">

            <!-- Order Header -->

            <div class="order-header">

                <div>
                    <strong>Order Placed</strong>
                    <p class="order-number">
                        Order #1001
                    </p>
                </div>

                <div class="order-status">
                    Delivered
                </div>

            </div>


            <!-- Product Details -->

            <div class="product-details">

                <div class="product-image">
                    📦
                </div>

                <div class="product-info">

                    <h2>Your Order Details</h2>

                    <p>
                        Your order information and delivery details are displayed here.
                    </p>

                    <p class="price">
                        ₹1,999.00
                    </p>

                </div>

            </div>


            <!-- Order Summary -->

            <div class="order-summary">

                <div class="summary-row">
                    <span>Order Status</span>
                    <span>Delivered</span>
                </div>

                <div class="summary-row">
                    <span>Delivery</span>
                    <span>Free Delivery</span>
                </div>

                <div class="summary-row">
                    <span>Order ID</span>
                    <span>#1001</span>
                </div>

                <div class="summary-row total">
                    <span>Total</span>
                    <span>₹1,999.00</span>
                </div>

            </div>


            <!-- Back Button -->

            <a href="index.html" class="back-button">
                ← Back to Orders
            </a>

        </div>

    </div>


    <!-- Footer -->

    <footer>
        © 2026 Amazon Clone - Order Management System
    </footer>

</body>

</html>
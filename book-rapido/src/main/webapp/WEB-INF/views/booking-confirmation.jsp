<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Booking Confirmed | Rapido</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f7f7f7;
            color: #111111;
        }

        /* Header */

        header {
            height: 72px;
            background-color: #111111;
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
            color: #ffd500;
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
            color: #ffd500;
        }

        /* Main Section */

        .confirmation-container {
            min-height: 85vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
            background:
                linear-gradient(
                    135deg,
                    #ffd500 0%,
                    #ffd500 50%,
                    #f7f7f7 50%
                );
        }

        /* Confirmation Card */

        .confirmation-card {
            width: 550px;
            background-color: white;
            border-radius: 18px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        /* Success Icon */

        .success-icon {
            width: 90px;
            height: 90px;
            background-color: #ffd500;
            color: #111111;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 50px;
            font-weight: bold;
            margin: 0 auto 25px;
        }

        .confirmation-card h1 {
            font-size: 30px;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #666;
            font-size: 16px;
            margin-bottom: 30px;
        }

        /* Rider Details */

        .rider-details {
            text-align: left;
            background-color: #f8f8f8;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 25px;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
            border-bottom: 1px solid #dddddd;
        }

        .detail-row:last-child {
            border-bottom: none;
        }

        .detail-label {
            color: #666;
            font-size: 15px;
        }

        .detail-value {
            font-size: 16px;
            font-weight: bold;
            color: #111111;
        }

        /* OTP Box */

        .otp-box {
            background-color: #111111;
            color: white;
            padding: 20px;
            border-radius: 12px;
            margin-top: 20px;
        }

        .otp-box p {
            color: #cccccc;
            font-size: 14px;
            margin-bottom: 8px;
        }

        .otp {
            font-size: 32px;
            font-weight: bold;
            color: #ffd500;
            letter-spacing: 5px;
        }

        /* Thank You */

        .thank-you {
            margin-top: 25px;
            color: #666;
            font-size: 16px;
        }

        /* Home Button */

        .home-button {
            display: inline-block;
            margin-top: 25px;
            padding: 15px 30px;
            background-color: #ffd500;
            color: #111111;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: 0.3s;
        }

        .home-button:hover {
            background-color: #e6bf00;
            transform: translateY(-2px);
        }

        /* Footer */

        footer {
            background-color: #111111;
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

            .confirmation-container {
                background-color: #ffd500;
            }

            .confirmation-card {
                padding: 30px 20px;
            }

            .detail-row {
                flex-direction: column;
                align-items: flex-start;
                gap: 5px;
            }

        }

    </style>

</head>

<body>


    <!-- Header -->

    <header>

        <div class="logo">
            Rapido<span>.</span>
        </div>

        <nav>
            <a href="#">Home</a>
            <a href="#">My Rides</a>
            <a href="#">Support</a>
        </nav>

    </header>


    <!-- Confirmation Section -->

    <section class="confirmation-container">

        <div class="confirmation-card">


            <!-- Success Icon -->

            <div class="success-icon">
                ✓
            </div>


            <!-- Heading -->

            <h1>Booking Confirmed!</h1>

            <p class="subtitle">
                Your ride has been successfully booked.
            </p>


            <!-- Rider Details -->

            <div class="rider-details">


                <!-- Rider Name -->

                <div class="detail-row">

                    <span class="detail-label">
                        Rider Name
                    </span>

                    <span class="detail-value">
                        ${riderName}
                    </span>

                </div>


                <!-- Vehicle Number -->

                <div class="detail-row">

                    <span class="detail-label">
                        Vehicle Number
                    </span>

                    <span class="detail-value">
                        ${carNo}
                    </span>

                </div>


                <!-- ETA -->

                <div class="detail-row">

                    <span class="detail-label">
                        Estimated Arrival
                    </span>

                    <span class="detail-value">
                        ${eta}
                    </span>

                </div>


            </div>


            <!-- OTP -->

            <div class="otp-box">

                <p>
                    Ride OTP
                </p>

                <div class="otp">
                    ${otp}
                </div>

            </div>


            <!-- Thank You -->

            <p class="thank-you">

                Thank you for choosing Rapido.
                Have a safe and comfortable ride! 🛵

            </p>


            <!-- Home Button -->

            <a href="index.html" class="home-button">

                Back to Home

            </a>


        </div>

    </section>


    <!-- Footer -->

    <footer>

        © 2026 Rapido Clone - Ride Booking Application

    </footer>

</body>

</html>
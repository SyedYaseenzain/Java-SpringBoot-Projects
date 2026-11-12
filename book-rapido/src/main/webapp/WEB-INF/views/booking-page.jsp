<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Book a Ride | Rapido</title>

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

        .booking-container {
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

        /* Booking Card */

        .booking-card {
            width: 550px;
            background-color: white;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .booking-icon {
            text-align: center;
            font-size: 55px;
            margin-bottom: 15px;
        }

        .booking-card h1 {
            text-align: center;
            font-size: 30px;
            margin-bottom: 10px;
        }

        .booking-card .subtitle {
            text-align: center;
            color: #666;
            margin-bottom: 30px;
            line-height: 1.5;
        }

        /* Form */

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 15px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 14px;
            border: 1px solid #cccccc;
            border-radius: 8px;
            font-size: 16px;
            outline: none;
            transition: 0.3s;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #ffd500;
            box-shadow: 0 0 5px rgba(255, 213, 0, 0.7);
        }

        /* Location Inputs */

        .location-box {
            position: relative;
        }

        .location-box::before {
            content: "📍";
            position: absolute;
            left: 15px;
            top: 14px;
            z-index: 1;
        }

        .location-box input {
            padding-left: 45px;
        }

        /* Ride Type and Amount Row */

        .form-row {
            display: flex;
            gap: 20px;
        }

        .form-row .form-group {
            width: 100%;
        }

        /* Submit Button */

        .book-button {
            width: 100%;
            padding: 16px;
            border: none;
            background-color: #ffd500;
            color: #111111;
            border-radius: 8px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        .book-button:hover {
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

            .booking-container {
                background-color: #ffd500;
            }

            .booking-card {
                padding: 30px 20px;
            }

            .form-row {
                flex-direction: column;
                gap: 0;
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


    <!-- Booking Section -->

    <section class="booking-container">

        <div class="booking-card">

            <div class="booking-icon">
                🛵
            </div>

            <h1>Book Your Ride</h1>

            <p class="subtitle">
                Enter your ride details and get ready to go!
            </p>


            <!-- Ride Booking Form -->

            <form action="bookRide" method="post">


                <!-- Mobile -->

                <div class="form-group">

                    <label for="mobile">
                        Mobile Number
                    </label>

                    <input
                        type="tel"
                        id="mobile"
                        name="mobile"
                        placeholder="Enter your mobile number"
                        required
                    >

                </div>


                <!-- Source -->

                <div class="form-group location-box">

                    <label for="source">
                        Pickup Location
                    </label>

                    <input
                        type="text"
                        id="source"
                        name="source"
                        placeholder="Enter pickup location"
                        required
                    >

                </div>


                <!-- Destination -->

                <div class="form-group location-box">

                    <label for="destination">
                        Destination
                    </label>

                    <input
                        type="text"
                        id="destination"
                        name="destination"
                        placeholder="Where do you want to go?"
                        required
                    >

                </div>


                <!-- Ride Type and Amount -->

                <div class="form-row">


                    <div class="form-group">

                        <label for="ridetype">
                            Ride Type
                        </label>

                        <select
                            id="ridetype"
                            name="ridetype"
                            required
                        >

                            <option value="">
                                Select Ride
                            </option>

                            <option value="Bike">
                                Bike Ride
                            </option>

                            <option value="Auto">
                                Auto Ride
                            </option>

                            <option value="Cab">
                                Cab Ride
                            </option>

                        </select>

                    </div>


                    <div class="form-group">

                        <label for="amount">
                            Estimated Amount
                        </label>

                        <input
                            type="number"
                            id="amount"
                            name="amount"
                            placeholder="Enter amount"
                            required
                        >

                    </div>


                </div>


                <!-- Submit -->

                <input
                    type="submit"
                    value="🛵 Book Ride"
                    class="book-button"
                >


            </form>

        </div>

    </section>


    <!-- Footer -->

    <footer>

        © 2026 Rapido Clone - Ride Booking Application

    </footer>

</body>

</html>
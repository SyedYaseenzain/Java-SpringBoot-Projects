<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Rapido Booking App</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f7f7f7;
            color: #1f1f1f;
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
            letter-spacing: -1px;
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

        /* Hero Section */

        .hero {
            min-height: 85vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 8%;
            background:
                linear-gradient(
                    135deg,
                    #ffd500 0%,
                    #ffd500 55%,
                    #f7f7f7 55%
                );
        }

        .hero-content {
            max-width: 650px;
            text-align: center;
        }

        .ride-icon {
            font-size: 80px;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 50px;
            margin-bottom: 15px;
            color: #111111;
        }

        .hero p {
            font-size: 18px;
            color: #333;
            line-height: 1.6;
            margin-bottom: 35px;
        }

        /* Booking Card */

        .booking-card {
            background-color: white;
            width: 500px;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.18);
        }

        .booking-card h2 {
            font-size: 26px;
            margin-bottom: 10px;
        }

        .booking-card p {
            color: #666;
            margin-bottom: 25px;
        }

        /* Book Ride Button */

        .book-ride-button {
            display: block;
            width: 100%;
            text-align: center;
            padding: 16px;
            background-color: #ffd500;
            color: #111111;
            text-decoration: none;
            border-radius: 8px;
            font-size: 17px;
            font-weight: bold;
            transition: 0.3s;
        }

        .book-ride-button:hover {
            background-color: #e6bf00;
            transform: translateY(-2px);
        }

        /* Features */

        .features {
            background-color: white;
            padding: 50px 8%;
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .feature-card {
            width: 250px;
            text-align: center;
            padding: 25px;
        }

        .feature-card .icon {
            font-size: 40px;
            margin-bottom: 15px;
        }

        .feature-card h3 {
            margin-bottom: 10px;
        }

        .feature-card p {
            color: #666;
            font-size: 14px;
            line-height: 1.5;
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

        @media (max-width: 700px) {

            nav {
                display: none;
            }

            .hero {
                background-color: #ffd500;
            }

            .hero h1 {
                font-size: 38px;
            }

            .booking-card {
                width: 100%;
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
            <a href="#">Services</a>
            <a href="#">Support</a>
        </nav>

    </header>


    <!-- Hero Section -->

    <section class="hero">

        <div class="hero-content">

            <div class="ride-icon">
                🛵
            </div>

            <h1>Book a Ride in Minutes</h1>

            <p>
                Fast, affordable and convenient rides at your fingertips.
                Book your bike ride and reach your destination quickly.
            </p>


            <!-- Booking Card -->

            <div class="booking-card">

                <h2>Where do you want to go?</h2>

                <p>
                    Book your ride now and travel comfortably.
                </p>

                <!-- Your Original URL -->

                <a href="showBookingPage"
                   class="book-ride-button">

                    🛵 Book a Ride

                </a>

            </div>

        </div>

    </section>


    <!-- Features -->

    <section class="features">

        <div class="feature-card">

            <div class="icon">⚡</div>

            <h3>Quick Booking</h3>

            <p>
                Book your ride quickly and get matched with a rider.
            </p>

        </div>


        <div class="feature-card">

            <div class="icon">💰</div>

            <h3>Affordable</h3>

            <p>
                Travel comfortably at affordable prices.
            </p>

        </div>


        <div class="feature-card">

            <div class="icon">🛡️</div>

            <h3>Safe Rides</h3>

            <p>
                Your safety and comfort are always our priority.
            </p>

        </div>

    </section>


    <!-- Footer -->

    <footer>

        © 2026 Rapido Clone - Ride Booking Application

    </footer>

</body>

</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ixigo PNR Check</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f5f5;
        }

        /* Header */

        header {
            background: white;
            height: 70px;
            display: flex;
            align-items: center;
            padding: 0 10%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
        }

        .logo {
            color: #e6007e;
            font-size: 32px;
            font-weight: bold;
        }

        /* Navigation */

        nav {
            margin-left: auto;
        }

        nav a {
            text-decoration: none;
            color: #333;
            margin-left: 25px;
            font-size: 15px;
        }

        nav a:hover {
            color: #e6007e;
        }

        /* Main Background */

        .hero {
            min-height: 90vh;
            background: linear-gradient(135deg, #e6007e, #ff5a9f);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        /* PNR Card */

        .pnr-card {
            background: white;
            width: 450px;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .pnr-card h2 {
            color: #222;
            margin-bottom: 10px;
            font-size: 28px;
        }

        .pnr-card p {
            color: #777;
            margin-bottom: 25px;
            font-size: 15px;
        }

        /* Input */

        .pnr-card input[type="text"] {
            width: 100%;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            outline: none;
        }

        .pnr-card input[type="text"]:focus {
            border-color: #e6007e;
        }

        /* Button */

        .pnr-card input[type="submit"] {
            width: 100%;
            padding: 15px;
            margin-top: 20px;
            background: #e6007e;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .pnr-card input[type="submit"]:hover {
            background: #c9006b;
        }

        /* Info Text */

        .info {
            margin-top: 20px;
            font-size: 13px;
            color: #888;
            text-align: center;
        }

    </style>
</head>

<body>

    <!-- Header -->

    <header>

        <div class="logo">
            ixigo
        </div>

        <nav>
            <a href="#">Trains</a>
            <a href="#">Flights</a>
            <a href="#">Buses</a>
            <a href="#">Hotels</a>
        </nav>

    </header>


    <!-- Main Section -->

    <section class="hero">

        <div class="pnr-card">

            <h2>Check PNR Status</h2>

            <p>
                Enter your 10-digit PNR number to check your train ticket status.
            </p>

            <form action="pnrCheck" method="get">

                <input 
                    type="text" 
                    name="pnrNumber"
                    placeholder="Enter your 10-digit PNR number"
                    maxlength="10"
                    required
                >

                <input 
                    type="submit" 
                    value="Check PNR Status"
                >

            </form>

            <div class="info">
                Your PNR status will be fetched instantly.
            </div>

        </div>

    </section>

</body>

</html>
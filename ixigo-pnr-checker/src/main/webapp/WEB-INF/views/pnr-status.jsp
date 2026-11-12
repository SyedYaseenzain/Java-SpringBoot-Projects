<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>PNR Status | ixigo</title>

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

    /* Main Section */

    .hero {
        min-height: 90vh;
        background: linear-gradient(135deg, #e6007e, #ff5a9f);
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 30px;
    }

    /* Status Card */

    .status-card {
        background: white;
        width: 450px;
        text-align: center;
        padding: 45px 35px;
        border-radius: 15px;
        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
    }

    .train-icon {
        font-size: 60px;
        margin-bottom: 20px;
    }

    .status-card h2 {
        color: #222;
        font-size: 28px;
        margin-bottom: 15px;
    }

    .status-card p {
        color: #777;
        font-size: 16px;
        margin-bottom: 25px;
    }

    /* PNR Status Box */

    .pnr-status {
        background: #fff0f8;
        border: 2px solid #e6007e;
        padding: 25px;
        border-radius: 10px;
        margin-bottom: 25px;
    }

    .pnr-status .label {
        color: #666;
        font-size: 15px;
        margin-bottom: 10px;
    }

    .pnr-status .status {
        color: #e6007e;
        font-size: 40px;
        font-weight: bold;
    }

    /* Button */

    .check-again {
        display: inline-block;
        text-decoration: none;
        background: #e6007e;
        color: white;
        padding: 14px 30px;
        border-radius: 6px;
        font-size: 16px;
        font-weight: bold;
        transition: 0.3s;
    }

    .check-again:hover {
        background: #c9006b;
        transform: translateY(-2px);
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

        <div class="status-card">

            <div class="train-icon">
                🚆
            </div>

            <h2>PNR Status</h2>

            <p>
                Here is your current train reservation status.
            </p>

            <div class="pnr-status">

                <div class="label">
                    Your Current PNR Status
                </div>

                <div class="status">
                    WL49
                </div>

            </div>

            <a href="index.html" class="check-again">
                Check Another PNR
            </a>

        </div>

    </section>

</body>

</html>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>PHO Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e6f9f0, #ffffff);
            color: #333;
        }

        .container {
            max-width: 400px;
            margin: 100px auto;
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            padding: 30px;
            text-align: center;
        }

        h1 {
            font-size: 18px;
            color: #0a7d4f;
            margin-bottom: 30px;
        }

        h2 {
            color: #0a7d4f;
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 12px;
            background: #f0f0f0;
            transition: all 0.3s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            background: #fff;
            outline: 2px solid #0a7d4f;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 45%;
            padding: 10px;
            margin: 10px 5px;
            border: none;
            border-radius: 12px;
            background-color: #0a7d4f;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="reset"] {
            background-color: #ff4d4d;
        }

        input[type="submit"]:hover {
            background-color: #0d9960;
        }

        input[type="reset"]:hover {
            background-color: #ff1a1a;
        }

        .nav {
            margin-bottom: 20px;
            text-align: center;
        }

        .nav a {
            color: #0a7d4f;
            text-decoration: none;
            font-weight: bold;
            margin: 0 10px;
        }

        .nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</h1>

    <div class="nav">
        <a href="index.html">Home</a>
    </div>

    <h2>PHO Login</h2>

    <form action="PHO_Authentication.jsp" method="post">
        <input type="text" name="userid" placeholder="Username" required />
        <input type="password" name="pass" placeholder="Password" required />
        <div>
            <input type="submit" value="Login" />
            <input type="reset" value="Reset" />
        </div>
    </form>
</div>

</body>
</html>

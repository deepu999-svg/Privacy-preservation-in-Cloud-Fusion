<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cloud Server Login</title>
    <meta charset="UTF-8">
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

        h2 {
            color: #0a7d4f;
            margin-bottom: 30px;
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

        .logo {
            text-align: center;
            margin-bottom: 30px;
        }

        .logo h1 {
            font-size: 18px;
            color: #0a7d4f;
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
    <div class="logo">
        <h1>Privacy Preservation in Multi-Cloud Secure Data Fusion</h1>
    </div>

    <div class="nav">
        <a href="index.html">Home</a>
    </div>

    <h2>Cloud Server Login</h2>
    <form action="c_CloudAuthentication.jsp" method="post">
        <input type="text" name="userid" placeholder="Cloud Server Name" required />
        <input type="password" name="pass" placeholder="Password" required />
        <div>
            <input type="submit" value="Login" />
            <input type="reset" value="Reset" />
        </div>
    </form>
</div>

</body>
</html>

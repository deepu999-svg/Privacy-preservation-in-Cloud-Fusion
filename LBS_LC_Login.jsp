<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>LBS LC Login</title>
  <link rel="stylesheet" href="css/style.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background: linear-gradient(to right, #f2f2f2, #e6f9e6);
      color: #333;
    }

    .container {
      max-width: 400px;
      margin: 80px auto;
      background: rgba(255, 255, 255, 0.9);
      border-radius: 20px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      padding: 40px 30px;
      text-align: center;
      transition: 0.4s ease;
    }

    h2 {
      margin-bottom: 25px;
      font-size: 26px;
      color: #1abc9c;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 12px 15px;
      margin: 12px 0;
      border: none;
      border-radius: 12px;
      background: #f9f9f9;
      box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
      font-size: 16px;
      transition: all 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
      background: #fff;
      border: 1px solid #1abc9c;
      outline: none;
    }

    .btn {
      width: 48%;
      padding: 10px 0;
      border: none;
      margin-top: 15px;
      font-weight: bold;
      border-radius: 10px;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .btn.login {
      background: #1abc9c;
      color: white;
    }

    .btn.reset {
      background: #e74c3c;
      color: white;
    }

    .btn:hover {
      opacity: 0.85;
    }

    @media (max-width: 500px) {
      .container {
        margin: 30px 15px;
      }

      .btn {
        width: 100%;
        margin-top: 10px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>LBS LC Login</h2>
    <form action="LBS_LC_Authentication.jsp" method="post">
      <input type="text" name="userid" placeholder="Enter your name" required />
      <input type="password" name="pass" placeholder="Enter your password" required />
      <div style="display: flex; justify-content: space-between;">
        <input type="submit" value="Login" class="btn login" />
        <input type="reset" value="Reset" class="btn reset" />
      </div>
    </form>
  </div>
</body>
</html>

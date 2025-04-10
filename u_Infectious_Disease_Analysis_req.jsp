<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>u_Infectious_Disease_Analysis_req1</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <link href="css/style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
  <script type="text/javascript" src="js/cufon-yui.js"></script>
  <script type="text/javascript" src="js/cufon-aller.js"></script>
  <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
  <script type="text/javascript" src="js/script.js"></script>
  <script type="text/javascript" src="js/coin-slider.min.js"></script>

  <style type="text/css">
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: #eaf3f7;
      margin: 0;
      padding: 0;
    }

    .main {
      max-width: 1200px;
      margin: auto;
      background: #fff;
      border-radius: 16px;
      box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .header_resize {
      background: linear-gradient(to right, #3fb984, #32d2c2);
      padding: 20px;
    }

    .logo h1 a {
      font-size: 22px;
      color: white;
      text-decoration: none;
      font-weight: bold;
    }

    .content_resize {
      padding: 40px 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 40px;
    }

    .welcome-container {
      display: flex;
      align-items: center;
      justify-content: center;
      background: #f7f7f7;
      padding: 30px;
      border-radius: 20px;
      box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
      gap: 40px;
      min-width: 600px;
    }

    .welcome-box {
      background: white;
      padding: 20px 30px;
      border-radius: 16px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
      text-align: center;
    }

    .welcome-box h2 {
      margin: 0;
      font-size: 20px;
      color: #333;
      font-weight: 600;
    }

    .welcome-box .username {
      font-size: 24px;
      font-weight: bold;
      color: #e53935;
      display: block;
      margin-top: 10px;
    }

    .action-box {
      text-align: center;
    }

    .action-box input[type="submit"] {
      padding: 12px 24px;
      font-size: 16px;
      background-color: #3fb984;
      color: white;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .action-box input[type="submit"]:hover {
      background-color: #2a9d72;
    }

    .status-message {
      font-size: 16px;
      font-weight: bold;
      color: #e53935;
      text-align: center;
    }

    .back-link {
      text-align: right;
      margin-top: 15px;
    }

    .back-link a {
      color: #3fb984;
      text-decoration: none;
      font-weight: bold;
    }

    .footer_resize {
      text-align: center;
      padding: 10px;
      background: #e0e0e0;
      color: #333;
      font-size: 14px;
    }
  </style>
</head>

<body>
  <div class="main">
    <div class="header">
      <div class="header_resize">
        <div class="logo">
          <h1><a href="index.html">Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</a></h1>
        </div>
      </div>
    </div>

    <div class="content">
      <div class="content_resize">

        <div class="welcome-container">
          <div class="welcome-box">
            <h2>Welcome to User Main :</h2>
            <span class="username"><%=application.getAttribute("uname")%></span>
          </div>

          <div class="action-box">
            <form method="post" action="u_Infectious_Disease_Analysis_req1.jsp">
              <input type="submit" value="Req Infectious Disease Analysis Request" />
            </form>
          </div>
        </div>

        <% String key = (String) application.getAttribute("key");
           if (key != null) { %>
          <p class="status-message">Requested Infectious Disease Analysis Request Status: <%=key%></p>
        <% application.removeAttribute("key"); } %>

        <div class="back-link">
          <a href="u_DataConsumersMain.jsp">Back</a>
        </div>

      </div>
    </div>

    <div class="footer">
      <div class="footer_resize">
        &copy; 2025 Cloud Fusion Theme - All rights reserved.
      </div>
    </div>
  </div>
</body>
</html>

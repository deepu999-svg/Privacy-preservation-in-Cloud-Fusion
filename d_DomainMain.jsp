<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Trusted Authority | Secure Data Fusion</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    /* Cloud Fusion Theme */
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #2ecc71, #ff5e57);
      color: #fff;
    }

    header {
      background: rgba(0, 0, 0, 0.6);
      padding: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .logo {
      font-size: 22px;
      font-weight: bold;
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 15px;
    }

    nav a {
      color: white;
      text-decoration: none;
      font-weight: bold;
      transition: color 0.3s;
    }

    nav a:hover {
      color: #2ecc71;
    }

    .container {
      display: flex;
      flex-wrap: wrap;
      padding: 20px;
    }

    .main-content {
      flex: 2;
      min-width: 300px;
      background: rgba(255, 255, 255, 0.15);
      backdrop-filter: blur(10px);
      padding: 30px;
      border-radius: 20px;
      box-shadow: 0 8px 16px rgba(0,0,0,0.2);
      margin-right: 20px;
    }

    .main-content h2 {
      font-size: 28px;
      margin-bottom: 20px;
    }

    .main-content p {
      text-align: justify;
      line-height: 1.6;
    }

    .sidebar {
      flex: 1;
      min-width: 250px;
      background: rgba(0, 0, 0, 0.3);
      border-radius: 20px;
      padding: 20px;
      box-shadow: 0 8px 16px rgba(0,0,0,0.2);
    }

    .sidebar h3 {
      font-size: 20px;
      margin-bottom: 10px;
    }

    .sidebar ul {
      list-style: none;
      padding: 0;
    }

    .sidebar li {
      margin: 10px 0;
    }

    .sidebar a {
      color: white;
      text-decoration: none;
      transition: color 0.3s;
    }

    .sidebar a:hover {
      color: #ff5e57;
    }

    footer {
      background: rgba(0, 0, 0, 0.6);
      text-align: center;
      padding: 15px;
      margin-top: 40px;
    }

    @media screen and (max-width: 768px) {
      .container {
        flex-direction: column;
      }

      .main-content {
        margin-right: 0;
        margin-bottom: 20px;
      }
    }
  </style>
</head>
<body>

  <header>
    <div class="logo">Secure Data Fusion</div>
    <nav>
      <ul>
        <li><a href="d_DomainMain.jsp">Trusted Authority</a></li>
        <li><a href="d_DomainLogin.jsp">Logout</a></li>
      </ul>
    </nav>
  </header>

  <div class="container">
    <div class="main-content">
      <h2>Welcome :: Trusted Authority</h2>
      <p>
        It is often observed that people’s data are scattered across various organizations, and these data can be used to generate usable insights when integrated. However, data fusion from multiple data hosting sites could put user privacy at risk despite security mechanisms.
      </p>
      <p>
        This platform adopts the Kulldorff scan statistic to determine infectious-disease spatial hotspots by integrating and analyzing users’ health and location data stored in two clouds. Privacy is preserved through a key-oblivious inner product encryption (KOIPE) mechanism, revealing only coarse-grained statistical data to honest-but-curious entities.
      </p>
      <p>
        To further enhance user privacy against inference attacks, we employ a game-theoretic clustering approach that incentivizes anonymous group formation with quantifiable privacy guarantees. Simulations using real-life datasets demonstrate our scheme’s effectiveness in both overhead and privacy levels.
      </p>
    </div>

    <aside class="sidebar">
      <h3>TA Menu</h3>
      <ul>
        <li><a href="d_DomainMain.jsp">Home</a></li>
        <li><a href="RA_AuthorizeOwners.jsp">View Data Owners & Authorize</a></li>
        <li><a href="RA_AuthorizeDataConsumerss.jsp">View Data Consumers & Authorize</a></li>
        <li><a href="ta_Infectious_Disease_Analysis_Request.jsp">View Disease Analysis Requests</a></li>
        <li><a href="d_DomainLogin.jsp">Logout</a></li>
      </ul>
    </aside>
  </div>

  <footer>
    &copy; 2025 Secure Data Fusion. All Rights Reserved.
  </footer>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Wearable Device Data Owner Main</title>
    <meta charset="UTF-8">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #2ecc71, #ff5e57);
            color: #fff;
        }

        .header {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            text-align: center;
        }

        .header h1 {
            font-size: 26px;
            margin: 0;
            color: #fff;
        }

        .menu_nav {
            background: rgba(0, 0, 0, 0.4);
            padding: 10px 0;
            text-align: center;
        }

        .menu_nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .menu_nav ul li {
            display: inline-block;
            margin: 0 15px;
        }

        .menu_nav ul li a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 20px;
            transition: background 0.3s ease;
        }

        .menu_nav ul li a:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        .content {
            display: flex;
            flex-wrap: wrap;
            padding: 30px;
            justify-content: space-between;
        }

        .mainbar {
            flex: 1;
            min-width: 60%;
            margin-right: 20px;
        }

        .sidebar {
            flex: 1;
            min-width: 30%;
            background: rgba(255, 255, 255, 0.15);
            border-radius: 15px;
            padding: 20px;
        }

        .article h2 {
            font-size: 24px;
            border-bottom: 2px solid #fff;
            padding-bottom: 10px;
            margin-bottom: 20px;
            font-style: italic;
        }

        .post_content {
            background: rgba(255, 255, 255, 0.1);
            padding: 15px;
            border-radius: 10px;
            font-size: 16px;
            text-align: justify;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 10px 0;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            display: inline-block;
            padding: 8px 12px;
            background: rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            transition: background 0.3s ease;
        }

        .sidebar ul li a:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        .footer {
            background: rgba(0, 0, 0, 0.6);
            padding: 15px;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Privacy Preservation in Multi-Cloud Secure Data Fusion for Infectious Disease Analysis</h1>
    </div>

    <div class="menu_nav">
        <ul>
            <li><a href="o_DataOwnerMain.jsp">Data Owner</a></li>
            <li><a href="o_DataOwnerLogin.jsp">Logout</a></li>
        </ul>
    </div>

    <div class="content">
        <div class="mainbar">
            <div class="article">
                <h2>Welcome Wearable Device :: <%=application.getAttribute("dname")%></h2>
                <div class="post_content">
                    It is often observed that people’s data are scattered across various organizations and these data can be used to generate usable insights when integrated. However, data fusion from multiple data hosting sites could put user privacy at risk albeit with some security mechanisms. This platform adopts the Kulldorff scan statistic to determine infectious-disease spatial hotspots by analyzing users’ health and location data stored in two clouds. We apply a key-oblivious inner product encryption (KOIPE) mechanism to ensure only coarse-grained statistical data is revealed to the honest-but-curious (HbC) entity. Additionally, a game-theoretic clustering approach provides quantitative privacy guarantees through anonymous user groups.
                </div>
            </div>
        </div>

        <div class="sidebar">
            <h2 class="star">Menu</h2>
            <ul>
                <li><a href="o_DataOwnerMain.jsp">Home</a></li>
                <li><a href="o_Upload_Datasets.jsp">Upload Datasets</a></li>
                <li><a href="o_View_All_Datasets.jsp">View All Uploaded Datasets</a></li>
                <li><a href="o_DataOwnerLogin.jsp">Logout</a></li>
            </ul>
        </div>
    </div>

    <div class="footer">
        &copy; 2025 Secure Data Fusion. All Rights Reserved.
    </div>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Datasets by Group of Locations</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #f1f8e9);
            margin: 0;
            padding: 0;
        }

        .header {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(8px);
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            border-bottom: 3px solid #66bb6a;
        }

        .header h1 {
            font-size: 24px;
            color: #2e7d32;
            margin: 0;
        }

        .iframe-container {
            display: flex;
            justify-content: center;
            margin-top: 30px;
            margin-bottom: 50px;
        }

        iframe {
            border: none;
            border-radius: 16px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 90%;
            height: 700px;
        }

        .back-link {
            text-align: center;
            margin-bottom: 30px;
        }

        .back-link a {
            text-decoration: none;
            color: white;
            background: #c62828;
            padding: 10px 20px;
            border-radius: 10px;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        .back-link a:hover {
            background: #b71c1c;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Privacy Preservation in Multi-Cloud Secure Data Fusion for Infectious Disease Analysis</h1>
</div>

<div class="iframe-container">
    <iframe src="c_View_All_Datasets_By_Group_Location1.jsp"></iframe>
</div>

<div class="back-link">
    <a href="c_CloudMain.jsp">Back</a>
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Cloud Fusion - View Datasets</title>
  <meta charset="UTF-8" />
  <link href="css/style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
  <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
  <script type="text/javascript" src="js/script.js"></script>
  <script type="text/javascript" src="js/coin-slider.min.js"></script>
  <style>
    body {
      background: #f2f8f9;
      font-family: 'Segoe UI', sans-serif;
    }

    .mainbar h2 {
      font-size: 24px;
      text-align: center;
      color: #00aeff;
      margin-bottom: 20px;
    }

    iframe {
      border: none;
      width: 100%;
      height: 700px;
      border-radius: 20px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .back-btn {
      display: inline-block;
      margin-top: 20px;
      float: right;
      background-color: #00aeff;
      color: white;
      padding: 8px 16px;
      border-radius: 12px;
      text-decoration: none;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    .back-btn:hover {
      background-color: #007bb5;
    }

    .article {
      background: rgba(255, 255, 255, 0.7);
      border-radius: 20px;
      padding: 20px;
      margin:auto;
      width:70%;
      box-shadow: 0 8px 16px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="article">
          <h1 style=" color: #333;">Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</h1>
   <a href="o_DataOwnerMain.jsp" class="back-btn">← Back</a>
          <h2>📊 All Uploaded Datasets</h2>
          <iframe src="o_View_All_Datasets1.jsp"></iframe>
         
        </div>

  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

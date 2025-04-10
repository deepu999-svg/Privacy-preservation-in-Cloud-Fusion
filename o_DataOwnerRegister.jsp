<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*,java.security.*,javax.crypto.*,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64" %>
<%@ page import="java.sql.*,java.io.*,java.math.BigInteger,java.security.MessageDigest" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
  <title>Data Owner Register</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="css/style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
  <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>

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

    h1, h2 {
      color: #0a7d4f;
      margin-bottom: 30px;
    }
   
    input[type="text"],
    input[type="password"],
    textarea,
    select {
      width: 90%;
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 12px;
      background: #f0f0f0;
      transition: all 0.3s ease-in-out;
    }

    input[type="text"]:focus,
    input[type="password"]:focus,
    textarea:focus,
    select:focus {
      background: #fff;
      outline: 2px solid #0a7d4f;
    }

    input[type="submit"] {
      width: 45%;
      padding: 10px;
      margin: 20px 0;
      border: none;
      border-radius: 12px;
      background-color: #0a7d4f;
      color: #fff;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #0d9960;
    }

   .logo{
   width:100vw;
   justify-content:center;
   align:center;
   position:absolute;
   top:0px;
   }

    .logo h1 {
    
      font-size: 20px;
      padding: 20px;
      color: #007acc;
      text-align: center;
    }
  </style>
</head>

<body>
  <div class="logo">
 
   <h1>Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</h1>
   
  </div>

  

  <div class="container">
    <h2>Data Owner Register</h2>
    <form action="ORegister.jsp" method="post" enctype="multipart/form-data">
      <label>Owner Name (required)</label><br />
      <input id="name" name="userid" type="text" required /><br />

      <label>Password (required)</label><br />
      <input id="password" name="pass" type="password" required /><br />

      <label>Email Address (required)</label><br />
      <input id="email" name="email" type="text" required /><br />

      <label>Mobile Number (required)</label><br />
      <input id="mobile" name="mobile" type="text" required /><br />

      <label>Your Address</label><br />
      <textarea name="address" id="address" rows="4"></textarea><br />

      <label>Date of Birth (required)</label><br />
      <input id="dob" name="dob" type="text" required /><br />

      <label>Select Gender (required)</label><br />
      <select id="gender" name="gender" required>
        <option value="">-Select-</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
      </select><br />

      <label>Enter Pincode (required)</label><br />
      <input id="pincode" name="pincode" type="text" required /><br />

      <label>Enter Location (required)</label><br />
      <input id="location" name="location" type="text" required /><br />

      <label>Select Profile Picture (required)</label><br />
      <input id="pic" name="pic" type="file" required /><br />

      <input type="submit" value="REGISTER" />
    </form>
    <a href="o_DataOwnerLogin.jsp">Back to Login</a><br>
     <a href="index.html">HOME</a>
  </div>
</body>
</html>

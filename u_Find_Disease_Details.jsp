<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Find Data Details</title>
  <meta charset="UTF-8" />
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to bottom right, #e6f2e6, #ffffff);
    }
    .main {
      padding: 20px;
    }
    .header {
      background-color: #004d00;
      padding: 20px;
      text-align: center;
      color: white;
    }
    .header h1 {
      font-size: 20px;
      margin: 0;
    }
    .container {
      max-width: 600px;
      background: rgba(255, 255, 255, 0.95);
      margin: 40px auto;
      padding: 30px;
      border-radius: 16px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
      color: #004d00;
      text-align: center;
      border-bottom: 2px solid #00cc00;
      padding-bottom: 10px;
      margin-bottom: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    td {
      padding: 12px;
      font-size: 16px;
    }
    input[type="text"] {
      width: 100%;
      padding: 10px;
      border-radius: 8px;
      border: 1px solid #ccc;
    }
    .submit-btn {
      width: 100%;
      padding: 12px;
      border: none;
      border-radius: 12px;
      background-color: #004d00;
      color: #fff;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s;
      margin-top: 20px;
    }
    .submit-btn:hover {
      background-color: #009900;
    }
    .back-link {
      text-align: center;
      margin-top: 20px;
    }
    .back-link a {
      color: #004d00;
      text-decoration: none;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="main">
    <div class="header">
      <h1>Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</h1>
    </div>

    <div class="container">
      <%
        try {
          String uname = (String) application.getAttribute("uname");
          String status = "Permitted";
          String sql = "SELECT * FROM request WHERE status='" + status + "' AND uname='" + uname + "'";
          Statement stmt = connection.createStatement();
          ResultSet rs = stmt.executeQuery(sql);

          if (rs.next()) {
      %>
      <h2>Enter Patient ID</h2>
      <form name="s" action="u_Find_Disease_Details1.jsp" method="post">
        <table>
          <tr>
            <td><strong>PID:</strong></td>
            <td><input type="text" name="PID" required /></td>
          </tr>
        </table>
        <input type="submit" class="submit-btn" value="Decrypt & Find Infectious Disease Analysis Details" />
      </form>
      <% } else { %>
      <h2 style="text-align: center; color: red;">No Permission To View Infectious Disease Analysis Details</h2>
      <div class="back-link"><a href="u_DataConsumersMain.jsp">&laquo; Back</a></div>
      <% } connection.close(); } catch(Exception e) { out.print(e); } %>

      <div class="back-link"><a href="u_DataConsumersMain.jsp">&laquo; Back</a></div>
    </div>
  </div>
</body>
</html>

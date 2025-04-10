<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
  <title>Infectious Disease Analysis Details</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      background: linear-gradient(to bottom right, #e6f2e6, #ffffff);
    }
    .header {
      background-color: #004d00;
      padding: 20px;
      text-align: center;
      color: white;
    }
    .header h1 {
      font-size: 22px;
      margin: 0;
    }
    .container {
      max-width: 95%;
      margin: 30px auto;
      padding: 20px;
      background: rgba(255,255,255,0.95);
      border-radius: 16px;
      box-shadow: 0 0 12px rgba(0,0,0,0.1);
    }
    h2 {
      text-align: center;
      color: #006600;
      margin-bottom: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin: auto;
      font-size: 14px;
      text-align: center;
    }
    th, td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    th {
      background-color: #00cc66;
      color: white;
    }
    td {
      background-color: #f9fff9;
    }
    .back-link {
      text-align: center;
      margin-top: 20px;
    }
    .back-link a {
      color: #004d00;
      font-weight: bold;
      text-decoration: none;
    }
    textarea {
      width: 100%;
      height: 60px;
      resize: none;
      border-radius: 8px;
      padding: 6px;
      font-family: monospace;
      font-size: 12px;
    }
  </style>
</head>
<body>
  <div class="header">
    <h1>Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</h1>
  </div>

  <div class="container">
    <h2>Infectious Disease Analysis Details</h2>
    <%
      try {
        String PID = request.getParameter("PID");
        String query = "SELECT * FROM datasets WHERE Pid='" + PID + "'";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);

        if (rs.next()) {
    %>
    <div style="overflow-x: auto;">
    <table>
      <tr>
        <th>PID</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Total_Bilirubin</th>
        <th>Direct_Bilirubin</th>
        <th>Alkaline_Phosphotase</th>
        <th>Alamine_Aminotransferase</th>
        <th>Aspartate_Aminotransferase</th>
        <th>Total_Proteins</th>
        <th>Albumin</th>
        <th>Albumin_Globulin_Ratio</th>
        <th>Analysis</th>
        <th>Hashcode</th>
      </tr>
      <tr>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        <td><%= rs.getString(7) %></td>
        <td><%= rs.getString(8) %></td>
        <td><%= rs.getString(9) %></td>
        <td><%= rs.getString(10) %></td>
        <td><%= rs.getString(11) %></td>
        <td><%= rs.getString(12) %></td>
        <td><%= rs.getString(13) %></td>
        <td><textarea readonly><%= rs.getString(14) %></textarea></td>
      </tr>
    </table>
    </div>
    <% } else { %>
      <h2 style="color: red;">No record found for the given Patient ID.</h2>
    <% } connection.close(); } catch(Exception e) { out.println("<p style='color:red'>"+e.getMessage()+"</p>"); } %>

    <div class="back-link">
      <a href="u_DataConsumersMain.jsp">&laquo; Back to Main</a>
    </div>
  </div>
</body>
</html>

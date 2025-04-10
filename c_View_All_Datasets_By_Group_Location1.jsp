<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View All Datasets By Blockchain</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #e6fffa, #ffffff);
      padding: 30px;
      margin: 0;
    }
    h3 {
      text-align: center;
      color: #ff0033;
      font-size: 22px;
      margin-bottom: 30px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 50px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
      border-radius: 12px;
      overflow: hidden;
      background: rgba(255, 255, 255, 0.95);
    }
    th, td {
      padding: 12px;
      text-align: center;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #00cc66;
      color: white;
      font-weight: 600;
    }
    td {
      color: #333;
    }
    tr:hover {
      background-color: #f5f5f5;
    }
  </style>
</head>
<body>

<%
  try {
    String locQuery = "SELECT DISTINCT(Location) FROM datasets";
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery(locQuery);

    while(rs1.next()) {
      String location = rs1.getString(1);

      String dataQuery = "SELECT * FROM datasets WHERE Location = '" + location + "'";
      Statement st2 = connection.createStatement();
      ResultSet rs2 = st2.executeQuery(dataQuery);

      boolean first = true;
      while(rs2.next()) {
        if (first) {
%>
<h3>Infectious Liver Disease Analysis By Location  <%= location %></h3>
<table>
  <tr>
    <th>Pid</th>
    <th>Age</th>
    <th>Gender</th>
    <th>Total Bilirubin</th>
    <th>Direct Bilirubin</th>
    <th>Alkaline Phosphotase</th>
    <th>Alamine Aminotransferase</th>
    <th>Aspartate Aminotransferase</th>
    <th>Total Proteins</th>
    <th>Albumin</th>
    <th>Albumin & Globulin Ratio</th>
    <th>Analysis</th>
    <th>Hashcode</th>
    <th>Location</th>
  </tr>
<%
          first = false;
        }
%>
  <tr>
    <td><%= rs2.getString(2) %></td>
    <td><%= rs2.getString(3) %></td>
    <td><%= rs2.getString(4) %></td>
    <td><%= rs2.getString(5) %></td>
    <td><%= rs2.getString(6) %></td>
    <td><%= rs2.getString(7) %></td>
    <td><%= rs2.getString(8) %></td>
    <td><%= rs2.getString(9) %></td>
    <td><%= rs2.getString(10) %></td>
    <td><%= rs2.getString(11) %></td>
    <td><%= rs2.getString(12) %></td>
    <td><%= rs2.getString(13) %></td>
    <td><%= rs2.getString(14) %></td>
    <td><%= rs2.getString(15) %></td>
  </tr>
<%
      }

      if (!first) {
%>
</table>
<%
      }
    }
  } catch (Exception e) {
    out.println("<p style='color:red;text-align:center;'>Error: " + e.getMessage() + "</p>");
  }
%>

</body>
</html>

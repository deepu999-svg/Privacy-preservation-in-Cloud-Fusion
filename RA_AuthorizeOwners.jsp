<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
  <title>Registry Authority - Cloud Fusion</title>
  <meta charset="UTF-8">
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to bottom right, #e6f2e6, #ffffff);
    }
    .container {
      padding: 30px;
    }
    .card {
      background: rgba(255, 255, 255, 0.9);
      border-radius: 16px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      max-width: 800px;
      margin: auto;
    }
    .card h2 {
      color: #004d00;
      border-bottom: 2px solid #00cc00;
      padding-bottom: 10px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }
    table, th, td {
      border: 1px solid #ccc;
    }
    th {
      background-color: #009900;
      color: white;
      padding: 10px;
    }
    td {
      padding: 10px;
      text-align: center;
    }
    td a {
      color: #cc0000;
      text-decoration: none;
      font-weight: bold;
    }
    .back-link {
      display: block;
      text-align: right;
      margin-top: 20px;
      color: #004d00;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="card">
      <h2>Authorized Owners</h2>
      <table>
        <tr>
          <th>ID</th>
          <th>Owner Name</th>
          <th>Status</th>
        </tr>
        <%
          try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("select * from downer");
            while (rs.next()) {
              int id = rs.getInt(1);
              String ownerName = rs.getString(2);
              String status = rs.getString(13);
        %>
        <tr>
          <td><%= id %></td>
          <td><a href="d_OwnerDetails.jsp?name=<%= ownerName %>"><%= ownerName %></a></td>
          <td>
            <% if ("Waiting".equalsIgnoreCase(status)) { %>
              <a href="d_StatusOwner.jsp?id=<%= id %>"><%= status %></a>
            <% } else { %>
              <%= status %>
            <% } %>
          </td>
        </tr>
        <%
            }
            connection.close();
          } catch(Exception e) {
            out.println("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
          }
        %>
      </table>
      <a class="back-link" href="d_DomainMain.jsp">&laquo; Back</a>
    </div>
  </div>
</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Registry Authority</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: #f0f8ff;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 1000px;
      margin: 40px auto;
      background: rgba(255, 255, 255, 0.85);
      padding: 30px;
      border-radius: 20px;
      box-shadow: 0 0 20px rgba(0, 128, 128, 0.2);
    }
    h2 {
      text-align: center;
      color: #00695c;
      margin-bottom: 30px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      background: #ffffff;
      border-radius: 10px;
      overflow: hidden;
    }
    th, td {
      padding: 12px 16px;
      text-align: center;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #00695c;
      color: #ffffff;
      font-size: 16px;
    }
    td a {
      color: #d32f2f;
      font-weight: bold;
      text-decoration: none;
    }
    td a:hover {
      text-decoration: underline;
    }
    .back-link {
      text-align: right;
      margin-top: 20px;
    }
    .back-link a {
      text-decoration: none;
      background: #00695c;
      color: white;
      padding: 10px 16px;
      border-radius: 8px;
      transition: background 0.3s ease;
    }
    .back-link a:hover {
      background: #004d40;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Authorized Data Consumers</h2>
    <table>
      <tr>
        <th>Data Consumer ID</th>
        <th>Data Consumer Name</th>
        <th>Status</th>
      </tr>
      <%
        String s2 = "", s5 = "";
        int i = 0;
        try {
          String query = "select * from user";
          Statement st = connection.createStatement();
          ResultSet rs = st.executeQuery(query);
          while (rs.next()) {
            i = rs.getInt(1);
            s2 = rs.getString(2);
            s5 = rs.getString(13);
      %>
      <tr>
        <td><%=i%></td>
        <td><a href="d_DataConsumersDetails.jsp?name=<%=s2%>"><%=s2%></a></td>
        <td>
          <% if (s5.equalsIgnoreCase("Waiting")) { %>
            <a href="d_StatusDataConsumers.jsp?id=<%=i%>"><%=s5%></a>
          <% } else { %>
            <%=s5%>
          <% } %>
        </td>
      </tr>
      <%
          }
          connection.close();
        } catch(Exception e) {
          out.println(e.getMessage());
        }
      %>
    </table>
    <div class="back-link">
      <a href="d_DomainMain.jsp">Back</a>
    </div>
  </div>
</body>
</html>

<%@ include file="connect.jsp" %>
<%@ page import="java.io.*, java.util.*, java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View All Datasets By Blockchain</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to bottom right, #e6f2e6, #ffffff);
      margin: 0;
      padding: 0;
    }
    .header {
      background-color: #004d00;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 22px;
    }
    .content {
      padding: 30px;
    }
    table {
      width: 98%;
      margin: auto;
      border-collapse: collapse;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      background: rgba(255, 255, 255, 0.95);
    }
    th {
      background-color: #00cc66;
      color: white;
      padding: 12px;
    }
    td {
      text-align: center;
      padding: 10px;
      background-color: #f9fff9;
      border: 1px solid #ddd;
    }
    h3, p {
      text-align: center;
      color: #006600;
    }
  </style>
</head>
<body>
  <div class="header">
    Privacy Preservation in Multi-Cloud Secure Data Fusion
  </div>

  <div class="content">
    <%
      try {
        String queryDistinct = "SELECT DISTINCT(hcode) FROM datasets";
        Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery(queryDistinct);

        while (rs1.next()) {
          String hsign = rs1.getString(1);
          String query = "SELECT * FROM datasets WHERE hcode ='" + hsign + "'";
          Statement st = connection.createStatement();
          ResultSet rs = st.executeQuery(query);

          int count = 1;
          while (rs.next()) {
            if (count == 1) {
              count++;
              String firstSig = rs.getString(13);
    %>
              <h3>Infectious Liver Disease Analysis - Group Signature: <%= firstSig %></h3>
              <p>Aggregation Group Signature: <%= hsign %></p>
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
                  <th>Albumin/Globulin Ratio</th>
                  <th>Analysis</th>
                  <th>Hashcode</th>
                </tr>
    <%
            }

            // Fetch values directly without decryption
            String s1 = rs.getString(2);
            String s2 = rs.getString(3);
            String s3 = rs.getString(4);
            String s4 = rs.getString(5);
            String s5 = rs.getString(6);
            String s6 = rs.getString(7);
            String s7 = rs.getString(8);
            String s8 = rs.getString(9);
            String s9 = rs.getString(10);
            String s10 = rs.getString(11);
            String s11 = rs.getString(12);
            String s12 = rs.getString(13);
            String s13 = rs.getString(14);
    %>
            <tr>
              <td><%= s1 %></td>
              <td><%= s2 %></td>
              <td><%= s3 %></td>
              <td><%= s4 %></td>
              <td><%= s5 %></td>
              <td><%= s6 %></td>
              <td><%= s7 %></td>
              <td><%= s8 %></td>
              <td><%= s9 %></td>
              <td><%= s10 %></td>
              <td><%= s11 %></td>
              <td><%= s12 %></td>
              <td><%= s13 %></td>
            </tr>
    <%
          } // while rs
          out.println("</table><br><br>");
        } // while rs1
        connection.close();
      } catch(Exception e) {
        out.println("<p style='color:red; text-align:center;'>Error: " + e.getMessage() + "</p>");
      }
    %>
  </div>
</body>
</html>

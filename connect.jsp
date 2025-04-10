<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>

<%
    String URL = "jdbc:mysql://localhost:3306/ppmc";  
    String USER = "root"; 
    String PASSWORD = "123";  
    Connection connection = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(URL, USER, PASSWORD);
        application.setAttribute("dbConnection", connection);
       
    } catch (ClassNotFoundException e) {
        out.println("ERROR: MySQL JDBC Driver Not Found!<br>");
        e.printStackTrace();
    } catch (SQLException e) {
        out.println("ERROR: Database Connection Failed! Check MySQL settings.<br>");
        e.printStackTrace();
    }
%>

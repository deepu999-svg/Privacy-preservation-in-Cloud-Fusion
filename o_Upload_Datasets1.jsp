<%@ page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import ="java.security.Key" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="java.math.BigInteger" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
<%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
<%@ page import ="java.io.FileNotFoundException" %>  
<%@ page import ="java.io.IOException" %>  
<%@ page import ="java.util.Iterator" %>  
<%@ page import ="java.util.ArrayList" %> 
<%@ page import="org.apache.poi.xssf.usermodel.*" %>
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
<%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
<%@ page import="org.apache.poi.ss.usermodel.Cell" %>
<%@ page import ="org.apache.poi.ss.usermodel.Row"%>
<%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
<%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<html>
<head><title>Upload Datasets</title>
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

        h2 {
            color: #0a7d4f;
            margin-bottom: 30px;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 12px;
            background: #f0f0f0;
            transition: all 0.3s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            background: #fff;
            outline: 2px solid #0a7d4f;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 45%;
            padding: 10px;
            margin: 10px 5px;
            border: none;
            border-radius: 12px;
            background-color: #0a7d4f;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="reset"] {
            background-color: #ff4d4d;
        }

        input[type="submit"]:hover {
            background-color: #0d9960;
        }

        input[type="reset"]:hover {
            background-color: #ff1a1a;
        }

        .logo {
            text-align: center;
            margin-bottom: 30px;
        }

        .logo h1 {
            font-size: 18px;
            color: #0a7d4f;
        }

        .nav {
            margin-bottom: 20px;
            text-align: center;
        }

        .nav a {
            color: #0a7d4f;
            text-decoration: none;
            font-weight: bold;
            margin: 0 10px;
        }

        .nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%
try {
    String fname = request.getParameter("fname");

    // Delete old data
    String sql = "DELETE FROM datasets";
    Statement stmt = connection.createStatement();
    stmt.executeUpdate(sql);

    String Pid, Age, Gender, Total_Bilirubin, Direct_Bilirubin,
           Alkaline_Phosphotase, Alamine_Aminotransferase,
           Aspartate_Aminotransferase, Total_Protiens, Albumin,
           Albumin_and_Globulin_Ratio, Analysis, Location;

    connection.setAutoCommit(false);
    FileInputStream input = new FileInputStream(getServletContext().getRealPath("/") + "//" + fname);
    POIFSFileSystem fs = new POIFSFileSystem(input);
    HSSFWorkbook wb = new HSSFWorkbook(fs);
    HSSFSheet sheet = wb.getSheetAt(0);
    Row row;

    for (int i = 1; i <= sheet.getLastRowNum(); i++) {
        row = (Row) sheet.getRow(i);

        Pid = (row.getCell(0) == null) ? "0" : row.getCell(0).toString();
        Age = (row.getCell(1) == null) ? "0" : row.getCell(1).toString();
        Gender = (row.getCell(2) == null) ? "0" : row.getCell(2).toString();
        Total_Bilirubin = (row.getCell(3) == null) ? "0" : row.getCell(3).toString();
        Direct_Bilirubin = (row.getCell(4) == null) ? "0" : row.getCell(4).toString();
        Alkaline_Phosphotase = (row.getCell(5) == null) ? "0" : row.getCell(5).toString();
        Alamine_Aminotransferase = (row.getCell(6) == null) ? "0" : row.getCell(6).toString();
        Aspartate_Aminotransferase = (row.getCell(7) == null) ? "0" : row.getCell(7).toString();
        Total_Protiens = (row.getCell(8) == null) ? "0" : row.getCell(8).toString();
        Albumin = (row.getCell(9) == null) ? "0" : row.getCell(9).toString();
        Albumin_and_Globulin_Ratio = (row.getCell(10) == null) ? "0" : row.getCell(10).toString();
        Analysis = (row.getCell(11) == null) ? "0" : row.getCell(11).toString();
        Location = (row.getCell(12) == null) ? "0" : row.getCell(12).toString();

        // SHA1 for hcode
        String filename = "filename.txt";
        PrintStream p = new PrintStream(new FileOutputStream(filename));
        p.print(new String(Analysis));
        MessageDigest md = MessageDigest.getInstance("SHA1");
        FileInputStream fis11 = new FileInputStream(filename);
        DigestInputStream dis1 = new DigestInputStream(fis11, md);
        BufferedInputStream bis1 = new BufferedInputStream(dis1);
        while (bis1.read() != -1) {}
        BigInteger bi1 = new BigInteger(md.digest());
        String h1 = bi1.toString(16);
        String Age1 = Age.replace(".0", "");

        // Encryption removed as per request, using raw values
        PreparedStatement ps = connection.prepareStatement(
            "INSERT INTO datasets(Pid,Age,Gender,Total_Bilirubin,Direct_Bilirubin,Alkaline_Phosphotase,Alamine_Aminotransferase,Aspartate_Aminotransferase,Total_Protiens,Albumin,AGR,Analysis,hcode,Location) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

        ps.setString(1, Pid);
        ps.setString(2, Age1);
        ps.setString(3, Gender);
        ps.setString(4, Total_Bilirubin);
        ps.setString(5, Direct_Bilirubin);
        ps.setString(6, Alkaline_Phosphotase);
        ps.setString(7, Alamine_Aminotransferase);
        ps.setString(8, Aspartate_Aminotransferase);
        ps.setString(9, Total_Protiens);
        ps.setString(10, Albumin);
        ps.setString(11, Albumin_and_Globulin_Ratio);
        ps.setString(12, Analysis);
        ps.setString(13, h1);
        ps.setString(14, Location);
        ps.executeUpdate();
    }

    connection.commit();
    input.close();
%>


<body>

<div class="container">
    <div class="logo">
        <h1>Privacy Preservation in Multi-Cloud Secure Data Fusion</h1>
    </div>

    <div class="nav">
        <a href="o_DataOwnerMain.jsp">Back to Dashboard</a>
    </div>

    <h2>Dataset uploaded successfully!</h2>
   
</div>

</body>

<%
} catch (Exception e) {
%>
<p style="color:red; font-weight:bold;"> Dataset upload failed. Please try again.</p>
<p><a href="o_DataOwnerMain.jsp">Back to Dashboard</a></p>
<%
}
%>

</body>
</html>

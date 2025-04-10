<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload Datasets</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7f4, #ffffff);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.8);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #2a7f62;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        input[type="file"],
        input[type="submit"] {
            padding: 12px;
            border-radius: 12px;
            border: none;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        input[type="file"] {
            background: #f2f2f2;
        }

        input[type="submit"] {
            background-color: #2a7f62;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #256c55;
        }

        .message {
            text-align: center;
            font-size: 18px;
            margin-top: 20px;
            color: #444;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 30px;
            color: #2a7f62;
            text-decoration: none;
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Upload Datasets</h1>
    <form name="vinform" action="o_Upload_Datasets1.jsp" method="post" id ="firstForm"> 
            <table width="424">
              <tr>
                <td width="280" height="50" bgcolor="#FFFFFF"><input type="file" name="fname" /></td>
                <td width="208"><label>
                <input type="submit" name="Submit" value="Encrypt & Upload" />
                </label></td>
              </tr>
            </table>
        </form>

    

    <a class="back-link" href="o_DataOwnerMain.jsp">Back to Home</a>
</div>
</body>
</html>

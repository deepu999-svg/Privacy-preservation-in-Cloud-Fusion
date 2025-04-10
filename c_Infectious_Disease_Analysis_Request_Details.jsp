<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>u_Infectious_Disease_Analysis_Request</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {font-size: 24px}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style6 {color: #FF0000}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
-->
/* Reset default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background-color: #f4f4f4;
    color: #333;
    line-height: 1.6;
}

/* Main container */
.main {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    background: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    padding-bottom: 20px;
}

/* Header */
.header {
    background: #2c3e50;
    padding: 20px;
    color: #fff;
    text-align: center;
}

.logo h1 {
    font-size: 28px;
    font-weight: bold;
}

/* Navigation Menu */
.menu_nav {
    background: #34495e;
    text-align: center;
    padding: 10px 0;
}

.menu_nav ul {
    list-style: none;
}

.menu_nav ul li {
    display: inline;
    margin: 0 15px;
}

.menu_nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: bold;
    font-size: 16px;
    padding: 10px;
    transition: 0.3s;
}

.menu_nav ul li a:hover {
    color: #ffcc00;
}

/* Slider */
.slider {
    width: 100%;
    overflow: hidden;
    margin: 20px 0;
}

#coin-slider img {
    width: 100%;
    height: auto;
    display: block;
}

/* Content Section */
.content {
    padding: 20px;
}

.mainbar {
    width: 70%;
    float: left;
}

.sidebar {
    width: 28%;
    float: right;
    background: #ecf0f1;
    padding: 15px;
    border-radius: 5px;
}

.article h2 {
    color: #2c3e50;
    border-bottom: 2px solid #ffcc00;
    padding-bottom: 5px;
}

.post_content {
    font-size: 16px;
    text-align: justify;
}

/* Login Form */
form {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    width: 50%;
    margin: 20px auto;
}

input.box {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input.LOGIN, input.RESET {
    background: #2c3e50;
    color: white;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    border-radius: 5px;
    transition: 0.3s;
}

input.LOGIN:hover, input.RESET:hover {
    background: #ffcc00;
    color: #2c3e50;
}

/* Footer */
.footer {
    background: #2c3e50;
    color: #fff;
    text-align: center;
    padding: 15px;
    margin-top: 20px;
}


@media (max-width: 768px) {
    .mainbar, .sidebar {
        width: 100%;
        float: none;
    }
    .menu_nav ul li {
        display: block;
        margin-bottom: 10px;
    }
    form {
        width: 80%;
    }
}

</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style4">Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
    
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
          <h2 class="style5">View Infectious Disease Analysis Request Status!!!</h2>
          <p>&nbsp;</p>
		  
		  <%@ include file="connect.jsp" %>
          <table width="567" border="1.5" cellpadding="0" style="border-collapse:collapse" cellspacing="0"  align="center">
              <tr>
                <td width="64" height="30" bgcolor="#FFFF00"><div align="center" class="style6 style24 style21"><strong> ID </strong></div></td>
                <td width="110" bgcolor="#FFFF00"><div align="center" class="style6 style25"><strong>User Name </strong></div></td>
                <td width="113" bgcolor="#FFFF00"><div align="center" class="style6 style25"><strong>Requested Date and Time </strong></div></td>
                <td width="116" bgcolor="#FFFF00"><div align="center" class="style6 style25"><strong>Status </strong></div></td>
              </tr>
              <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

  	try 
	{
        
		
		   
      	   String query="select * from request";
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   while(rs.next())
		   {
				i=rs.getInt(1);
				s2=rs.getString(2);
				s3=rs.getString(3);
				s4=rs.getString(4);
				
				
		%>
              <tr>
                <td height="28"><div align="center" class="style6 style21"><strong><%=i%></strong></div></td>
                <td><div align="center" class="style6 style21"><strong><%=s2%></strong></div></td>
                <td><div align="center" class="style6 style21"><strong><%=s3%></strong></div></td>
                <td><div class="style21 style6 style8">
                    <div align="center"><%=s4%></div>
                </div></td>
                <%
		
			
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
      </table>
            <p>&nbsp;</p>
            <p align="center"><a href="c_CloudMain.jsp">Back</a></p>
            <h2></h2>
    </div>
      <div class="clr">
        <p>&nbsp;</p>
        
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
  </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>

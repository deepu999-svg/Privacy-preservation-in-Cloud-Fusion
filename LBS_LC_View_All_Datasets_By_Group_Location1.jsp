
          
		    <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style3 {color: #FFFFFF}
.style6 {color: #FF0000}
-->
            </style>
          <title> View All Datasets By Blockchain</title><h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,Location,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(Location) from datasets";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    Location = rs1.getString(1);
						   	String query="select * from datasets where Location ='"+Location+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(15);
							%>
       
			 <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr>
        	  
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Pid</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Age</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Gender</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Total_Bilirubin</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Direct_Bilirubin</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Alkaline_Phosphotase</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Alamine_Aminotransferase</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Aspartate_Aminotransferase</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Total_Protiens</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Albumin</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Albumin_and_Globulin_Ratio</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Analysis</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Hashcode</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Location</strong></strong></div></td>
	
</td>
        </tr>
         <h3 align="center">
<p align="center" class="style12"><span class="style2">Infectious Liver Disease Analysis By Location--->::</span> <%=s111%><br>

	     </h3>
			<div align="center">
			  <%
							
							}
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
								s9=rs.getString(10);
								s10=rs.getString(11);
								s11=rs.getString(12);
								s12=rs.getString(13);
								s13=rs.getString(14);
								s14=rs.getString(15);
								
								String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(s4.getBytes()));
										
				String decrypted = new String(Base64.decode(s2.getBytes()));
				String decrypted1 = new String(Base64.decode(s3.getBytes()));
				String decrypted2 = new String(Base64.decode(s4.getBytes()));
				String decrypted3 = new String(Base64.decode(s5.getBytes()));
				String decrypted4 = new String(Base64.decode(s6.getBytes()));
				String decrypted5 = new String(Base64.decode(s7.getBytes()));	
								
								
					%>
	      </div>  
			   <tr>
        
          <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
             <%out.println(s1);%>
            </strong></div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(decrypted);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(decrypted1);%>
              </strong></div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(decrypted2);%>
              </strong></div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
               <%out.println(decrypted3);%>
               </strong></div></td> <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
               <%out.println(decrypted4);%>
               </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(decrypted5);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(s8);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(s9);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(s10);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(s11);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(s12);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(s13);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style6 style4"><strong>
              <%out.println(s14);%>
              </strong></div></td>

        </tr>
	    <%	 
			   }
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
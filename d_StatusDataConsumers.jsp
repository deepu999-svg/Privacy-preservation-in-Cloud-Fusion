<%@ include file="connect.jsp" %>
<%
try{
	String id=request.getParameter("id");
	String str="Authorized";
	Statement st1=connection.createStatement();
	String query1="update user set status='"+str+"' where id='"+id+"'";
	st1.executeUpdate(query1);
	connection.close();
	response.sendRedirect("RA_AuthorizeDataConsumerss.jsp");
}
catch(Exception e)
{
out.println(e);
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String qno=request.getParameter("qno");
String ans=request.getParameter("ans");
System.out.println("qno: " + qno);
System.out.println("ans: " + ans);
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("update contact set isanswered=? where query_number=?");
	if ("yes".equalsIgnoreCase(ans)){
		pstm.setString(1, "no");
	}
	else{
		pstm.setString(1, "yes");
	}
	pstm.setString(2, qno);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("SolveQueries.jsp");
}catch (Exception e){}
%>
</body>
</html>
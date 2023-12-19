<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "org.mis.ConnectionProvider"%>
    <%@page import = "java.sql.*" %>
<%
String email = request.getParameter("email");
String SecurityQuestion = request.getParameter("SecurityQuestion");
String uanswer = request.getParameter("uanswer");
String enpass = request.getParameter("enpass");
int check = 0;
try{
	Connection con = ConnectionProvider.createC();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from employer where e_email = '"+email+"' and canswer = '"+uanswer+"'");		
	while(rs.next()){
		check = 1;
		st.executeUpdate("update employer set cpass = '"+enpass+"' where e_email = '"+email+"'");
		response.sendRedirect("forgotpassword_EMP.jsp?msg=done");
	}
	if(check == 0){
		response.sendRedirect("forgotpassword_EMP.jsp?msg=invalid");
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
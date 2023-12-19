<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import = "org.mis.ConnectionProvider"%>
    <%@page import = "java.sql.*" %>
<%
String smail = request.getParameter("smail");
String SecurityQuestion = request.getParameter("SecurityQuestion");
String uanswer = request.getParameter("uanswer");
String jnpass = request.getParameter("jnpass");
int check = 0;
try{
	Connection con = ConnectionProvider.createC();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from jobseeker where email = '"+smail+"' and answer = '"+uanswer+"'");		
	while(rs.next()){
		check = 1;
		st.executeUpdate("update jobseeker set pass = '"+jnpass+"' where email = '"+smail+"'");
		response.sendRedirect("forgotpassword_JS.jsp?msg=done");
	}
	if(check == 0){
		response.sendRedirect("forgotpassword_JS.jsp?msg=invalid");
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
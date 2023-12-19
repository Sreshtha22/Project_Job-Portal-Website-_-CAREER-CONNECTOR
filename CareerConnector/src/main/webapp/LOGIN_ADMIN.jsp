<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login as Admin</title>
<style>
    .loginform{  
        padding:80px;  
        border:5px solid rgb(36 106 175);  
        border-radius:10px;  
        float:left;  
        margin-top:150px;  
        background-color:rgb(255, 255, 255);
        margin-left:420px;
    }  
    .formheading{  
        background-color:rgb(36 106 175);  
        color:white;  
        padding:8px;  
        text-align:center;  
    }  
    .button{  
    background-color:rgb(36 106 175);  
    padding: 7px 40px 7px 40px;  
    color:white;  
    font-weight:bold;  
    margin-left:70px;  
    border-radius:5px;  
    }  
    .btn:hover {
  background-color: #ffff !important;
  color: rgb(36 106 175) !important;
}
</style>
</head>
<body style = "background-color: rgb(202, 223, 245); color : rgb(8, 51, 94);">
<div class="loginform" style = "margin-left : 500px;">  
    <h2 class="formheading" style = "border-radius: 3px;">Login as Admin</h2>  
    <form action="AdminLogin" method="POST">  
    <table>  
    <tr><td>Email :</td><td><input type="email" name="aemail" required/></td></tr>
    <tr><td>Password :</td><td><input style = "width : 162px;" type="password" inputmode="numeric" minlength="6" name="apass" required/></td></tr> 
    <tr><td colspan="2" style="text-align:center"><input href = "DASH_ADMIN.jsp" type="submit" name = "aacct" value="Login" class="btn px-6 btn-primary text-white" style = "margin-top : 10px; background-color: rgb(36 106 175); border-color: #ffff; color: #ffff; width : 60px; height : 30px;"></td></tr>
    </table>
    </form>  
    <%String str=request.getParameter("msg"); 
    if("invalid".equals(str))
    {
    %>
    <h3>Email or Password Incorrect!</h3>
    <%} %>
    </div>  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>- View Employers</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
       <a class="navbar-brand" href="#"><img src="images/logo_cc.png" width="230" height="50" style = "margin-left : 120px;"> 
       <!-- <div class="container">  -->
      <div style = "color: #fff;" class="navbar-brand text-warning font-weight-bold"></div>
                <ul class="navbar-nav m-lg-auto m-sm-1">
                <li class="navbar-item">
                        <h4 style="color: white; margin-right : 50px; margin-top:20px"">Admin Dashboard</h4>
                    <li class="navbar-item">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <form action="logout_Admin.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href = "LOGIN_ADMIN.jsp"><button style = "background-color: rgb(36 106 175); border-color: rgb(36 106 175);margin-top:-50px" type="submit" name="logout" class="btn text-white">Logout</button></a></form>
                    </li>
                </ul>
    </nav>
    <hr>
    
    <center>
                    <h2>
                        <center>List Of Employers</center>
                    </h2>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover table-condensed" width="80%"
                            align="center">
                            <tr>

                                <th>
                                    <center>Employer Name</center>
                                </th>
                                <th>
                                    <center>Email</center>
                                </th>
                                <th>
                                    <center>Company Name</center>
                                </th>
                                <th>
                                    <center>Company Type</center>
                                </th>
                                <th>
                                    <center>Company Location</center>
                                </th>
                                <th>
                                    <center>Company Email</center>
                                </th>
                                <th>
                                    <center>Company Phone</center>
                                </th>
                                <th>
                                    <center>Company License</center>
                                </th>
                                <th>
                                    <center>Security Answer</center>
                                </th>
                                <th>
                                    <center>Password</center>
                                </th>
                                <th>
                                    <center>Designation</center>
                                </th>
                                <th>
                                    <center>Company Linkedin</center>
                                </th>
                                <th>
                                    <center>Company Logo</center>
                                </th>
                                <th>
                                    <center>Company Website</center>
                                </th>
                                <th>
                                    <center>Domains</center>
                                </th>
                                <th>
                                    <center>Company About</center>
                                </th>
                                
                            </tr>
                            <form action="#">

                                <% String name=null;
                                   String email=null; 
                                   String cname=null;
                                   String ctype=null; 
                                   String cloc=null;
                                   String cemail=null;
                                   String cphn=null; 
                                   String clic=null;
                                   String sans=null;
                                   String pass=null;
                                   String desig=null;
                                   String cln=null;
                                   String logo=null; 
                                   String cweb=null;
                                   String dom=null; 
                                   String about=null; 
                                   Connection conn=null;
                                   PreparedStatement pstm=null; 
                                   ResultSet rs=null;
                                   try { 
                                	conn=ConnectionProvider.createC();
                                    pstm=conn.prepareStatement("select *from employer"); 
                                    rs=pstm.executeQuery(); 
                                    while(rs.next()) { 
                                    	name=rs.getString(1);
                                    	email=rs.getString(2);
                                    	cname=rs.getString(3);
                                        ctype=rs.getString(4);
                                        cloc=rs.getString(5); 
                                        cemail=rs.getString(6);
                                        cphn=rs.getString(7);
                                        clic=rs.getString(8);
                                        sans=rs.getString(9);
                                        pass=rs.getString(10);
                                        desig=rs.getString(11);
                                        cln=rs.getString(12);
                                        logo=rs.getString(13);
                                        cweb=rs.getString(14);
                                        dom=rs.getString(15);
                                        about=rs.getString(16);
                                        
                                        out.println("<tr>");
                                        out.println("<td>");
                                        out.println(name);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(email);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(cname);
                                        out.println("</td>");

                                       out.println("<td>");
                                        out.println(ctype);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(cloc);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(cemail);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(cphn);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(clic);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(sans);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(pass);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(desig);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(cln);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(logo);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(cweb);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(dom);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(about);
                                        out.println("</td>");

                                       
                                    }

                                    } catch (Exception e) {
                                    }

                                    %>




                        </table>
                    </div>
                </center>

</body>
</html>
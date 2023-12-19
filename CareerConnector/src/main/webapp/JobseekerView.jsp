<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>- View Jobseekers</title>
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
                        <center>List Of Jobseekers</center>
                    </h2>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover table-condensed" width="80%"
                            align="center">
                            <tr>

                                <th>
                                    <center>Jobseeker Name</center>
                                </th>
                                <th>
                                    <center>Phone No.</center>
                                </th>
                                <th>
                                    <center>Email</center>
                                </th>
                                <th>
                                    <center>Password</center>
                                </th>
                                <th>
                                    <center>Security Answer</center>
                                </th>
                                <th>
                                    <center>Resume</center>
                                </th>
                                <th>
                                    <center>Profile</center>
                                </th>
                                <th>
                                    <center>Website</center>
                                </th>
                                <th>
                                    <center>Linkedin</center>
                                </th>
                                <th>
                                    <center>Github</center>
                                </th>
                                <th>
                                    <center>Address</center>
                                </th>
                                <th>
                                    <center>Bio</center>
                                </th>
                                <th>
                                    <center>Qualification</center>
                                </th>
                                <th>
                                    <center>Skills</center>
                                </th>
                                <th>
                                    <center>Experience</center>
                                </th>
                                <th>
                                    <center>Projects</center>
                                </th>
                                <th>
                                    <center>Achievements</center>
                                </th>
                            </tr>
                            <form action="#">

                                <% String name=null;
                                   String phn=null; 
                                   String email=null;
                                   String pass=null; 
                                   String sans=null;
                                   String res=null;
                                   String pro=null; 
                                   String web=null;
                                   String ln=null;
                                   String git=null;
                                   String add=null;
                                   String bio=null;
                                   String qua=null; 
                                   String skill=null;
                                   String exp=null; 
                                   String proj=null;
                                   String achi=null;
                                   Connection conn=null;
                                   PreparedStatement pstm=null; 
                                   ResultSet rs=null;
                                   try { 
                                	conn=ConnectionProvider.createC();
                                    pstm=conn.prepareStatement("select *from jobseeker"); 
                                    rs=pstm.executeQuery(); 
                                    while(rs.next()) { 
                                    	name=rs.getString(1);
                                    	phn=rs.getString(2);
                                    	email=rs.getString(3);
                                        pass=rs.getString(4);
                                        sans=rs.getString(5); 
                                        res=rs.getString(6);
                                        pro=rs.getString(7);
                                        web=rs.getString(8);
                                        ln=rs.getString(9);
                                        git=rs.getString(10);
                                        add=rs.getString(11);
                                        bio=rs.getString(12);
                                        qua=rs.getString(13);
                                        skill=rs.getString(14);
                                        exp=rs.getString(15);
                                        proj=rs.getString(16);
                                        achi=rs.getString(17);
                                        
                                        out.println("<tr>");
                                        out.println("<td>");
                                        out.println(name);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(phn);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(email);
                                        out.println("</td>");

                                       out.println("<td>");
                                        out.println(pass);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(sans);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(res);
                                        out.println("<a href='/CareerConnector/resume/" + res + "'><input type='button' value='View Resume' class='btn btn-primary btn-md text-white' style='margin-left:30px; background-color: rgb(36 106 175);'></a>");
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(pro);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(web);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(ln);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(git);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(add);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(bio);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(qua);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(skill);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(exp);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(proj);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(achi);
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
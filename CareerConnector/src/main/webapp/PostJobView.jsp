<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>- Post Job View</title>
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
                        <center>Posted Job List</center>
                    </h2>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover table-condensed" width="80%"
                            align="center">
                            <tr>

                                <th>
                                    <center>Employer Email</center>
                                </th>
                                <th>
                                    <center>Job Title</center>
                                </th>
                                <th>
                                    <center>Job Location</center>
                                </th>
                                <th>
                                    <center>Job Type</center>
                                </th>
                                <th>
                                    <center>Job Description</center>
                                </th>
                                <th>
                                    <center>Job Responsibilities</center>
                                </th>
                                <th>
                                    <center>Education</center>
                                </th>
                                <th>
                                    <center>Experience</center>
                                </th>
                                <th>
                                    <center>Vacancy</center>
                                </th>
                                <th>
                                    <center>Salary</center>
                                </th>
                                <th>
                                    <center>Gender</center>
                                </th>
                                <th>
                                    <center>PostDate</center>
                                </th>
                                <th>
                                    <center>Deadline</center>
                                </th>
                                <th>
                                    <center>Company Name</center>
                                </th>
                                <th>
                                    <center>Company Tagline</center>
                                </th>
                                <th>
                                    <center>Company Description</center>
                                </th>
                                <th>
                                    <center>Company Logo</center>
                                </th>
                            </tr>
                            <form action="#">

                                <% String email=null;
                                   String title=null; 
                                   String loc=null;
                                   String type=null; 
                                   String jdesc=null;
                                   String jres=null;
                                   String edu=null; 
                                   String exp=null;
                                   String vac=null;
                                   String sal=null;
                                   String gen=null;
                                   String pdt=null;
                                   String dead=null; 
                                   String cname=null;
                                   String tag=null; 
                                   String cdesc=null; 
                                   String logo=null; 
                                   Connection conn=null;
                                   PreparedStatement pstm=null; 
                                   ResultSet rs=null;
                                   try { 
                                	conn=ConnectionProvider.createC();
                                    pstm=conn.prepareStatement("select *from postjob"); 
                                    rs=pstm.executeQuery(); 
                                    while(rs.next()) { 
                                    	email=rs.getString(1);
                                    	title=rs.getString(2);
                                    	loc=rs.getString(3);
                                        type=rs.getString(4);
                                        jdesc=rs.getString(5); 
                                        jres=rs.getString(6);
                                        edu=rs.getString(7);
                                        exp=rs.getString(8);
                                        vac=rs.getString(9);
                                        sal=rs.getString(10);
                                        gen=rs.getString(11);
                                        pdt=rs.getString(12);
                                        dead=rs.getString(13);
                                        cname=rs.getString(14);
                                        tag=rs.getString(15);
                                        cdesc=rs.getString(16);
                                        logo=rs.getString(17);
                                        
                                        out.println("<tr>");
                                        out.println("<td>");
                                        out.println(email);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(title);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(loc);
                                        out.println("</td>");

                                       out.println("<td>");
                                        out.println(type);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(jdesc);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(jres);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(edu);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(exp);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(vac);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(sal);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(gen);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(pdt);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(dead);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(cname);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(tag);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(cdesc);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(logo);
                                        out.println("<a href='/CareerConnector/Upload_logos/" + logo + "'><input type='button' value='View Logo' class='btn btn-primary btn-md text-white' style='margin-left:30px; background-color: rgb(36 106 175);'></a>");
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
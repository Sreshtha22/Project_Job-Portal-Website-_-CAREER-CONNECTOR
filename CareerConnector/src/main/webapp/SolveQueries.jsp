<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>- Solve Query</title>
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
                        <center>Query List</center>
                    </h2>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover table-condensed" width="80%"
                            align="center">
                            <tr>

                                <th>
                                    <center>Query No.</center>
                                </th>
                                <th>
                                    <center>Email</center>
                                </th>
                                <th>
                                    <center>Subject</center>
                                </th>
                                <th>
                                    <center>Message</center>
                                </th>
                                <th>
                                    <center>Is_Answered</center>
                                </th>
                            </tr>
                            <form action="#">

                                <% String qno=null; 
                                   String email=null;
                                   String sub=null; 
                                   String msg=null;
                                   String ans=null;
                                   Connection conn=null;
                                   PreparedStatement pstm=null; 
                                   ResultSet rs=null;
                                   try { 
                                	conn=ConnectionProvider.createC();
                                    pstm=conn.prepareStatement("select *from contact"); 
                                    rs=pstm.executeQuery(); 
                                    while(rs.next()) { 
                                    	qno=rs.getString(1); 
                                    	email=rs.getString(2);
                                        sub=rs.getString(3);
                                        msg=rs.getString(4); 
                                        ans=rs.getString(5);
                                        
                                        out.println("<tr>");
                                        out.println("<td>");
                                        out.println(qno);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(email);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(sub);
                                        out.println("</td>");

                                       out.println("<td>");
                                        out.println(msg);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(ans);
                                        out.println("<a href='solve1.jsp?qno=" + qno + "&ans=" + ans + "'><input type='button' value='Update' class='btn btn-primary btn-md text-white' style='margin-left:30px; background-color: rgb(36 106 175);'></a>");
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
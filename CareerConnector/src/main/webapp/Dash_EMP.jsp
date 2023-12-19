<%@page import="org.model.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
    <%@page import = "org.mis.ConnectionProvider" %>
    <%String str = (String) session.getAttribute("Email : ");
Connection con = null;
PreparedStatement ps = null;
ResultSet rst = null;
String ename1 = null;

try {
    con = ConnectionProvider.createC();
    ps = con.prepareStatement("select * from employer where e_email=?");
    ps.setString(1, str);

    rst = ps.executeQuery();

    if (rst.next()) {
        ename1 = rst.getString(1);
    }
} catch (SQLException e) {
    e.printStackTrace();  
} catch (Exception e) {
    e.printStackTrace();  
} finally {
    
    try {
        if (rst != null) rst.close();
        if (ps != null) ps.close();
        if (con != null) con.close();
    } catch (SQLException e) {
        e.printStackTrace();  
    }
}


%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Employer Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="css/custom-bs.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/line-icons/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/quill.snow.css">


    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/Style2.css">
     <link rel="stylesheet" href="css/style.css">
</head>

<body id="top">
    <div class="site-wrap">
        <div class="site-mobile-menu site-navbar-target">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close mt-3">
                    <span class="icon-close2 js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div> <!-- .site-mobile-menu -->
            <%if(str != null)
      							{%>
        <header class="site-navbar mt-3">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="site-logo col-6"><a href="#"><img src="images/logo_cc.png" alt="CareerConnector" style="width:235px;
            height: 50px;
            margin: -19px;"></a></div>

                     <nav class="mx-auto site-navigation">
                        <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                            <li><a href="index_EMP.jsp">Home</a></li>
                            <li><a href="postjob_EMP.jsp">Post Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_EMP.jsp">Team</a></li>
                                    <li><a href="TESTI_EMP.jsp">Testimonials</a></li>
                                    <li><a href="Terms_EMP.jsp">Terms</a></li>
                                    <li><a href="FAQ_EMP.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_EMP.jsp" class="active">Contact Us</a></li>
                             <li style = "color : #fff;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <% if(ename1 != null){
                        		out.println("Hello," + ename1);
                        		}  %></li>
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div>
                                <a href="Dash_EMP.jsp"><button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"
                                    type="button" id="dash" style="margin-right: 10px;">
                                    Dashboard
                                </button></a>
                            </div>
                            <div>
                                <a href="logout_EMP.jsp"><button class="btn btn-primary border-width-2 d-none d-lg-inline-block"
                                    type="button" id="signupDropdown" style="margin-right: 10px; background-color:rgb(36 106 175); border-color:rgb(36 106 175);">
                                    Logout
                                </button></a>
                            </div>
                        </div>
                        <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                class="icon-menu h3 m-0 p-0 mt-2"></span>
                        </a>
                    </div>
                                </div>
            </div>
        </header>
                             <%} else {%>
                        <header class="site-navbar mt-3">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="site-logo col-6"><a href="#"><img src="images/logo_cc.png" alt="CareerConnector" style="width:235px;
            height: 50px;
            margin: -19px;"></a></div>

                     <nav class="mx-auto site-navigation">
                        <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                            <li><a href="index_EMP.jsp">Home</a></li>
                            <li><a href="postjob_EMP.jsp">Post Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_EMP.jsp">Team</a></li>
                                    <li><a href="TESTI_EMP.jsp">Testimonials</a></li>
                                    <li><a href="Terms_EMP.jsp">Terms</a></li>
                                    <li><a href="FAQ_EMP.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_EMP.jsp" class="active">Contact Us</a></li>
                             <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        		
                             </li>
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div class="dropdown">
                                <button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block dropdown-toggle"
                                    type="button" id="signupDropdown" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false" style="margin-right: 10px;">
                                    Sign Up
                                </button>                              
                                <div class="dropdown-menu" aria-labelledby="signupDropdown">
                                    <a class="dropdown-item" href="REGISTER (EMP).jsp"
                                        style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As an Employer</a>
                                    <a class="dropdown-item" href="REGISTER_Job Seeker.jsp"
                                        style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As a JobSeeker</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="btn btn-primary border-width-2 d-none d-lg-inline-block dropdown-toggle"
                                    type="button" id="signupDropdown" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"
                                    style="margin-right: 10px; background-color:rgb(36 106 175); border-color:rgb(36 106 175);">
                                    Log In
                                </button>
                                <div class="dropdown-menu" aria-labelledby="loginDropdown">
                                    <a class="dropdown-item" href="login_EMP.jsp" style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As an Employer</a>
                                    <a class="dropdown-item" href="login_JS.jsp" style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As a JobSeeker</a>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                class="icon-menu h3 m-0 p-0 mt-2"></span>
                        </a>
                    </div>
                </div>
            </div>
        </header>
				<%}%>
				<section class="section-hero overlay inner-page bg-image"
            style="background-image: url('images/hero_1_2.jpg'); opacity: 0.7; padding : 15px; margin-top:-20px" id="home-section">
        <div class="container">
        
       
          <div class="row">
              <div class="col-md-7">
                  <h1 class="text-white font-weight-bold">Dashboard</h1>
                  <div class="custom-breadcrumbs">
                      <a href="index_JS.jsp"><b style="color:white;">Home</b></a> <span class="mx-2 slash">/</span>
                      <span class="text-white"><strong>Dashboard</strong></span>
                  </div>
              </div>
          </div>
      </div>
      </section>
                  <div class="col-lg-12">
                     <div class="card z-depth-3">
                      <div class="card-body">
                      <ul class="nav nav-pills nav-pills-primary nav-justified">
                          <li class="nav-item">
                              <a href="Dash_EMP.jsp" data-target="#profile" data-toggle="pill" class="nav-link active show" style="background-color: rgb(36 106 175);"><span class="hidden-xs" style = "color : #fff;">Profile</span></a>
                          </li>
                          <li class="nav-item">
                              <a href="Dash_EMP_edit.jsp" data-target="#edit" data-toggle="pill" class="nav-link"><span  style = "color : black;">Edit</span></a>
                          </li>
                      </ul>
                      
                            <form action="#">

                                <% String ename=null; 
                                String desig=null;
                                String e_email=null;                             
                                String cname=null;
                                String comp_ln=null;
                                String ctype=null; 
                                String clocation=null;
                                String cemail=null;
                                String cphone=null;
                                String comp_web=null;
                                String domains=null;
                                String comp_about=null; 
                                   
                                   PreparedStatement pstm=null; 
                                   ResultSet rs=null;
                                   try {                                	   
                                	con=ConnectionProvider.createC();
                                    pstm=con.prepareStatement("select *from employer where e_email=?"); 
                                    pstm.setString(1, str);
                                    rs=pstm.executeQuery(); 
                                    
                                    while(rs.next()) {
                                    	ename=rs.getString(1);
                                    	desig=rs.getString(11);
                                    	e_email=rs.getString(2);                                  	
                                    	cname=rs.getString(3); 
                                        comp_ln=rs.getString(12);
                                    	ctype=rs.getString(4);
                                    	clocation=rs.getString(5);
                                    	cemail=rs.getString(6);
                                    	cphone=rs.getString(7);
                                    	comp_web=rs.getString(14);
                                    	domains=rs.getString(15);
                                    	comp_about=rs.getString(16);
                                    }	
                                   
                                    } catch (Exception e) {
                                    }

                                    %>  	
                                    	<div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label" style="margin-top:20px">Name</label>
                                        <div class="col-lg-9">
                                            <p style="margin-top:20px"><%=ename%></p>
                                        </div>
                                        </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Designation</label>
                                        <div class="col-lg-9">
                                            <p><%=desig%> </p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Email</label>
                                        <div class="col-lg-9">
                                            <p><%=e_email%> </p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-lg-3 col-form-label form-control-label">Company Name</label>
                                      <div class="col-lg-9">
                                          <p><%=cname%> </p>
                                      </div>
                                  </div>
                                  <div class="form-group row">
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Company Type</label>
                                        <div class="col-lg-9">
                                            <p><%=ctype%> </p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-lg-3 col-form-label form-control-label">Company LinkedIn ID</label>
                                      <div class="col-lg-9">
                                          <p><%=comp_ln%> </p>
                                      </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Company Address</label>
                                    <div class="col-lg-9">
                                        <p><%=clocation%> </p>
                                    </div>
                                </div>
                              
                                    <div class="form-group row">
                                      <label class="col-lg-3 col-form-label form-control-label">Company Email</label>
                                      <div class="col-lg-9">
                                        <p><%=cemail %></p>
                                      </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Company Phone No.</label>
                                    <div class="col-lg-9">
                                      <p><%=cphone%></p>
                                    </div>
                                </div>
                                <div class="form-group row">
                                  <label class="col-lg-3 col-form-label form-control-label">Company Website</label>
                                  <div class="col-lg-9">
                                      <p><%=comp_web%></p>
                                  </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label">Domains</label>
                                <div class="col-lg-9">
                                  <p><%=domains%></p>
                                </div>
                            </div>
                            <div class="form-group row">
                              <label class="col-lg-3 col-form-label form-control-label">Company About</label>
                              <div class="col-lg-9">
                                <p><%=comp_about%></p>
                              </div>
                          </div>
                                  
                          <form action="#">
   <div class="form-group row">
      <label class="col-lg-3 col-form-label form-control-label">Job Posted</label>
   </div>
   
   <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
      <tr>

                                <th>
                                    <center>Position</center>
                                </th>
                                <th>
                                    <center>Applicant Name</center>
                                </th>
                                <th>
                                    <center>Applicant Phone No.</center>
                                </th>
                                <th>
                                    <center>Applicant Email</center>
                                </th>
                                <th>
                                    <center>Start Date</center>
                                </th>
                                <th>
                                    <center>Interview Date</center>
                                </th>
                                <th>
                                    <center>Resume</center>
                                </th>
                            </tr>
          <% 
          String name=null;
          String phn=null; 
          String email=null;
          String pos=null; 
          String strt=null;
          String invw=null;
          String res=null;  
                                	
                                  
                                   try { 
                                	con=ConnectionProvider.createC();
                                	pstm = con.prepareStatement("SELECT * FROM applyjob WHERE LOWER(pos) IN (SELECT LOWER(title) FROM postjob WHERE email = ?)");



                                    pstm.setString(1, str);
                                    rs=pstm.executeQuery(); 
                                    while(rs.next()) { 
                                    	
                                    	name=rs.getString(1);
                                    	phn=rs.getString(2);
                                    	email=rs.getString(3);
                                        pos=rs.getString(4);
                                        strt=rs.getString(5); 
                                        invw=rs.getString(6);
                                        res=rs.getString(7);
                                    	
                                        out.println("<tr>");
                                        out.println("<td>");
                                        out.println(pos);
                                        out.println("</td>");
                                        
                                        
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
                                        out.println(strt);
                                        out.println("</td>");
                                        
                                        out.println("<td>");
                                        out.println(invw);
                                        out.println("</td>");

                                        out.println("<td>");
                                        out.println(res);
                                        out.println("<a href='/CareerConnector/ApplyResume/" + res + "'><input type='button' value='View Resume' class='btn btn-primary btn-md text-white' style='margin-left:30px; background-color: rgb(36 106 175);'></a>");
                                        out.println("</td>");
                                        out.println("</tr>");

                                     
                                       
                                    }

                                    } catch (Exception e) {
                                    }

                                    %>
      </table>
   </div>
</form>
                                       	




                    
                              <!--/row-->
                          </div>
                       
                </div>
                </div>
                  
              </div>
          </div>

</body>

</html>
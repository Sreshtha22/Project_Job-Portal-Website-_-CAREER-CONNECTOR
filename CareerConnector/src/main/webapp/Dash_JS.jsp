<%@page import="org.model.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
    <%@page import = "org.mis.ConnectionProvider" %>
    <%String str = (String) session.getAttribute("Email : ");
Connection con = null;
PreparedStatement ps = null;
ResultSet rst = null;
String jname = null;

try {
    con = ConnectionProvider.createC();
    ps = con.prepareStatement("select * from jobseeker where email=?");
    ps.setString(1, str);

    rst = ps.executeQuery();

    if (rst.next()) {
        jname = rst.getString(1);
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
    <title>Jobseeker Dashboard</title>
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
                            <li><a href="index_JS.jsp">Home</a></li>
                            <li><a href="JOBS_JS.jsp">Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_JS.jsp">Team</a></li>
                                    <li><a href="TESTI_JS.jsp">Testimonials</a></li>
                                    <li><a href="Terms_JS.jsp">Terms</a></li>
                                    <li><a href="FAQ_JS.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_JS.jsp" class="active">Contact Us</a></li>
                             <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <% if(jname != null){
                        		out.println("Hello," + jname);
                        		}  %></li>
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div>
                                <a href="Dash_JS.jsp"><button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"
                                    type="button" id="dash" style="margin-right: 10px;">
                                    Dashboard
                                </button></a>
                            </div>
                            <div>
                                <a href="logout_JS.jsp"><button class="btn btn-primary border-width-2 d-none d-lg-inline-block"
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
                            <li><a href="index_JS.jsp">Home</a></li>
                            <li><a href="JOBS_JS.jsp">Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_JS.jsp">Team</a></li>
                                    <li><a href="TESTI_JS.jsp">Testimonials</a></li>
                                    <li><a href="Terms_JS.jsp">Terms</a></li>
                                    <li><a href="FAQ_JS.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_JS.jsp" class="active">Contact Us</a></li>
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
                              <a href="Dash_JS.jsp" data-target="#profile" data-toggle="pill" class="nav-link active show" style="background-color: rgb(36 106 175);"><span class="hidden-xs" style = "color : #fff;">Profile</span></a>
                          </li>
                          <li class="nav-item">
                              <a href="Dash_JS_edit.jsp" data-target="#edit" data-toggle="pill" class="nav-link"><span  style = "color : black;">Edit</span></a>
                          </li>
                      </ul>
                      
                            <form action="#">

                                <% String profile=null; 
                                String name=null;
                                String email=null;                             
                                String phnno=null;
                                String website=null;
                                String ln_id=null; 
                                String github=null;
                                String resume_name=null;
                                String bio=null;
                                String qualification=null;
                                String skills=null;
                                String exp=null;
                                String projects=null; 
                                String achieve=null; 
                                       
                                   Connection conn=null;
                                   PreparedStatement pstm=null; 
                                   ResultSet rs=null;
                                   try { 
                                	conn=ConnectionProvider.createC();
                                    pstm=conn.prepareStatement("select * from jobseeker where email=?"); 
                                    pstm.setString(1, str);
                                    rs=pstm.executeQuery(); 
                                    
                                    while(rs.next()) { 
                                    	
                                    	profile=rs.getString(7);
                                    	name=rs.getString(1);
                                    	email=rs.getString(3);                                  	
                                    	phnno=rs.getString(2); 
                                    	website=rs.getString(8);
                                    	ln_id=rs.getString(9);
                                    	github=rs.getString(10);
                                    	resume_name = rs.getString(6);
                                    	bio=rs.getString(12);
                                    	qualification=rs.getString(13);
                                    	skills=rs.getString(14);
                                    	exp=rs.getString(15);
                                    	projects=rs.getString(16);
                                    	achieve=rs.getString(17);
                                   }
                                    	
                                   
                                    } catch (Exception e) {
                                    }

                                    %>  	
                                    	<div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label" style="margin-top:20px">Profile</label>
                                        <div class="col-lg-9">
                                            <p style="margin-top:20px"><%=profile%></p>
                                        </div>
                                        </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Name</label>
                                        <div class="col-lg-9">
                                            <p><%=name%> </p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Email</label>
                                        <div class="col-lg-9">
                                            <p><%=email%> </p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-lg-3 col-form-label form-control-label">Phone No.</label>
                                      <div class="col-lg-9">
                                          <p><%=phnno%> </p>
                                      </div>
                                  </div>
                                  <div class="form-group row">
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Website</label>
                                        <div class="col-lg-9">
                                            <p><%=website%> </p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-lg-3 col-form-label form-control-label">LinkedIn ID</label>
                                      <div class="col-lg-9">
                                          <p><%=ln_id%> </p>
                                      </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Github Link</Link></label>
                                    <div class="col-lg-9">
                                        <p><%=github%> </p>
                                    </div>
                                </div>
                                <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Resume</label>
                                        <div class="col-lg-9">
                                        <a href='/CareerConnector/resume/<%=resume_name%>'><input type='button' value='View Resume' class='btn btn-primary btn-md text-white' style=' background-color: rgb(36 106 175);'></a>
                                            
                                        </div>
                                        </div>
                                    <div class="form-group row">
                                      <label class="col-lg-3 col-form-label form-control-label">Bio</label>
                                      <div class="col-lg-9">
                                        <p><%=bio %></p>
                                      </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Qualification</label>
                                    <div class="col-lg-9">
                                      <p><%=qualification%></p>
                                    </div>
                                </div>
                                <div class="form-group row">
                                  <label class="col-lg-3 col-form-label form-control-label">Skills</label>
                                  <div class="col-lg-9">
                                      <p><%=skills%></p>
                                  </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label">Experience</label>
                                <div class="col-lg-9">
                                  <p><%=exp%></p>
                                </div>
                            </div>
                            <div class="form-group row">
                              <label class="col-lg-3 col-form-label form-control-label">Project</label>
                              <div class="col-lg-9">
                                <p><%=projects%></p>
                              </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Achievement</label>
                            <div class="col-lg-9">
                              <p><%=achieve%></p>
                            </div>
                        </div>
                        
                        <form action="#">
   <div class="form-group row">
      <label class="col-lg-3 col-form-label form-control-label">Job Applied to</label>
   </div>
   
   <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
          <% 
                                   String pos1=null; 
                                	
                                  
                                   try { 
                                	conn=ConnectionProvider.createC();
                                    pstm=conn.prepareStatement("select *from applyjob where semail=?");
                                    pstm.setString(1, str);
                                    rs=pstm.executeQuery(); 
                                    while(rs.next()) { 
                                    	
                                        pos1=rs.getString(4);
                                       
                                        
                                        
                                        out.println("<tr>");
                                        out.println("<td>");
                                        out.println("Position Applied For");
                                        out.println("</td>");
                                        out.println("<td>");
                                        out.println(pos1);
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
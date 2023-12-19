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
    <title>Jobseeker edit details</title>
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
                            <li><a href="#">Jobs</a></li>
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
                  <h1 class="text-white font-weight-bold">Dashboard-Edit</h1>
                  <div class="custom-breadcrumbs">
                      <a href="index_JS.jsp"><b style="color:white;">Home</b></a> <span class="mx-2 slash">/</span>
                      <span class="text-white"><strong>Dashboard-Edit</strong></span>
                  </div>
              </div>
          </div>
      </div>
      </section>
        </section>
                    <div class="col-lg-12">
                       <div class="card z-depth-3">
                        <div class="card-body">
                        <ul class="nav nav-pills nav-pills-primary nav-justified">
                            <li class="nav-item">
                                <a href="Dash_JS.jsp" data-target="#profile" data-toggle="pill" class="nav-link"><span class="hidden-xs"  style = "color : black;">Profile</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="Dash_JS_edit.jsp" data-target="#edit" data-toggle="pill" class="nav-link active show"  style="background-color: rgb(36 106 175);"> <span class="hidden-xs" style = "color : #fff;">Edit</span></a>
                            </li>
                        </ul>
                        
                        <%
String email=request.getParameter("email");
Connection conn;
PreparedStatement pstm;
ResultSet rs;



String profile=null;
String name=null;
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


try{
	conn=ConnectionProvider.createC();
    pstm=conn.prepareStatement("select * from jobseeker where email=?"); 
    pstm.setString(1, str);
    rs=pstm.executeQuery(); 
    
    while(rs.next() ) {
    	
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
%>
                        
            <form action="Dash_Js" method="post" enctype="multipart/form-data" style="padding-top: 20px;">
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Change profile</label>
                    <div class="col-lg-9">
                        <textarea name="profile" id="profile" cols="30" rows="3" class="form-control"
                  placeholder="Write your profile summary" value=""><%=profile%></textarea>
                    </div>
                    </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Name</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" id="name" name="name" value="<%=name%>" placeholder="Enter your name">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Email</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="email" id="email" name="email" value="<%=email%>" placeholder="Enter your email id">
                    </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-3 col-form-label form-control-label">Phone No.</label>
                  <div class="col-lg-9">
                      <input class="form-control" type="tel" minlength="10" maxlength="10" pattern="[0-9]{10}" title="Please enter a valid phone number" id="phnno" name="phnno" value="<%=phnno%>" placeholder="Enter your phone no">
                  </div>
              </div>
              <div class="form-group row">
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Website</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="url" id="website" name="website" value="<%=website%>" placeholder="Enter your personal website">
                    </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-3 col-form-label form-control-label">LinkedIn ID</label>
                  <div class="col-lg-9">
                      <input class="form-control" type="url" id="ln_id" name="ln_id" value="<%=ln_id%>" placeholder="Enter your LinkedIn ID">
                  </div>
              </div>
              <div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label">Github Link</Link></label>
                <div class="col-lg-9">
                    <input class="form-control" type="url" id="github" name="github" value="<%=github%>" placeholder="Enter your Github link">
                </div>
            </div>
            <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Upload Resume</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="file" id="resume_name" name="resume_name" value="<%=resume_name%>"  required>
                    </div>
                    </div>
                <div class="form-group row">
                  <label class="col-lg-3 col-form-label form-control-label">Bio</label>
                  <div class="col-lg-9">
                    <textarea name="bio" id="bio" cols="30" rows="3" class="form-control"
                    placeholder="Write about yourself" value=""><%=bio %></textarea>
                  </div>
              </div>
              <div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label">Qualification</label>
                <div class="col-lg-9">
                  <textarea name="qualification" id="qualification" cols="30" rows="3" class="form-control"
                  placeholder="Write about your qualifications" value=""><%=qualification%></textarea>
                </div>
            </div>
            <div class="form-group row">
              <label class="col-lg-3 col-form-label form-control-label">Skills</label>
              <div class="col-lg-9">
                  <textarea name="skills" id="skills" cols="30" rows="3" class="form-control"
                    placeholder="Write about your Skills" value=""><%=skills%></textarea>
              </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label form-control-label">Experience</label>
            <div class="col-lg-9">
              <textarea name="exp" id="" cols="30" rows="3" class="form-control"
              placeholder="Write about your Experiences" value=""><%=exp%></textarea>
            </div>
        </div>
        <div class="form-group row">
          <label class="col-lg-3 col-form-label form-control-label">Project</label>
          <div class="col-lg-9">
            <textarea name="project" id="project" cols="30" rows="3" class="form-control"
            placeholder="Write about your Projects" value=""><%=projects%></textarea>
          </div>
      </div>
      <div class="form-group row">
        <label class="col-lg-3 col-form-label form-control-label">Achievement</label>
        <div class="col-lg-9">
          <textarea name="achieve" id="achieve" cols="30" rows="3" class="form-control"
          placeholder="Write about your Achievements" value=""><%=achieve%></textarea>
        </div>
    </div>
      
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label"></label>
                    <div class="col-lg-9">
                        <input type="reset" class="btn btn-secondary" value="Cancel">
                        <input type="submit" class="btn btn-primary" value="Save Changes" style="background-color: rgb(36 106 175); color : #fff; border-color: rgb(36 106 175);">
                    </div>
                </div>
            </form>
<%
            }catch (Exception e){}
%>
        </div>
    </div>
</div>
</div>
</div>

</div>
</div>
</body>
</html>
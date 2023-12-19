<%@page import="org.model.bean.UserEmpBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
    <%@page import = "org.mis.ConnectionProvider" %>
<%String str = (String) session.getAttribute("Email : ");
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
String ename = null;

try {
    conn = ConnectionProvider.createC();
    pstm = conn.prepareStatement("select * from employer where e_email=?");
    pstm.setString(1, str);

    rs = pstm.executeQuery();

    if (rs.next()) {
        ename = rs.getString(1);
    }
} catch (SQLException e) {
    e.printStackTrace();  
} catch (Exception e) {
    e.printStackTrace();  
} finally {
    
    try {
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();  
    }
}


%>
<!doctype html>
<html lang="en">
  <head>
    <title>&mdash;Testimonials</title>
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
                             <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        		<% if(ename != null){
                        		out.println("Hello," + ename);
                        		}  %> 
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div>
                                <a href="Dash_EMP.jsp"><button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"
                                    type="button" id="signupDropdown" style="margin-right: 10px;">
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
                             <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                            
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
            style="background-image: url('images/hero_1_2.jpg'); opacity: 0.7; padding : 15px;" id="home-section">
    <div class="container">
      <div class="row">
          <div class="col-md-7">
              <h1 class="text-white font-weight-bold">Testimonials</h1>
              <div class="custom-breadcrumbs">
                  <a href="index_EMP.jsp"><b style="color:white;">Home</b></a> <span class="mx-2 slash">/</span>
                  <span class="text-white"><strong>Testimonials</strong></span>
              </div>
          </div>
      </div>
  </div>
  </section>
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-4">
            <div class="block__87154">
              <blockquote>
                  <p class = "txt_aln">&ldquo;We have been using Career Connector for our recruitment needs for the past year, and it has been a game-changer for our hiring process. 
                    The platform is user-friendly interface, advanced search filters, and candidate matching algorithms have significantly reduced our time-to-hire.
                     We have successfully filled multiple positions with highly qualified candidates who we might not have found through traditional job boards. 
                    Career Connector is a valuable partner in our quest to build a talented workforce.&ldquo;</p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4"><img src="images/person-sharp.jpg" class="image" alt="Image" class="img-fluid"></figure>
                <div>
                  <h3>Swati Chopra</h3>
                  <span class="position">HR Manager, Adidas</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-4">
            <div class="block__87154">
              <blockquote>
                <p class = "txt_aln">&ldquo;Career Connector has become an indispensable tool for our recruitment team. 
                  It streamlines the entire hiring process, from posting job openings to screening candidates and scheduling interviews. 
                  The candidate profiles provide detailed insights into their skills, experience, and compatibility with our job requirements. 
                  This platform has not only saved us time but has also improved the quality of our hires. 
                  We highly recommend Career Connector to any company looking to simplify and enhance their recruitment efforts.&rdquo;</p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4"><img src="images/testi7.jpg" class="image" alt="Image" class="img-fluid"></figure>
                <div>
                  <h3>Ishita Chowbey</h3>
                  <span class="position">Head of the HR department, Paypal</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-4">
            <div class="block__87154">
              <blockquote>
                <p class = "txt_aln">&ldquo;As a recruiter, I've worked with numerous job portals, but Career Connector stands out for its commitment to both employers and job seekers. 
                  The platform offers a wide range of features that make the recruitment process more efficient and effective. 
                  The ability to customize job listings, set up automatic notifications, and access a pool of pre-screened candidates has made our job easier. 
                  Career Connector truly understands the needs of recruiters and provides a platform that delivers results.&rdquo;</p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4"><img src="images/person-sharp.jpg" class="image" alt="Image" class="img-fluid"></figure>
                <div>
                  <h3>Anjali Mahato</h3>
                  <span class="position">Recruitment Manager, Amazon</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-4">
            <div class="block__87154">
              <blockquote>
                <p class = "txt_aln">&ldquo;Career Connector has been a game-changer for our startup. 
                  With a limited HR team and tight budgets, finding the right talent was challenging. This platform allowed us to tap into a network of skilled professionals actively seeking opportunities. 
                  The easy-to-use interface and affordable pricing made it accessible to us. 
                  We've successfully hired exceptional team members through Career Connector, and it has played a significant role in our growth.&rdquo;</p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4"><img src="images/testi8.jpg" class="image" alt="Image" class="img-fluid"></figure>
                <div>
                  <h3>Debashish Dutta</h3>
                  <span class="position">Director of Human Resources, Sony</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-4">
            <div class="block__87154">
              <blockquote>
                <p class = "txt_aln">&ldquo;Our experience with Career Connector has been nothing short of exceptional. 
                  The platform's robust candidate database, applicant tracking system, and analytics tools have revolutionized our hiring process. 
                  We can now make data-driven decisions, track our recruitment KPIs, and continuously improve our talent acquisition strategy. 
                  Career Connector has become an invaluable asset in helping us build a strong, diverse, and high-performing team.&rdquo;</p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4"><img src="images/person-sharp.jpg" class="image" alt="Image" class="img-fluid"></figure>
                <div>
                  <h3>Rohit Dasgupta</h3>
                  <span class="position">Recruiter, Sprint</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-4">
            <div class="block__87154">
              <blockquote>
                <p class = "txt_aln">&ldquo;At Career Connector, they truly understand the challenges faced by recruiters. 
                  Their platform is designed with the recruiter's perspective in mind, offering a seamless experience from posting jobs to evaluating candidates. 
                  The candidate profiles are comprehensive, making it easy to shortlist candidates quickly. 
                  Career Connector has become our go-to platform for talent acquisition, and we have seen a noticeable improvement in the quality of candidates we attract.&rdquo;</p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4">
                  <img src = "images/person-sharp.jpg" class="image" alt="Image" class="img-fluid">
                </figure>
                <div>
                  <h3>Arjun Basu</h3>
                  <span class="position">Head of Talent Acquisition, Paytm</span>
                </div>
              </div>
            </div>
          </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <footer class="site-footer" style="background-color:black;">

    <a href="#top" class="smoothscroll scroll-top">
        <span class="icon-keyboard_arrow_up"></span>
    </a>

    <div class="container" style="padding: 72px 10px;">
        <div class="row mb-5">
            <div class="col-6 col-md-3 mb-4 mb-md-0">
                <img src="images/logo_cc.png" alt="" style="width:235px;
                height: 50px;
                margin: -19px;"><br><br>
                <p style="margin-left: -10px; text-align: left; color: rgba(255, 255, 255, 0.5);">A reliable
                    platform that links talents with opportunities for both businesses and job seekers.</p>
                <h3 style="margin-left: -10px;">Connect with us :</h3>
                <div class="footer-social" style="margin-left: -10px;">
                    <a href="https://www.facebook.com" target="_blank"><span class="icon-facebook"></span></a>
                    <a href="https://www.twitter.com" target="_blank"><span class="icon-twitter"></span></a>
                    <a href="https://www.instagram.com" target="_blank"><span class="icon-instagram"></span></a>
                    <a href="https://www.linkedin.com" target="_blank"><span class="icon-linkedin"></span></a>
                </div>
            </div>
            <div class="col-6 col-md-3 mb-4 mb-md-0">
                <h3>Trending Technologies</h3>
                <ul class="list-unstyled">
                    <li><a href="https://www.google.com/search?q=web+design&rlz=1C1RXQR_enIN1030IN1030&oq=web+des&gs_lcrp=EgZjaHJvbWUqDAgBEAAYQxixAxiKBTIGCAAQRRg5MgwIARAAGEMYsQMYigUyDAgCEAAYFBiHAhiABDIKCAMQABixAxiABDIJCAQQABhDGIoFMg8IBRAAGBQYhwIYsQMYgAQyBggGEEUYQTIGCAcQRRg80gEINDEzNmowajeoAgCwAgA&sourceid=chrome&ie=UTF-8" target="_blank">Web Design</a></li>
                    <li><a href="https://www.google.com/search?q=artificial+intelligence&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKlfCQkFldKe54u72W7cM3RJTosANg%3A1695846602750&ei=ypAUZcyzLdSgseMP-7SviAs&oq=arti&gs_lp=Egxnd3Mtd2l6LXNlcnAiBGFydGkqAggDMgcQABiKBRhDMgcQABiKBRhDMgcQABiKBRhDMgoQABiKBRixAxhDMg0QABiKBRixAxiDARhDMgcQABiKBRhDMgcQABiKBRhDMgcQLhiKBRhDMgUQABiABDIIEAAYgAQYsQNI2i5QAFiSEXAAeAGQAQCYAaABoAHZBKoBAzAuNLgBA8gBAPgBAcICBxAjGIoFGCfCAhMQLhiKBRixAxiDARjHARjRAxhDwgILEAAYigUYsQMYgwHCAgsQABiABBixAxiDAcICBRAuGIAEwgIEECMYJ8ICBxAuGIoFGCfCAg0QLhiKBRixAxiDARhD4gMEGAAgQYgGAQ&sclient=gws-wiz-serp" target="_blank">Artificial Intelligence</a></li>
                    <li><a href="https://www.google.com/search?q=medical+robotics&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKniBMUZv6Ch6U68xLtF8hmywcj90Q%3A1695846641236&ei=8ZAUZYuODqO5seMPqsaRkAk&ved=0ahUKEwjLypOF0cuBAxWjXGwGHSpjBJIQ4dUDCBA&uact=5&oq=medical+robotics&gs_lp=Egxnd3Mtd2l6LXNlcnAiEG1lZGljYWwgcm9ib3RpY3MyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAESP84UABYqjJwAHgBkAEAmAGUAaAB3RCqAQQwLjE2uAEDyAEA-AEBwgIHEC4YigUYJ8ICBxAjGIoFGCfCAgcQABiKBRhDwgILEAAYgAQYsQMYgwHCAgsQLhiDARixAxiABMICDRAAGIoFGLEDGIMBGArCAggQABiABBixA8ICFBAuGIoFGJcFGNwEGN4EGOAE2AEBwgINEAAYgAQYFBiHAhixA8ICDRAuGIoFGMcBGNEDGEPCAgUQLhiABMICDRAAGIoFGLEDGIMBGEPCAhAQABiABBgUGIcCGLEDGIMBwgIKEAAYgAQYFBiHAsICCxAAGIoFGLEDGIMB4gMEGAAgQYgGAboGBggBEAEYFA&sclient=gws-wiz-serp" target="_blank">Medical Robotics</a></li>
                    <li><a href="https://www.google.com/search?q=python&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKnuqe3Np476Bvs1hfVg5FyrfjoFIQ%3A1695846685799&ei=HZEUZcC2MLWLseMP0KyEuAg&ved=0ahUKEwiAubOa0cuBAxW1RWwGHVAWAYcQ4dUDCBA&uact=5&oq=python&gs_lp=Egxnd3Mtd2l6LXNlcnAiBnB5dGhvbjIHECMYigUYJzIHECMYigUYJzIEECMYJzIHEAAYigUYQzIIEC4YigUYkQIyDhAAGIoFGLEDGIMBGJECMgcQLhiKBRhDMgcQABiKBRhDMgcQABiKBRhDMgoQABiKBRixAxhDSOYUUABYjhJwAHgBkAEAmAGoAaABwwaqAQMwLja4AQPIAQD4AQHCAggQABiKBRiRAsICBRAAGIAEwgILEAAYgAQYsQMYgwHCAggQABiABBixA-IDBBgAIEGIBgE&sclient=gws-wiz-serp" target="_blank">Python</a></li>
                    <li><a href="https://www.google.com/search?q=virtual+reality&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKmcrleg5ysig8WYd7Jiuh_KfxBjQw%3A1695846717455&ei=PZEUZeq1G76fseMP5Yy9qAE&oq=virtual+rea&gs_lp=Egxnd3Mtd2l6LXNlcnAiC3ZpcnR1YWwgcmVhKgIIADIOEAAYigUYsQMYgwEYkQIyCBAAGIoFGJECMggQABiKBRiRAjIIEAAYgAQYsQMyCxAAGIAEGLEDGIMBMg4QABiKBRixAxiDARiRAjIIEAAYigUYkQIyBRAAGIAEMgsQABiABBixAxiDATIFEAAYgARIoCxQAFjnIXAAeAGQAQCYAZUBoAHsC6oBBDAuMTG4AQPIAQD4AQHCAgcQIxiKBRgnwgIHEAAYigUYQ8ICDBAjGIoFGCcYRhj_AcICChAAGIoFGLEDGEPCAhYQABiKBRhGGP8BGJcFGIwFGN0E2AEBwgINEAAYigUYsQMYgwEYQ8ICCxAuGIAEGLEDGIMBwgILEAAYigUYsQMYgwHCAgkQABiKBRgKGEPiAwQYACBBiAYBugYGCAEQARgT&sclient=gws-wiz-serp" target="_blank">Virtual Reality</a></li>
                    <li><a href="https://www.google.com/search?q=cloud+computing&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKkvGZZKul_qdlZJ1-0eWKHic9R2qQ%3A1695846745844&ei=WZEUZdaWM6_useMPnc-F4AM&oq=clo&gs_lp=Egxnd3Mtd2l6LXNlcnAiA2NsbyoCCAEyBBAjGCcyDRAAGIoFGLEDGIMBGEMyDRAuGIoFGMcBGNEDGEMyChAAGIoFGMkDGEMyCBAAGIoFGJIDMggQABiKBRiSAzIHEAAYigUYQzIIEAAYgAQYsQMyBxAAGIoFGEMyChAAGIoFGLEDGENI_hNQAFjiA3AAeAGQAQCYAYwBoAGVA6oBAzAuM7gBA8gBAPgBAcICBxAjGIoFGCfCAgsQABiABBixAxiDAcICCxAAGIoFGLEDGIMBwgITEC4YigUYsQMYgwEYxwEY0QMYQ-IDBBgAIEGIBgE&sclient=gws-wiz-serp" target="_blank">Cloud Computing</a></li>
                </ul>
            </div>
            <div class="col-6 col-md-3 mb-4 mb-md-0">
                <h3>Trending Job Roles</h3>
                <ul class="list-unstyled">
                    <li><a href="https://www.google.com/search?q=Data+Scientist%2FAnalyst&rlz=1C1RXQR_enIN1030IN1030&oq=Data+Scientist%2FAnalyst&aqs=chrome..69i57j0i22i30l6j0i15i22i30j0i22i30l2.1136j0j7&sourceid=chrome&ie=UTF-8"
                            target="_blank">Data Scientist/Analyst</a></li>
                    <li><a href="https://www.google.com/search?q=Software+Developer%2FEngineer&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKnwvqSFplnqHfBxW41CWFSfqMIOPg%3A1694677523811&ei=E7oCZeqyMJjlseMPpN2r4A0&ved=0ahUKEwiqiMLezamBAxWYcmwGHaTuCtwQ4dUDCBA&uact=5&oq=Software+Developer%2FEngineer&gs_lp=Egxnd3Mtd2l6LXNlcnAiG1NvZnR3YXJlIERldmVsb3Blci9FbmdpbmVlcjIFEAAYgAQyBRAAGIAEMgUQABiABDIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeSOoQUABYhwdwAXgBkAEAmAHvAaAB7wGqAQMyLTG4AQPIAQD4AQH4AQKoAhTCAgcQIxjqAhgnwgINEC4YxwEY0QMY6gIYJ8ICFhAAGAMYjwEY5QIY6gIYtAIYjAPYAQHCAhYQLhgDGI8BGOUCGOoCGLQCGIwD2AEB4gMEGAAgQYgGAboGBggBEAEYCw&sclient=gws-wiz-serp"
                            target="_blank">Software Developer/Engineer</a></li>
                    <li><a href="https://www.google.com/search?q=Machine+Learning+Engineer&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKm_BdxcZ8-LyxPCTE3rUrUSDe7B_g%3A1694677544932&ei=KLoCZYehOI7dseMPzZSxkAY&ved=0ahUKEwiH1cvozamBAxWObmwGHU1KDGIQ4dUDCBA&uact=5&oq=Machine+Learning+Engineer&gs_lp=Egxnd3Mtd2l6LXNlcnAiGU1hY2hpbmUgTGVhcm5pbmcgRW5naW5lZXIyCxAAGIoFGLEDGJECMgcQABiKBRhDMggQABiKBRiRAjIIEAAYigUYkQIyCxAAGIoFGLEDGJECMgUQABiABDIFEAAYgAQyBxAAGIoFGEMyBRAAGIAEMgUQABiABEj7GVCIA1iQE3ACeAGQAQSYAbkCoAHYC6oBBTItNS4xuAEDyAEA-AEB-AECqAIUwgIKEAAYRxjWBBiwA8ICBxAjGIoFGCfCAgYQABgWGB7CAgcQIxjqAhgnwgINEC4YxwEY0QMY6gIYJ8ICFhAAGAMYjwEY5QIY6gIYtAIYjAPYAQHCAhYQLhgDGI8BGOUCGOoCGLQCGIwD2AEB4gMEGAAgQYgGAZAGCLoGBggBEAEYCw&sclient=gws-wiz-serp"
                            target="_blank">Machine Learning Engineer</a></li>
                    <li><a href="https://www.google.com/search?q=Cybersecurity+Analyst&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKkAqLhfZtCLkqGNpcic5MkCbR0RxA%3A1694677584525&ei=ULoCZd-8H_STseMPuui4yAQ&ved=0ahUKEwjfpLz7zamBAxX0SWwGHTo0DkkQ4dUDCBA&uact=5&oq=Cybersecurity+Analyst&gs_lp=Egxnd3Mtd2l6LXNlcnAiFUN5YmVyc2VjdXJpdHkgQW5hbHlzdDILEAAYigUYsQMYkQIyCBAAGIoFGJECMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyChAAGIAEGBQYhwIyBRAAGIAEMgUQABiABEjiDFAAWABwAHgBkAEAmAHmAaAB5gGqAQMyLTG4AQPIAQD4AQL4AQHiAwQYACBBiAYB&sclient=gws-wiz-serp"
                            target="_blank">Cybersecurity Analyst</a></li>
                    <li><a href="https://www.google.com/search?q=Cloud+Computing+Specialist&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKmH3WbG3RRVxdFnlGteGTfHx42gvg%3A1694677612407&ei=bLoCZb-zGIqcseMP3bi7cA&ved=0ahUKEwi_meKIzqmBAxUKTmwGHV3cDg4Q4dUDCBA&uact=5&oq=Cloud+Computing+Specialist&gs_lp=Egxnd3Mtd2l6LXNlcnAiGkNsb3VkIENvbXB1dGluZyBTcGVjaWFsaXN0MgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeSI4GUABYAHAAeAGQAQCYAf8BoAH_AaoBAzItMbgBA8gBAPgBAvgBAeIDBBgAIEGIBgE&sclient=gws-wiz-serp"
                            target="_blank">Cloud Computing Specialist</a></li>
                    <li><a href="https://www.google.com/search?q=Healthcare+Professionals&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKlQir2Ur_Ft8plNvLZzzGZ7-x0yDQ%3A1694677640070&ei=iLoCZfXvA6_fseMP67m-gAc&ved=0ahUKEwj10_qVzqmBAxWvb2wGHeucD3AQ4dUDCBA&uact=5&oq=Healthcare+Professionals&gs_lp=Egxnd3Mtd2l6LXNlcnAiGEhlYWx0aGNhcmUgUHJvZmVzc2lvbmFsczIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgARIwxtQAFjYFXABeAGQAQCYAZgCoAGYAqoBAzItMbgBA8gBAPgBAfgBAqgCFMICBxAjGOoCGCfCAg0QLhjHARjRAxjqAhgnwgIWEAAYAxiPARjlAhjqAhi0AhiMA9gBAcICFhAuGAMYjwEY5QIY6gIYtAIYjAPYAQHiAwQYACBBiAYBugYGCAEQARgL&sclient=gws-wiz-serp"
                            target="_blank">Healthcare Professionals</a></li>
                </ul>
            </div>
            <div class="col-6 col-md-3 mb-4 mb-md-0">
                <h3>Support</h3>
                <ul class="list-unstyled">
                    <li><a href="TESTI_EMP.jsp">Testimonials</a></li>
                            <li><a href="Terms_EMP.jsp">Terms</a></li>
                            <li><a href="helpcentre_EMP.jsp">Help Centre</a></li>
                            <li><a href="FAQ_EMP.jsp">FAQ</a></li>
                            <li><a href="contact_EMP.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>

        <div class="row text-center">
            <div class="col-12">
                <p class="copyright"><small>
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved.
                    </small></p>
            </div>
        </div>
    </div>
</footer>
    <!-- SCRIPTS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/stickyfill.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/quill.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>
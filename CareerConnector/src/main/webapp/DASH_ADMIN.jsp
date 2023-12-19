<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome Admin</title>
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
    <section class="container text-dark font-weight-bold" id="services">

        <div class="row">

            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting"  style="margin: -60px;margin-top: 10px;">
                        <div class="card" style="border-radius:10px ">
                            <img src="images/jobseeker.png" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title"><a href="JobseekerView.jsp" style="color:rgb(36 106 175);"> View Jobseekers </a></h5>
                            </div>
                        </div>
                    </div>
                </a>	
            </div>

            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="view_product.jsp" style="text-decoration: none;">
                    <div class="imgsetting"  style="margin: -60px;margin-top: 10px;">
                        <div class="card" style="border-radius:10px ">
                            <img src="images/employer.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title"><a href="EmployersView.jsp" style="color:rgb(36 106 175);"> View Employers </a></h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="view_user.jsp" style="text-decoration: none;">
                    <div class="imgsetting"  style="margin: -60px;margin-top: 10px;">
                        <div class="card" style="border-radius:10px ">
                            <img src="images/postjob.jpg" style="height:225px" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title"><a href="PostJobView.jsp" style="color:rgb(36 106 175);"> View Posted Job </a></h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
</div>
<div class="row">
            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                   <div class="imgsetting"  style="margin: -60px;margin-top: 95px;margin-bottom:50px;">
                        <div class="card" style="border-radius:10px ">
                            <img src="images/applyjob.jpg" style="height:225px" class="card-img img-fluid">
                            <div class="card-body text-center">
                            	<h5 class="card-title"><a href="ApplyJobView.jsp" style="color:rgb(36 106 175);"> View Applied Job </a></h5>
                                
                            </div>
                        </div>
                    </div>
                </a>
            </div>


            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting"  style="margin: -60px;margin-top: 95px;margin-bottom:50px;">
                        <div class="card" style="border-radius:10px ">
                            <img src="images/solve.jpg" style="height:225px" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title"><a href="SolveQueries.jsp" style="color:rgb(36 106 175);"> Solve Queries </a></h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </section>
</body>
</html>
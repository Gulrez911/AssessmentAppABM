<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style type="text/css">

        body {
            background-image: url('<%=request.getContextPath()%>/resources/images/960x0.jpg');
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            background-size: cover; 
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Header Design */
        .topnav {
        overflow: hidden;
        width: 100%;
        background-color: #333;
        }

        .topnav a {
        float: left;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
        }

        .topnav a:hover {
        background-color: #ddd;
        color: black;
        }

        .topnav a.active {
        background-color: #03A9F4;
        color: white;
        }

        .topnav-right {
        float: right;
        }

       
        /* Social Icon Style */
        .fa:hover {
            opacity: 0.7;
        }

/*         .fa-facebook { */
/*             background: #3B5998; */
/*             color: white; */
/*             padding: 20px; */
/*             font-size: 20px; */
/*             width: 30px; */
/*             text-align: center; */
/*             text-decoration: none; */
/*             margin: 5px 2px; */
/*         } */

/*         .fa-twitter { */
/*             background: #55ACEE; */
/*             color: white; */
/*             padding: 20px; */
/*             font-size: 20px; */
/*             width: 30px; */
/*             text-align: center; */
/*             text-decoration: none; */
/*             margin: 5px 2px; */
/*         } */

/*         .fa-linkedin { */
/*             background: #007bb5; */
/*             color: white; */
/*             padding: 20px; */
/*             font-size: 20px; */
/*             width: 30px; */
/*             text-align: center; */
/*             text-decoration: none; */
/*             margin: 5px 2px; */
/*         } */

/*         .fa-instagram { */
/*             background: #125688; */
/*             color: white; */
/*             padding: 20px; */
/*             font-size: 20px; */
/*             width: 30px; */
/*             text-align: center; */
/*             text-decoration: none; */
/*             margin: 5px 2px; */
/*         } */

        /* Footer Design */
        .page-footer{
            background-color:#2D1846;
            color: white;
            background-color: #EFF1F3
            left: 0;
            bottom: 0;
            width: 100%;
            height:35%;
            overflow: hidden;
            position: fixed;
        }
    </style>
</head>
<body style="background-color: black;">
    <!-- Header start -->
    <div class="topnav">
			<a href="home" class="logo-brand"> 
				<img class="retina"
					src="<%=request.getContextPath()%>/resources/assets/images/Logo.png" width="100" height="30"
					alt="" />
			</a>        
			<div class="topnav-right">
            <a href="practice">Practice</a>
            <a href="compete">Compete</a>
            <a href="coding">Coding</a>
            <a href="competative">Competative</a>
            <a href="business">Business</a>
            <a href="loginRegister">Login</a>
        </div>
    </div>
    <!-- Header end -->

    <div class="container" style="max-height:100%;">
        <div class="row">
            <div class="col-lg-7 col-md-6">
                <br>
                <h2 style="color: white;"><b>Lets Learn & Compete</b></h2>
					<p style="color: white;"><b>
						E-Assess provides a platform to all <br>
						learners and our team is committed to <br>
						provide  a quality content.
					</b></p>
					<ul style="color: white;margin: 0;padding: 0;">
						<li>Practice For Competetive Exam</li>
						<li>Practice For Technical Interview</li>
						<li>Participate in Live Competition</li>
						<li>Practice and Improve your Skill</li>
						<li>Learn New Skills</li>
                    </ul>
                    <br>
            </div>
           </div>
         </div>

<!--             <div class="col-lg-5 col-md-6 clearfix signup-top-block" style="background-color: whitesmoke;"> -->
<!--                 <div class="register-area clearfix"> -->
<!--                     <div class="login-register-form-section"> -->
<!--                         <ul class="nav nav-tabs" role="tablist"> -->
<!--                             <li class="active"><a href="#login" data-toggle="tab">SignIn</a></li> -->
<!--                             <li><a href="#register" data-toggle="tab">SignUp</a></li> -->
<!--                         </ul> -->

<!--                         <div class="tab-content"> -->
<!--                             <div role="tabpanel" class="tab-pane fade in active" id="login"> -->
<!--                                 <form name="userloginform" class="form-horizontal" method="post" modelAttribute="user" action="authenticateUser"> -->
<!--                                     <div class="form-group " > -->
<!--                                         <div class="input-group"> -->
<!--                                             <div class="input-group-addon"><i class="fa fa-user"></i></div> -->
<!--                                             <input type="email" name="login_email" path="user.email" -->
<!--                                             id="username" class="form-control" placeholder="Username or email" required="required" value=""> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="form-group "> -->
<!--                                         <div class="input-group"> -->
<!--                                             <div class="input-group-addon"><i class="fa fa-key"></i></div> -->
<!--                                             <input type="password" name="login_password" class="form-control" placeholder="Password" required="required"> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="form-group"> -->
<!--                                         <a href="#" class="pull-right">Forgot password?</a> -->
<!--                                     </div>   -->
<!--                                     <input type="submit" value="Login" class="btn btn-success btn-custom"> -->
<!--                                 </form> -->
<!--                             </div> -->

<!--                             <div role="tabpanel" class="tab-pane fade" id="register"> -->
<!--                                 <form class="form-horizontal" method="post" action=""> -->
<!--                                     <div class="form-group "> -->
<!--                                         <div class="input-group"> -->
<!--                                             <div class="input-group-addon"><i class="fa fa-user"></i></div> -->
<!--                                             <input type="text" name="register_username" class="form-control" placeholder="First Name" required="required" value=""> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="form-group "> -->
<!--                                         <div class="input-group"> -->
<!--                                             <div class="input-group-addon"><i class="fa fa-male"></i></div> -->
<!--                                             <input type="text" name="register_fullname" class="form-control" placeholder="Last Name" required="required" value=""> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="form-group "> -->
<!--                                         <div class="input-group"> -->
<!--                                             <div class="input-group-addon"><i class="fa fa-envelope"></i></div> -->
<!--                                             <input type="email" name="register_email" class="form-control" placeholder="Email" required="required" value=""> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="form-group "> -->
<!--                                         <div class="input-group"> -->
<!--                                             <div class="input-group-addon"><i class="fa fa-lock"></i></div> -->
<!--                                             <input type="password" name="register_password" class="form-control" placeholder="Password" required="required"> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="form-group "> -->
<!--                                         <div class="input-group"> -->
<!--                                             <div class="input-group-addon"><i class="fa fa-lock"></i></div> -->
<!--                                             <input type="password" name="register_cpassword" class="form-control" placeholder="Confirm Password" required="required"> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <input type="submit" value="Register" class="btn btn-success btn-custom"> -->
<!--                                 </form> -->
<!--                             </div> -->

<!--                             <div class="sociable clearfix social-login-button"> -->
<!--                                 <h5 style="color: black;">Continue With:</h5> -->
<!--                                 <p> -->
<!--                                     <a href="#" class="fa fa-instagram"></a>                                     -->
<!--                                     <a href="#" class="fa fa-linkedin"></a> -->
<!--                                     <a href="#" class="fa fa-facebook"></a> -->
<!--                                     <a href="#" class="fa fa-twitter"></a> -->
<!--                                 </p> -->
<!--                             </div> -->

<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->

<!--         </div> -->
<!--     </div> -->

<!--      Popup for taking email to send Reset Password link -->
<!-- 		<div id="resetPassword" class="modal fade modalcopy" role="dialog" data-backdrop="static" data-keyboard="false"> -->
<!--             <div class="modal-dialog"> -->
<!--                 Modal content -->
<!--                 <div class="modal-content"> -->
<!--                     <div class="modal-header"> -->
<!--                         <button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!--                         <h4 class="modal-title">Reset Password</h4> -->
<!--                         <span id="errorMessage" align="center" style="color:green; font-size: 15px;"></span> -->
<!--                         <span id="successMessage" align="center" style="color:green; font-size: 15px;"></span> -->
<!--                     </div> -->
<!--                     <div class="modal-body"> -->
<!--                         <div role="tabpanel"> -->
<!--                             <form name="resetPassword" class="form-horizontal" method="GET" modelAttribute="user" > -->
<!--                             <div class="input-container"> -->
<!--                             <div class="form-group "> -->
<!--                                 <div class="input-group"> -->
<!--                                         <div class="input-group-addon"><i class="fa fa-envelope"></i></div>  -->
<!--                                         <input path="user.email" type="email" name="email" id="emailR" required="true" class="modal-form-input" placeholder="Email/Username" /> -->
<!--                                         <div class="bar"></div> -->
<!--                                     </div> -->
<!--                             </div> -->
<!--                             </div> -->
<!--                             <div class="button-container"> -->
<!--                                 <a href="#" onclick="javascript:reset() " class="btn btn-success btn-custom">Reset Password</a> -->
<!--                             </div> -->
                            
<!--                                 <a href="loginRegister">Back to Login</a> -->
<!--                             </form> -->
<!--                             </div> -->
<!--                             Tab panes -->
<!--                             <div class="tab-content"> -->
<!--                                 <div role="tabpanel" class="tab-pane active" id="uploadTab"> -->
<!--                                 </div> -->
<!--                                 <div role="tabpanel" class="tab-pane" id="browseTab"></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
        
            
<!--     Popup on click of register button for OTP verification -->
<!--             <div id="modalshare" class="modal fade modalcopy" role="dialog" data-backdrop="static" data-keyboard="false"> -->
<!--             <div class="modal-dialog"> -->
<!--                 Modal content -->
<!--                 <div class="modal-content"> -->
<!--                     <div class="modal-header"> -->
<!--                         <button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!--                         <h4 class="modal-title">OTP Verification</h4> -->
<!--                         <span id="otpMessage"></span> -->
<!--                     </div> -->
<!--                     <div class="modal-body"> -->
<!--                         <div role="tabpanel"> -->
<!--                             <form name="otpVerification" class="form-horizontal" method="GET" modelAttribute="user"> -->
<!--                             <table id="tblVerify"> -->
<!--                                 <tr> -->
<!--                                     <th> -->
<!--                                         <input type="text" name="otp"  id="otp" required="true" placeholder="Enter OTP" /> -->
<!--                                         <input type="hidden" name="email"  id="vEmail" /> -->
<!--                                         <div class="bar"></div> -->
<!--                                     </th> -->
<!--                                 </tr> -->
<!--                                 <tr> -->
<!--                                     <th><a href="#" onclick="javascript:verifyOtp()" class="btn btn-success btn-custom">Submit</a></th>  -->
<!--                                 </tr> -->
<!--                             </table> -->
<!--                             </form> -->
<!--                             Tab panes -->
<!--                             <div class="tab-content"> -->
<!--                                 <div role="tabpanel" class="tab-pane active" id="uploadTab"> -->
<!--                                 </div> -->
<!--                                 <div role="tabpanel" class="tab-pane" id="browseTab"></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->

<!-- Footer start -->
<footer class="page-footer font-small mdb-color pt-4">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">
  
      <!-- Grid row -->
      <div class="row">
  
        <!-- Grid column -->
        <div class="col-md-2 mx-auto">
  
          <!-- Links -->
          <h5 class="font-weight-bold text mt-3 mb-4">About Us</h5>
  
          <ul class="list-unstyled">
            <li>
              <a href="#!">About Us</a>
            </li>
            <li>
              <a href="#!">Contact Us</a>
            </li>
            <li>
              <a href="#!">Join Our Team</a>
            </li>
            <li>
              <a href="#!">FAQ</a>
            </li>
          </ul>
  
        </div>
        <!-- Grid column -->
  
        <hr class="clearfix w-100 d-md-none">
  
        <!-- Grid column -->
        <div class="col-md-2 mx-auto">
  
          <!-- Links -->
          <h5 class="font-weight-bold text mt-3 mb-4">For Developer</h5>
  
          <ul class="list-unstyled">
            <li>
              <a href="#!">BecomeExpertDeveloper</a>
            </li>
            <li>
              <a href="#!">Practice Problem</a>
            </li>
            <li>
              <a href="#!">Solve Challanges</a>
            </li>
            <li>
              <a href="#!">Coding Environment</a>
            </li>
            <li>
              <a href="#!">Hackathons</a>
            </li>
          </ul>
  
        </div>
        <!-- Grid column -->
  
        <hr class="clearfix w-100 d-md-none">
  
        <!-- Grid column -->
        <div class="col-md-2 mx-auto">
  
          <!-- Links -->
          <h5 class="font-weight-bold text mt-3 mb-4">For Business</h5>
  
          <ul class="list-unstyled">
            <li>
              <a href="#!">Hiring Solutions</a>
            </li>
            <li>
              <a href="#!">Skill Assessment</a>
            </li>
            <li>
              <a href="#!">Brand Promotion</a>
            </li>
            <li>
              <a href="#!">Internal Training</a>
            </li>
            <li>
              <a href="#!">Organise Hackathons</a>
            </li>
          </ul>
  
        </div>
        <!-- Grid column -->
  
        <hr class="clearfix w-100 d-md-none">
  
        <!-- Grid column -->
        <div class="col-md-2 mx-auto">
  
          <!-- Links -->
          <h5 class="font-weight-bold text mt-3 mb-4">For education</h5>
  
          <ul class="list-unstyled">
            <li>
              <a href="#!">Student Assessment</a>
            </li>
            <li>
              <a href="#!">LMS</a>
            </li>
            <li>
              <a href="#!">Live Lectures</a>
            </li>
            <li>
              <a href="#!">Test Library</a>
            </li>
          </ul>
  
        </div>
        <!-- Grid column -->
  
        <hr class="clearfix w-100 d-md-none">
  
        <!-- Grid column -->
        <div class="col-md-3 mx-auto">
  
          <!-- Links -->
          <h5 class="font-weight-bold text mt-3 mb-4">Follow Us</h5>
  
          <ul class="list-unstyled">
           
            <li>
              <!-- Social buttons -->
              <ul class="list-unstyled list-inline text-center" style="margin: 0;">
                <li class="list-inline-item">
                  <a class="btn-floating btn-li mx-1">
                    <i class="fa fa-linkedin" > </i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-fb mx-1">
                    <i class="fa fa-facebook"> </i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-tw mx-1">
                    <i class="fa fa-twitter"> </i>
                  </a>
             </li>
            
            <li>
              <P>Subscribe To Our Newsletter</p>
            </li>
            <!--Grid column-->
            <li>
	          <form class="input-group">
	            <input type="text" class="form-control form-control-sm" placeholder="Your email"
	              aria-label="Your email" aria-describedby="basic-addon2" style="height:34px; width:150px; ">
	            <div class="input-group-append">
	              <button class="btn btn-success" type="button" >Subscribe</button>
	            </div>
	          </form>
          </li>
        </div>
        <!--Grid column-->
          </ul>
  
        </div>
        <!-- Grid column -->
        
      </div>
      <!-- Grid row -->
  
    </div>
    <!-- Footer Links -->
  
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">Copyright @ E-Assess Pvt Ltd. 2020 | All Rights Reserved.
    </div>
    <!-- Copyright -->
  
  </footer>
  <!-- Footer end -->

  <script type="text/javascript">

    function notify(messageType, message) {
        var notification = 'Information';
        $(function() {
            new PNotify({
                title : notification,
                text : message,
                type : messageType,
                styling : 'bootstrap3',
                hide : true
            });
        });
    }
    
</script>


<c:if test="${msgtype != null}">
    <script>
        var notification = 'Information';
        $(function() {
            new PNotify({
                title : notification,
                text : '${message}',
                type : '${msgtype}',
                styling : 'bootstrap3',
                hide : true
            });
        });
        
    </script>
</c:if>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>


</html>
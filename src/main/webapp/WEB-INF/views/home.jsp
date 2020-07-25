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
/*             background-color: #EFF1F3; */
            left: 0;
            bottom: 0;
            width: 100%;
            height:31%;
            overflow: hidden;
            position: fixed;
        }
    </style>
</head>
<body style="background-color: black;">
    <!-- Header start -->
    <div class="topnav">
			<a href="home" class="logo-brand"> 
				<img class="retina" src="<%=request.getContextPath()%>/resources/assets/images/Logo.png" width="100" height="28" alt="" />
			</a>        
			<div class="topnav-right">
            <a href="learningpath">Practice</a>
            <a href="compete">Compete</a>
            <a href="practice">Coding</a>
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
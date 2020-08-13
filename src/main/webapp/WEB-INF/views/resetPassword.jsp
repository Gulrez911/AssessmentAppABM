<!doctype html>
<html>
<head>
    <title>Reset Password</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    .login-register-form-section {
        max-width: 350px;
        margin: 0 auto;
    }

    .login-register-form-section i {
        width: 10px;
    }

    .login-register-form-section .nav-tabs > li > a {
        color: #2abb9b;
    }
 
    .login-register-form-section .nav-tabs > li.active > a {
        background-color: #2abb9b;
        border-color: #2abb9b;
        color: white;
    }

    .login-register-form-section .nav-tabs > li > a, 
    .login-register-form-section .nav-tabs > li.active > a {
        width: 160px;
        text-align: center; 
        border-radius: 0;
    }

    .login-register-form-section .nav-tabs {
        padding-bottom: 10px;
        margin-bottom: 10px;
    }


    .login-register-form-section .btn-custom {
        width: 100%;
        background-color: #2abb9b;
        border-color: #2abb9b;
        margin-bottom: 0.5em;
        border-radius: 0;
    }

    .login-register-form-section .btn-custom:hover {
        width: 100%;
        background-color: #48A497;
        border-color: #2abb9b;
    }
    .login-register-form-section .form-group {
        padding: 0 20px;
    }

</style>
</head>
<body style="background-color: white;">
    <br>
    <div class="row">
        <div class="container">
            <div class="login-register-form-section">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="resetPassword">
                        <form class="form-horizontal" method="POST">
   						 <h2 align="center" style="color:2ABB9A; font-size: 25px;"><b>EAssess</b></h2>
   						 <span id="errorMessage" align="center" style="color:red; font-size: 15px;"></span>
						 <span id="msg" align="center" style="color:green; font-size: 15px;"></span>
                            <div class="form-group ">
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-key"></i></div>
                                    <input type="password" name="password" id="pswd1" class="form-control" placeholder="New Password" required="required">
<!--                                     <div class="input-group-addon"><i class="glyphicon glyphicon-eye-open" onclick="javascript:showPassword()"></i></div> -->
                                </div>
                            </div>
                            <div class="form-group ">
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-key"></i></div>
                                    <input type="password" name="cnfrmPassword" id="pswd2" class="form-control" placeholder="Confirm Password" required="required">
<!--                                     <div class="input-group-addon"><i class="glyphicon glyphicon-eye-open" onclick="javascript:showPassword()"></i></div> -->
                                </div>
                            </div>
                            
<!--                             <input type="submit" value="Reset Password" class="btn btn-success btn-custom"> -->
                            <a href="#" onclick="javascript:savePassword();" class="btn btn-success btn-custom">Reset Password</a>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script>
	/* function saveReset(){
		console.log("Save reset called!");
		var resetData={};
		resetData["password"]=$("#pswd1").val();
		resetData["confirmPassword"]=$("#pswd2").val();
		
		console.log("resetData::"+JSON.stringify(resetData));
		
		 /* $ajax.({
			url:"reset",
			data:JSON.stringify(resetData),
			type:"POST",
			dataType:"json",
			contentType:"application/json",
			success:function(response){
				console.log(saved Reset password);
				$("#successMessage").text(response.successMessage);
				$("#errorMessage").text(response.errorMessage);
				window.open('loginRegister');
			}
		}); 
	}
 */
	
	function savePassword(){
		console.log("Save reset called!");

		var pswd1=$("#pswd1").val();
		var pswd2=$("#pswd2").val()
		
		console.log("p1::"+pswd1+"p2::"+pswd2);

		if(pswd1.length<8){
	          //alert("Password must be at least 8 characters long!");
	          $("#errorMessage").text("Password must be at least 8 characters long!");
	          return false;  
	    }
	    
		if(pswd1!=pswd2){
				$("#errorMessage").text("Password did not match: Please try again...");
				//alert("Password did not match: Please try again...");
				return false;
			}
		
		  $.ajax({
			url:"saveResetPassword?pswd1="+pswd1,
			type:"GET",
			success:function(response){
				console.log("saved Reset password");
				$("#msg").text(response.msg);
				setTimeout(myFunction, 3000)
				function myFunction(){
				window.location='loginRegister';
					}
			}
		});  
	}

// 	 function showPassword(){
// 		var pswd1=$("#pswd1").val();
// 		var pswd2=$("#pswd2").val();
// 		console.log("showPswd called");
		
// 	 	  if (pswd1.type == "password") {
// 	 		 pswd1.type = "text";
// 	 	  } else {
// 	 		 pswd1.type = "password";
// 	 	  }
	
// 	 	  if (pswd2.type == "password") {
// 	 		 pswd2.type = "text";
// 	 	  } else {
// 	 		 pswd2.type = "password";
// 	 	  }
// 	 }
</script>

</body>
</html>
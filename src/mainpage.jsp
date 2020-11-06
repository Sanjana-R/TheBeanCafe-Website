<!DOCTYPE html>
<html lang="en-US">
	<head>
		<title>Profile</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">		
		<link rel="stylesheet" type="text/css" href="../css/mainpage.css">
	</head>
	<body>
		<div class="main-body">
			<!-----------------------------------------------------------------------------------------------------
										THIS SECTION IS CONTENT DISPLAYED
			------------------------------------------------------------------------------------------------------->
			<div class="content">
				<div class="header-content">
					<p>
						<span>Craving Something?</span>	
					</p>
				</div>
				<div class="header-content-bottom">
					<p>People who like to eat are always the best people!<br>
						Register with us to have your favourite food delivered, see your favourite Friday night and Monday morning orders, and get great recommendations for the food you love. Eat good, feel good!
					</p>
				</div>
			</div>
			<div class="buttons">
				<button id="login-btn" onclick="document.getElementById('login-section').style.visibility = 'visible'; isBtnActive();">Login</button>
				<button id="signup-btn" onclick="document.getElementById('signup-section').style.visibility = 'visible'; isBtnActive();">Sign Up</button>
			</div>
			
			<!-----------------------------------------------------------------------------------------------------
										THIS SECTION IS FORM LOGIN PAGE POPUP
			------------------------------------------------------------------------------------------------------->
			<div class="login-section animation" id="login-section">
				<div class="close-btn" >
					<i class="fa fa-times-circle" aria-hidden="true" onclick="document.getElementById('login-section').style.visibility = 'hidden'; isBtnActive()"></i>
				</div>
				<div class="login-text">
					<p>Welcome!</p>
					<p>Log in to your account</p>
				</div>
				<form  method="post" name="myForm" action="login.jsp">
					<input type="email" placeholder="Email" name="email" id="loginemail"/>
						<i class="fa fa-envelope-o" id="fa-envelope-o" aria-hidden="true" style="color:white;"></i><br/>
					<input type="password" placeholder="Password" name="password" id="loginpassword" />
					<i class="fa fa-unlock-alt" id="fa-unlock-alt" aria-hidden="true" style="color:white;"></i><br/>
					<input type="submit" id="loginsubmit" value="login" />
					<div class="remember-me">
						<input type="checkbox" value="checked">&nbsp  Remember
					</div>
				</form>
				<a>
					<div class="forget-btn">Forgot password</div>
				</a>
				
			</div>
			
			<!-----------------------------------------------------------------------------------------------------
										THIS SECTION IS FORM SIGNUP PAGE POPUP
			------------------------------------------------------------------------------------------------------->
			
			<div class="signup-section animation" id="signup-section" action="connect.jsp">
				<div class="close-btn" >
					<i class="fa fa-times-circle" aria-hidden="true" onclick="document.getElementById('signup-section').style.visibility = 'hidden'; isBtnActive();"></i>
				</div>
				<div class="signup-text">
					<p>Welcome!</p>
					<p>Create an account</p>
				</div>
				<form  method="post" name="signupForm" class="signupForm" action="connect.jsp">
					<input type="email" placeholder="Email" name="email" id="signupemail"/>
					<i class="fa fa-envelope-o" id="fa-envelope-o" aria-hidden="true" style="color:white;"></i><br/>
					<input type="password" placeholder="Password" name="password" id="signuppassword" style="border-right: none;
					padding-left: 70px; padding-right: 50px; border-top-right-radius: 0px; border-bottom-right-radius: 0px;
					position: relative; left: 55px;"/>
					<i class="fa fa-unlock-alt" id="fa-unlock-alt" aria-hidden="true" style="color:white;"></i><br/>
					<input type="password" placeholder="Confirm Password" name="confirmpassword" id="confirmpassword" 
					style="border-left: none; padding-left: 50px; padding-right: 50px; border-top-left-radius: 0px;
					border-bottom-left-radius: 0px;"/>
					<i class="fa fa-unlock-alt" id="fa-unlock" aria-hidden="true" style="color:white;"></i><br/>
					<input type="submit" id="signupsubmit" value="Sign Up" />
				</form>
				
			</div>
		</div>
	</body>
</html>
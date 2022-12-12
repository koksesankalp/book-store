<?php
	$conn = new mysqli('localhost', 'root', '', 'bookchain') or die($conn->error);
?>
<!DOCTYPE html>
<html>
<head>
<title>Welcome!Sign up to join Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="sign.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Welcome! Sign up to join us</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="" method="post" name="signup">
					<input type="text" name="username" placeholder="Username" required="">
					<input type="email" name="email" placeholder="Email" required="">
					<input type="text" name="password" placeholder="Password" required="">
					<input type="password" name="confirm_password" placeholder="Confirm Password" required="">
					<input type="text" name="address" placeholder="enter your address" required="">
					<!-- <input type="tel" id="phone" name="phone" placeholder="enter phone number" required=""> -->
				    <!-- <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required=""> -->
					
					<input type="text" name="phone" placeholder="enter your number" required="">
					<br>
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" name="terms" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="SIGNUP" name="register">
				</form>
				<p>Don't have an Account? <a href="#"> Login Now!</a></p>
			</div>
		</div>
		

</body>
</html>


<br>
<br>
<br>
<br>
<?php



  if(isset($_POST['register']))
  {
   //geting the values from user input form index
   $username=$_POST['username'];
   $email=$_POST['email'];
   $password=$_POST['password'];
   $confirm_password=$_POST['confirm_password'];
   $address=$_POST['address'];
   $phone_number=$_POST['phone_number'];
     
  
 
   if(!isset($error_message)) {
	if(!isset($_POST["terms"])) {
	$error_message = "Accept Terms and Conditions to Register";
	}
}
    
   $sql = "INSERT INTO `register` (`username`, `email`, `password`, `confirm_password`,`address`,`phone_number) VALUES ( '$username', '$email', '$password', '$confirm_password','$address','$phone_number' )";
   $rs = mysqli_query($conn, $sql);
   if($rs)
   {
	   echo "Contact Records Inserted";
   }
   }
   else
   {
	   echo "Are you a genuine visitor?";
	   
   }
	
 ?>
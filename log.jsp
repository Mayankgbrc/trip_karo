<%-- 
    Document   : log
    Created on : 16 Mar, 2018, 2:20:52 PM
    Author     : mayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title> Boom </title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
	<div class="login-page">
	  <div class="form">
		<form class="register-form" method="post" action="reg.do.jsp">
			<input type="text" name="name" placeholder="enter your name" required/><br>
			Male:<input type="radio" name="gender" value="Male" placeholder="Male">Female:</input><input type="radio" name="gender" value="Female">  </input> <br>
			dob: <input type="date" name="dob" /><br>
			<input type="email" name="email" placeholder="enter your email"/><br>
			<input type="password" name="pass" placeholder="enter your Password"/><br>
			<input type="text" name="phno" placeholder="enter your Phone number"/><br>
			<input type="text" name="address" placeholder="enter your Address"/><br>
			<button type="submit">Register</button>
			<p class="message">Already registered? <a href="#">Sign In</a></p>
		</form>
		<form class="login-form" method="post" action="login.jsp">
			<input type="text" placeholder="Enter your email" name="email"/>
			<input type="password" placeholder="Enter your password" name="pass" />
			<button type="submit">Log In</button>
			<p class="message">Not registered? <a href="#">Create an account</a></p>
		</form>
	  </div>
	</div>
	
	<script  src="js/jquery.min.js"></script>
	<script  src="js/index.js"></script>
	</body>
</html>

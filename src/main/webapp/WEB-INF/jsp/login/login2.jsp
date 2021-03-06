<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--<jsp:include page="/WEB-INF/jsp/common/home/header.jsp"/>--%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eCommerce</title>
        <link href="/resources/login/css/bootstrap.css" rel="stylesheet"/>
    </head>
    <body>
       
<div class="container" id="container">
	<div class="form-container sign-up-container">
            <form action="/doctor/save" method="post">
			<h3>Apply for a Merchant</h3>
			
<!--			<span>or use your email for registration</span>-->
                        <input type="text" placeholder="Name" name="name" />
                        <input type="text" placeholder="Username" name="username" />
                        <input type="text" placeholder="Address" name="address" />
                        <input type="text" placeholder="Mobile" name="mobile" />
                        <input type="emal" placeholder="Email" name="email"/>
                        <input type="text" placeholder="Specialist" name="specialist"/>
                        <input type="password" placeholder="Password" name="password"/>
			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="#">
			<h1>Sign in</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>or use your account</span>
			<input type="email" placeholder="Email" />
			<input type="password" placeholder="Password" />
			<a href="#">Forgot your password?</a>
			<button><a href="/adminDashboard">Sign In</a></button>
                        <button><a href="/adminPanel">Sign In</a></button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Your Trusted Partner</h1>
				<p>Send Your Secure Information</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>

<footer>
	
</footer>
       <script>
           const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
       </script>
    </body>
</html>

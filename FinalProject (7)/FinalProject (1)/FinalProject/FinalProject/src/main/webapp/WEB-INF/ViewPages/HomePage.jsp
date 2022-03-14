<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 6px 12px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 50%; /* Full width */
	height: 50%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content-animate {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	border: 1px solid #888;
	width: 50%;
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s;
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
/* .animate { */
/* 	-webkit-animation: animatezoom 0.6s; */
/* 	animation: animatezoom 0.6s; */
/* } */
@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
<script>
	// Get the modal
	var modal1 = document.getElementById('id01');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal1) {
			modal1.style.display = "none";
		}
	}

	var modal2 = document.getElementById('id01');

	//When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal2) {
			modal2.style.display = "none";
		}
	}
</script>
<link href="CSS/Style.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div class="nav">
		<div class="left">
			<span>Venue Booking System</span>
		</div>
		<div class="right">
			<button
				onclick="document.getElementById('id01').style.display='block'"
				style="width: auto;">Login</button>
			<button
				onclick="document.getElementById('id02').style.display='block'"
				style="width: auto;">Sign Up</button>
		</div>
	</div>

	<div id="id01" class="modal">

		<form class="modal-content-animate" action="login" method="post">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> 
				<img src="Images/img_avatar2.png" alt="Avatar" class="avatar">
			</div>
			<div class="container">
				<label for="forUser" class="form-label">Username / Mail ID</label> 
				<input type="text" style="background-color: #DAF7A6" name="username"
					class="form-control" placeholder="Enter Username or Email Id">
				<label for="forPassword" class="form-label">Password</label> 
				<input type="password" style="background-color: #DAF7A6" name="password"
					class="form-control" placeholder="Enter Password">
				<select style="background-color: #DAF7A6" class="form-select mt-3" name="usertype">
					<option selected>Select user type...</option>
					<option value="admin">Admin</option>
					<option value="dealer">Dealer</option>
					<option value="customer">Customer</option>
				</select>
				<br>
				<button type="submit">Login</button>
				<label> <input type="checkbox" name="remember"> Remember me </label>
			</div>
			<div class="row">
            	<div class="col-md-12">
                	<span style="color:red">${msg }</span>
                </div>
            </div>
			<div class="container" style="background-color: #f1f1f1">
				<input type="reset" value="Reset" class="btn btn-danger" />
				<button type="button"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>

	<div id="id02" class="modal">
		<form class="modal-content-animate" action="signin" method="post">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id02').style.display='none'"
					class="close" title="Close Modal">&times;</span> 
				<img src="Images/img_avatar2.png" alt="Avatar" class="avatar">
			</div>
			<div class="container">
				<label for="forUser" class="form-label">Username / Mail ID</label> 
				<input type="text" style="background-color: #DAF7A6" name="username"
					class="form-control" placeholder="Enter Username or Email Id">
				<label for="forPassword" class="form-label">Password</label> 
				<input type="password" style="background-color: #DAF7A6" name="password"
					class="form-control" placeholder="Enter Password">
				<br>
				<button type="submit">Sign Up</button>
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label>
			</div>
			<div class="row">
            	<div class="col-md-12">
                	<span style="color:red">${msg }</span>
                </div>
            </div>
			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id02').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>

</body>
</html>
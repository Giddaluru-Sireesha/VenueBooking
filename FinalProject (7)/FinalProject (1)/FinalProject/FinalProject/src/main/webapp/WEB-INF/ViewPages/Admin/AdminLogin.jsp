<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body  style="background:url(https://d21bklzz9tc7ug.cloudfront.net/shrine/venuephotos/27384/1599916554/oakridge-horizons-wedding-event-venue-cebu-philippines-large.jpg);background-size:100% 150%;" >
<p><h1 style="text-align:center;font-weight:bold;color:#00008B;font-style:Lucida Handwriting">Admin Login</h1></p>
<img src="pic.jpg" class="img-fluid" alt="..."/>
<div style="text-align:center">
<form name="frm1" method="post" action="adminlogin" >
<div style="background-color:#808080.;margin-left:25%;margin-right:25%;margin-top:10%;font-color:white;padding:10px;border-radious:5px">
<div class="mb-3">
  <label for="username" class="form-label"><b>Username </b></label>
  <input type="text" name="username" class="form-control" id="username" placeholder="Enter username...">
</div>
<div class="mb-3">
  <label for="password" class="form-label"><b>Password</b></label>
  <input type="password" name="password" class="form-control" id="password" placeholder="Enter password...">
</div>
<input type="submit" class="btn btn-secondary" value="Login"/>
</div>
	<h3 style="font-style:italic;color:red">${msg }</h3>
	</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background:url(https://siriusskills.co.uk/wp-content/uploads/2017/07/image-6.jpg);background-size:100% 150%;">
<p><h1 style="text-align:center;font-weight:bold;color:#00008B;font-style:Lucida Handwriting">Dealer's Information</h1></p>
	<nav class="navbar navbar-light bg-light" style="color:yellow">
<div class="container-fluid">
		<a class="navbar-brand" href="addD">Add Dealers</a>
		<a class="navbar-brand" href="viewcustomers">View Customers</a>
		<a class="navbar-brand" href="generatereport">Generate Report</a>
		<a class="navbar-brand" href="/project/"><button type="button" class="btn btn-danger">Logout</button></a>
	</div>
	</nav>
<br><br><br><br>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-9">
			<div class="m-5">
				<table class="table table-striped caption-top" style="background-color:#f8f9fa;border-radius:5px;">
				<caption style="color:#FF7D33; font-weight:bold; text-align:center; font-size:35px">Dealers List</caption>
				<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">DOB</th>
					<th scope="col">Gender</th>
					<th scope="col">Address</th>
					<th scope="col">Phone</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="dealer" items="${dlist }">
				<tr>
					<td>${dealer.dealerId }</td>
					<td>${dealer.name }</td>
					<td>${dealer.emailId }</td>
					<td>${dealer.dob }</td>
					<td>${dealer.gender }</td>
					<td>${dealer.address }</td>
					<td>${dealer.mobileNo }</td>
					<td><button class="btn btn-primary" type="submit">Activate</button></td>
					<td><button class="btn btn-primary" type="submit">Deactivate</button></td>
					<td><button class="btn btn-primary" type="submit">Delete</button></td>
				</tr>
				</c:forEach>
				</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
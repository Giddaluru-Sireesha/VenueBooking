<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background:url(https://mir-s3-cdn-cf.behance.net/project_modules/1400/b4e09776304185.5c657a100a3ae.jpg)">
<nav class="navbar navbar-light bg-light" style="color:yellow">
<div class="container-fluid">
		<a class="navbar-brand" href="viewdealers">View Dealers</a>
		<a class="navbar-brand" href="viewcustomers">View Customers</a>
		<a class="navbar-brand" href="generatereport">Generate Report</a>
		<a class="navbar-brand" href="/project/"><button type="button" class="btn btn-danger">Logout</button></a>
	</div>
	</nav>
<p><h1 style="text-align:center;font-weight:bold;color:yellow;font-style:Lucida Handwriting">Add Details For Dealers</h1></p>
<div class="row">
<div class="col-md-1"></div>
 <div class="col-md-8">
<form class="row g-3" action="addDS" method="post" name="frm1" >
  <div class="col-md-4">
    <label for="validationDefault01" class="form-label" style="color:yellow">Dealer's Name</label>
    <input type="text" class="form-control" id="validationDefault01" name="name"required>
  </div>
  <div class="col-md-4">
    <label for="validationDefaultUsername" class="form-label" style="color:yellow">Email ID</label>
    <div class="input-group">
      <span class="input-group-text" id="inputGroupPrepend2">@</span>
      <input type="text" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" name="emailId" required>
    </div>
  </div>
   <div class="col-md-4">
    <label for="validationDefault02" class="form-label" style="color:yellow">Date Of Birth</label>
    <input type="Date" class="form-control" id="validationDefault02" name="dob" required>
  </div>
  <div class="col-md-3">
    <label for="validationDefault04" class="form-label" style="color:yellow">Gender</label>
    <select class="form-select" id="validationDefault04" name="gender" required>
      <option selected disabled value="">Choose...</option>
      <option>Male</option>
      <option>Female</option>
    </select>
  </div>
  <div class="col-md-3">
    <label for="validationDefault05" class="form-label" style="color:yellow">Address</label>
    <input type="text" class="form-control" id="validationDefault05" name="address" required>
  </div>
  <div class="col-md-3">
    <label for="validationDefault05" class="form-label" style="color:yellow">Mobile Number</label>
    <input type="text" class="form-control" id="validationDefault06" name="mobileNo" required>
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2" style="color:white">
        Agree to terms and conditions
      </label>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Add Dealer</button>
  </div>
  <p style="color:white;text-style:italic;font-size:15px;text-align: center">${msg}</p>
</form>
</div>
<div class="col-md-0"></div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
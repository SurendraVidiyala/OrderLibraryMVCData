<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.well {
	padding: 30px;
}

</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/">OrderLibrary</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="/">Home</a></li>
		</ul>
	</div>
	</nav>
	<div class="container" style="max-width:800px;margin:80px auto;">
		<div align="center" class="col-sm-12">
			<div class="well">
				<h2><strong><i>Enter Customer Details</i></strong></h2>
				<br>
				<form:form method="POST" action="/customers/create"
					modelAttribute="customer" class="form-inline form-horizontal" role="form">
					<div>
						<div class="form-group">
							<form:label path="customerId" class="col-sm-5">ID:</form:label>
							<div class="col-sm-7">
							<form:input path="customerId"  placeholder="Enter ID"
								class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="customerName" class="col-sm-5">FullName:</form:label>
							<div class="col-sm-7">
							<form:input path="customerName" placeholder="Enter Full Name"
								class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="dateOfBirth" class="col-sm-5">DateOfBirth:</form:label>
							<div class="col-sm-7">
							<form:input path="dateOfBirth" placeholder="Enter DOB"
								class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="annualSalary" class="col-sm-5">AnnualSalary:</form:label>
							<div class="col-sm-7">
							<form:input path="annualSalary" placeholder="Enter AnnualSalary"
								class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="addresses.aptNo" class="col-sm-5">AptNumber:</form:label>
							<div class="col-sm-7">
							<form:input path="addresses.aptNo" placeholder="Enter Apt Number"
								class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="addresses.streetNo" class="col-sm-5">StreetNumber:</form:label>
							<div class="col-sm-7">
							<form:input path="addresses.streetNo"
								placeholder="Enter Street Number" class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="addresses.streetName" class="col-sm-5">StreetName:</form:label>
							<div class="col-sm-7">
							<form:input path="addresses.streetName"
								placeholder="Enter Street Name" class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="addresses.city" class="col-sm-5">City:</form:label>
							<div class="col-sm-7">
							<form:input path="addresses.city" placeholder="Enter City"
								class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="addresses.state" class="col-sm-5">State:</form:label>
							<div class="col-sm-7">
							<form:input path="addresses.state" placeholder="Enter State"
								class="form-control" />
								</div>
						</div><br>
						<div class="form-group">
							<form:label path="addresses.zipCode" class="col-sm-5">ZipCode:</form:label>
							<div class="col-sm-7">
							<form:input path="addresses.zipCode" placeholder="Enter ZipCode"
								class="form-control" />
								</div>
						</div><br><br>
						<div class="form-group" >
							<input type="submit" class="btn btn-primary btn-block" value="Submit" />
						</div>
					</div>

				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
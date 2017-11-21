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
	<div class="container" style="max-width: 800px; margin: 80px auto;">
		<div align="center" class="col-sm-12">
			<div class="well">
				<h2>
					<strong><i>Enter Payment Details</i></strong>
				</h2>
				<br>
				
				<form:form action="/customers/add" modelAttribute="paymentMethod"
					method="POST" class="form-inline form-horizontal" role="form">

                     <div class="form-group">
						<form:label path="paymentId" class="col-sm-5">PaymentID:</form:label>
						<div class="col-sm-7">
							<form:input path="paymentId" placeholder="Enter Payment ID"
								class="form-control" />
						</div>
					</div><br>
					 <div class="form-group">
						<form:label path="customer" class="col-sm-5">CustomerID:</form:label>
						<div class="col-sm-7">
							<form:input path="customer" placeholder="Enter Customer ID"
								class="form-control" />
						</div>
					</div><br>
					<div class="form-group">
						<form:label path="cardNo" class="col-sm-5">CardNo:</form:label>
						<div class="col-sm-7">
							<form:input path="cardNo" placeholder="Enter Card Number"
								class="form-control" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="cardName" class="col-sm-5">CardName:</form:label>
						<div class="col-sm-7">
							<form:input path="cardName" placeholder="Enter Card Name"
								class="form-control" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="dateFrom" class="col-sm-5">IssuedDate:</form:label>
						<div class="col-sm-7">
							<form:input path="dateFrom" placeholder="Enter Issue Date"
								class="form-control" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<form:label path="cardType" class="col-sm-5">CardType:</form:label>
						<div class="col-sm-7">
							<form:input path="cardType" placeholder="Enter Card Type"
								class="form-control" />
						</div>
					</div>
					<br><br>
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-block"
							value="Add Payment" />
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
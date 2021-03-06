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
	<div align="center">
	<div class="container">
<h1><strong><i>All PaymentMethods Data</i></strong></h1>
<table class="table table-hover">
 <thead>
		<tr>
			<th>CardNumber</th>
			<th>CardName</th>
			<th>IssueDate</th>
			<th>CardType</th>
		</tr>
		 </thead>
		<c:forEach var="paymentMethod" items="${paymentMethodList}">
			<tbody>		
			<tr>
				<td>${paymentMethod.cardNo}</td>
				<td>${paymentMethod.cardName}</td>
				<td>${paymentMethod.dateFrom}</td>
				<td>${paymentMethod.cardType}</td>
			</tr>
			<tbody>
		</c:forEach>
	</table>
	</div>
	</div>
</body>
</html>
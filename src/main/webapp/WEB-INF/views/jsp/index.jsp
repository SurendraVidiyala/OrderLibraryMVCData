<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Customer Data</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Customer Data</title>
    <style>
    #jumbo{padding:0px;}
    </style>
  </head>
  <body><nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">OrderLibrary</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home</a></li>
    </ul>
  </div>
</nav>
  <div id="jumbo" class="container-fluid">
  <div class="jumbotron text-center">
  <div align="center">
    <h1>Customer Data For Order Library</h1><br>
    <div >
    <h2>1. <a href="customers/view">View AllCustomers</a></h2>
    <h2>2. <a href="customers/create">Add Customer Details</a></h2>
    <h2>3. <a href="customers/{customerId}/add">Add Payment Method</a></h2>
    <h2>4. <a href="customers/{customerId}/viewPayment">View PaymentMethod</a></h2>
    </div>
    </div>
    </div>
    </div>
  </body>
</html>
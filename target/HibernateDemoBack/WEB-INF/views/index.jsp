<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">YesDeal</a>
    </div>
    <ul  class="nav navbar-nav navbar-right">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="product">Category</a></li>
          <li><a href="category">Product</a></li>
          <li><a href="supplier">Supplier</a></li>
        </ul>
      </li>
      <li><a href="#">Sign in</a></li>
      <li><a href="register">Register</a></li>
    </ul>
  </div>
</nav>
 
<div class="container">
  <h3>Welcome to YesDeal</h3>
  <p>YesDeal was founded in 2000 in India.</p>
</div>

<c:choose>
		<c:when test="${CategoryPageClicked}">
			<c:import url="/WEB-INF/views/Category.jsp"></c:import>
		</c:when>
	</c:choose>



<c:choose>
		<c:when test="${ProductPageClicked}">
			<c:import url="/WEB-INF/views/Product.jsp"></c:import>
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${SupplierPageClicked}">
			<c:import url="/WEB-INF/views/Supplier.jsp"></c:import>
		</c:when>
	</c:choose>
</body>
</html>
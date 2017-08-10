<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html lang="en-US">
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 </head>
<title>Category</title>
<body>

	<c:url var="addAction" value="saveCategory"></c:url>

	<form:form action="${addAction}" modelAttribute="category" id="btn-add"  method="POST">
		

			<table >

				<tr>
					<c:if test="${category.id!=0}">
						<td>CategoryId:</td>
						<td><form:input path="categoryid" />

</td>
				</c:if>
 
				<tr>
					<td>CategoryName:</td><td><form:input path="categoryName" />


</td>
				<tr>
					<td>CategoryDescription:</td>
					<td><form:input path="categoryDescription" />


</td>
				<tr>
				<td colspan="2"><c:if test="${category.id==0}">
							<input type="submit" value="submit" id="btn-submit">
						</c:if> 
				<tr>
					<td colspan="2" class="success-msg"><c:out value="${msg}" /></td>
			</table>
			<table>
			
				
			</table>
			
	</form:form>
 




</body>
</html>
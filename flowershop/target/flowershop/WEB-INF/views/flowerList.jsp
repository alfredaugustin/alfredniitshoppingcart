<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sets Available</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
     <script src="https://ajax.googleapis.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<center><h3>List of Flower Sets Available</h3></center>
<br>
<center>
	<table border="0" class="table table-striped table-hover">
		<tr>
			<th width="20%"></th>
			<th>F_ID</th>
			<th>NAME</th>
			<th>VENDOR</th>
			<th>CATEGORY</th>
			<th>View <security:authorize access="hasRole('ROLE_ADMIN')">/ Delete / Edit</security:authorize></th>
		</tr>
	
		<c:forEach items="${flowers}" var="f">
		<tr>
		<td><img src="<c:url value="/resources/images/${f.fid}.png"/>" width="50%"/></td>
		<td>${f.fid}</td>
		<td>${f.name}</td>
		<th>${f.vendor}</th>
		<td>${f.category.categoryName}</td>		
		<td>
		<a href="getFlowerByFid/${f.fid}"><span class="glyphicon glyphicon-info-sign"></span></a><security:authorize access="hasRole('ROLE_ADMIN')"> / <a href="admin/delete/${f.fid }"><span class="glyphicon glyphicon-trash"></span></a> / <a href="admin/flower/editFlower/${f.fid }"><span class="glyphicon glyphicon-edit"></span></a></security:authorize>
		</td>
		</tr>
		
		</c:forEach>
	</table>
</center>
<br>
<br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>

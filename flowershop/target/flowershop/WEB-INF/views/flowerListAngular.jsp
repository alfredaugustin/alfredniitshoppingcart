<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html >
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sets Available</title>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div ng-app="myapp">
<div ng-controller="myController" ng-init="getFlowerList()">

<center><h2>List of Flower Sets Available</h2></center>

Search: <input type="text" ng-model="searchCondition" placeholder="Search Flower sets">

	<table border="0" class="table table-striped table-hover">
	<thead>
		<tr>
			<th width="20%"><!--  --></th>
			<th>F_ID</th>
			<th>NAME</th>
			<th>VENDOR</th>
			<th>PRICE</th>
			<th>CATEGORY</th>
			<th>View <security:authorize access="hasRole('ROLE_ADMIN')">/ Delete / Edit</security:authorize></th>
		</tr>
	</thead>
	
<tbody>
<tr ng-repeat="f in flowers | filter:searchCondition">
	<c:url value="resources/images/{{f.fid}}.png" var="src" />
		<td ><img src="${src}" style="width: 100%" align="middle" /></td>
		<td>{{f.fid}}</td>
		<td>{{f.name}}</td>
		<th>{{f.vendor}}</th>
		<th><i class="fa fa-inr" style="font-size:15px"></i> {{f.price}}</th>
		<td>{{f.category.categoryName}}</td>
		<td><a href="getFlowerByFid/{{f.fid}}" class="btn btn-danger btn-md"><span class="glyphicon glyphicon-info-sign"></span></a>
		<security:authorize  access="hasRole('ROLE_ADMIN')">
		<a href="admin/delete/{{f.fid}}" class="btn btn-danger btn-md"><span class="glyphicon glyphicon-trash"></span></a>
		<a href="admin/flower/editFlower/{{f.fid}}" class="btn btn-danger btn-md"><span class="glyphicon glyphicon-edit"></span></a>
		</security:authorize></td>
</tr>

</tbody>
</table>
</div>
</div>
<br>
<br>
<%@ include file="footer.jsp" %>
</body>
</html>
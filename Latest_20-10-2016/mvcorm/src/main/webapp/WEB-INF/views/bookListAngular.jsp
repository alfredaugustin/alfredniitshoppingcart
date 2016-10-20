<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
    <%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html >
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div ng-app="app">
<div ng-controller="bookController" ng-init="getBookList()">


Search: <input type="text" ng-model="searchCondition" placeholder="Search Book">
<H1> List of Books</H1>
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<table border="0" class="table table-striped table-hover">
	<thead>
		<tr>
		<th width="5%">Image</th>
			<th>ISBN</th>
			<th>TITLE</th>
			<th>CATEGORY NAME</th>
			<th>View/edit/delete</th>
		</tr>
</thead>
<tbody>
<tr ng-repeat="b in books | filter:searchCondition">
<c:url value="resources/images/{{b.isbn}}.png" var="src" />
		<td ><img src="${src }" style="width: 50%" align="middle"/></td>
		<td>{{b.isbn}}</td>
		<td>{{b.title}}</td>
		<td>{{b.category.categoryName}}</td>
		<td><a href="getBookByIsbn/{{b.isbn}}"><span class="glyphicon glyphicon-info-sign"></span></a>
		<security:authorize  access="hasRole('ROLE_ADMIN')">
		<a href="admin/delete/{{b.isbn}}"><span class="glyphicon glyphicon-trash"></span></a>
		<a href="admin/book/editBook/{{b.isbn}}"><span class="glyphicon glyphicon-edit"></span></a>
		</security:authorize>
</tr>

</tbody>
</table>
</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- JSON  -->
<div ng-app="" ng-init="book={title:'Operating',
								author:'james',
								price:100,
								quantity:2}">
<table>
<tr>
<td>{{book.title}}</td>
<td>{{book.author}}</td>
<td>{{book.price}}</td>
<td>{{book.quantity}}</td>
<td>{{book.price*book.quantity}}</td>
</tr>
</table>
</div>
</body>
</html>
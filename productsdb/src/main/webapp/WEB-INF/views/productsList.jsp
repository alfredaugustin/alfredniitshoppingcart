<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product DAO</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  -->
  <!--   <script src="https://ajax.googleapis.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>     -->

<style>
table, th, td 
{
    border: 1px solid black;
    font-family: "Arial Narrow", arial, narrow;
    font-size: 150%;
    text-align: center;
}
</style>
</head>

<body>
<h2>List of Products Available</h2><br>

<table style="width:50%">
<tr>
<th>PRODUCT_ID</th>
<th>PRODUCT_NAME</th>
</tr>

<c:forEach items="${products}" var="p" >
<tr>
<td><a href="getProductById/${p.product_id}">${p.product_id}</a></td><td>${p.product_name}</td>
<td><a href="delete/${p.product_id}"><span class="glyphicon glyphicon-trash"></span></a></td>
</tr>
</c:forEach>

</table>
</body>
</html>
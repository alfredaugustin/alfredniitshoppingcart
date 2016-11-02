<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>

<body>

<div class="container-wrapper">
<div class="container">

<section>
<center>
<h1><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h1>
<p>All the selected flower sets in your shopping cart</p>
</center>
</section>

<div ng-app="myapp" >
<div ng-controller="myController" ng-init="getCart(${cartId})">
<br>
<h3>List of flower sets purchased:</h3>

<table class="table table-hover">
<thead>
<tr>
<th>NAME</th>
<th>QUANTITY</th>
<th>PRICE</th>
<th>TOTAL PRICE</th>
</tr>
</thead>

<tr ng-repeat="cartitem in cart.cartItem">
<td>
{{cartitem.flower.name}}
</td>
<td>
{{cartitem.quantity}}
</td>
<td>
{{cartitem.flower.price}}
</td>
<td>
{{cartitem.totalPrice}}
</td>
<td>
<a href="#" class="label label-danger" ng-click="removeFromCart(cartitem.cartItemId)">
<span class="glyphicon glyphicon-remove"></span> Remove</a>
</td>
</tr>
</table>
<br>
Grand Total Price: {{calculateGrandTotal()}}
<br>
<br>
<a class="btn btn-danger pull-left" ng-click = "clearCart()">
<span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
<br>
<br>
<br>
<a href="<c:url value="/flowerListAngular" ></c:url>" class="btn btn-default">Continue shopping</a>
<br>
<br>
<a href="<c:url value="/order/${cartId}"></c:url>" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Check out</a>
</div>
</div>
</div>
</div>
<br>
<br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
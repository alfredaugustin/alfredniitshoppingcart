<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>

<html>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
</script>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"> -->
<style>
p.arialn 
{
    font-family: "Arial Narrow", arial, narrow;
    font-size: 150%;
}
</style>
<title>Details</title>

</head>



<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div class="container">
<h3><u>Details</u></h3>
<div ng-app="myapp">
<div ng-controller="myController" >

<p class="arialn">
<img src="<c:url value="/resources/images/${flowerObj.fid}.png" />" width="40%"/> <br><br>
F_ID : ${flowerObj.fid } <br>
NAME : ${flowerObj.name } <br>
VENDOR : ${flowerObj.vendor } <br>
PRICE : <i class="fa fa-inr" style="font-size:23px"></i>${flowerObj.price } <br>
${flowerObj.description}<br><br>
</p>



<security:authorize access="hasRole('ROLE_USER')">
<a  ng-click="addToCart(${flowerObj.fid})" class="btn btn-warning btn-large"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</a>
</security:authorize>
<br><br><br>
<a href="<c:url value="/flowerListAngular" ></c:url>" class="btn btn-default" >Back</a>

</div>
</div>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
</div>
<br>
<br>
<br>
<br>

<%@ include file="/WEB-INF/views/footer.jsp" %>

</body>
</html>
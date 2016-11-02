<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
	}
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0;
	  background-color: #FF998F;
    }
   
  </style>
<title></title>

</head>
<body>


<div class="jumbotron">
  <div class="container text-center">
  <font face="Vivaldi" >
    <h1>Alfred's Flower Shop</h1>
    <p>Flowers for all Occasions to flourish</p>
  </font>
  </div>
</div>

	<font face="arial narrow" size="5"> 
		<nav class="navbar navbar-inverse">
		<div class="container-fluid text-center">
			<ul class="nav navbar-nav ">
				<li><a href="<c:url value="/home"/>">Home</a></li>
				<li><a href="<c:url value="/about"/>">About us</a></li>
				
							
							<!--  User has logged in  -->
		<c:if test="${pageContext.request.userPrincipal.name!=null}" >
			<security:authorize access="hasRole('ROLE_ADMIN')">
			
				<li><a href="<c:url value="/admin/flower/addFlower"/>">Add a New Flower Set</a></li>
		
			</security:authorize>
		
				<%-- <li><a href="<c:url value="/getAllFlowers"/>">Browse All Flower Sets</a></li> --%>
			 </ul>
			 <ul class="nav navbar-nav navbar-right">
			    <li><a>Welcome, ${pageContext.request.userPrincipal.name} !</a></li>
				<li><a href="<c:url value="/flowerListAngular"/>">Browse All Flower Sets</a></li>
				
				
			<security:authorize access="hasRole('ROLE_USER')">
			<li><a href="<c:url value="/cart/getCartId"/>"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
			</security:authorize>
				
				<li><a href="<c:url value="/j_spring_security_logout" />"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		</c:if >
						
						<!--  when the user not logged in -->
		<c:if test="${pageContext.request.userPrincipal.name==null}">
			<ul class="nav navbar-nav navbar-right">
			<li><a href="<c:url value="/customer/registration" ></c:url>">Register</a></li>
			<li><a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</c:if>
			
				
			</ul>
		</div>
		</nav>
	</font>

</body>
</html>
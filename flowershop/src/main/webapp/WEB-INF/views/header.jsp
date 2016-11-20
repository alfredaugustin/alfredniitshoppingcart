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
      background-color:#FF5050;
       
	}
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0;
	  background-color: #FF998F;
    }
   	body {
	background-color: white;
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

	<font face="agency fb" size="5" color="white"> 
		<nav class="navbar navbar-inverse">
		<div class="container-fluid text-center">
			<ul class="nav navbar-nav ">
				<li><a href="<c:url value="/home"/>"><font color="black">Home</font></a></li>
				<li><a href="<c:url value="/about"/>"><font color="black">About us</font></a></li>
				
							
							<!--  User has logged in  -->
		<c:if test="${pageContext.request.userPrincipal.name!=null}" >
			
		
				<%-- <li><a href="<c:url value="/getAllFlowers"/>">Browse All Flower Sets</a></li> --%>
			 </ul>
			 <ul class="nav navbar-nav navbar-right">
			    <li><a><font color="black">Welcome, ${pageContext.request.userPrincipal.name} !</font></a></li>
				<li><a href="<c:url value="/flowerListAngular"/>"><font color="black">Browse All Flower Sets</font></a></li>
			<security:authorize access="hasRole('ROLE_ADMIN')">
			
				<li><a href="<c:url value="/admin/flower/addFlower"/>"><font color="black">Add a New Flower Set</font></a></li>
		
			</security:authorize>	
				
			<security:authorize access="hasRole('ROLE_USER')">
			<li><a href="<c:url value="/cart/getCartId"/>"><font color="black"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></font></li>
			</security:authorize>
				
				<li><a href="<c:url value="/j_spring_security_logout" />"><font color="black"><span class="glyphicon glyphicon-log-out"></span> Logout</font></a></li>
		</c:if >
						
						<!--  when the user not logged in -->
		<c:if test="${pageContext.request.userPrincipal.name==null}">
			<ul class="nav navbar-nav navbar-right">
			<li><a href="<c:url value="/customer/registration" ></c:url>"><font color="black">Register</font></a></li>
			<li><a href="<c:url value="/login"></c:url>"><font color="black"><span class="glyphicon glyphicon-log-in"></span> Login</font></a></li>
			</ul>
		</c:if>
			
				
			</ul>
		</div>
		</nav>
	</font>

</body>
</html>
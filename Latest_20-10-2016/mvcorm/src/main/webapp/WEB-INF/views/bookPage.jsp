<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<style>
p.arialn 
{
    font-family: "Arial Narrow", arial, narrow;
    font-size: 150%;
}
</style>

<title>Book Page</title>
</head>

<body>
<p class="arialn"><u>Book Details</u></p>
<p class="arialn">
<img src="<c:url value="/resources/images/${bookObj.isbn}.png" />" width="10%"/> <br>
ISBN: ${bookObj.isbn} <br>
TITLE: ${bookObj.title} <br>
AUTHOR: ${bookObj.author} <br>
PUBLISHER: ${bookObj.publication} <br>
PRICE: <i class="fa fa-inr" style="font-size:23px"></i>${bookObj.price} <br>

<br>
</p>
<center>
<%@ include file="footer.jsp" %>
</center>
</body>

</html>
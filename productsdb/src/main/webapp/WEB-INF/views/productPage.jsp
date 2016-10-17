<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
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

<title>Product Page</title>
</head>
<body>

<p class="arialn"><u>Product Details</u></p>
<p class="arialn">
PRODUCT ID: ${productObj.product_id} <br>
PRODUCT CATEGORY: ${productObj.product_category} <br>
PRODUCT DESCRIPTION: ${productObj.product_description} <br>
PRODUCT MANUFACTURER: ${productObj.product_manufacturer} <br>
PRODUCT NAME: ${productObj.product_name} <br>
PRODUCT PRICE: <i class="fa fa-inr" style="font-size:23px"></i>${productObj.product_price} <br>
UNIT IN STOCK: ${productObj.unit_in_stock} <br>
<br>
</p>


</body>
</html>
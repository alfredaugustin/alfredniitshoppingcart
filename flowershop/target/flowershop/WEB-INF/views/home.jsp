<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alfred's Flower Shop</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<center>
<font face="arial narrow" size="5">
<blockquote><h2>Hello there and Welcome!...</h2></blockquote>
<p>We have here a great set of deals for the flower sets that you wish to choose, from our one and unique online flower shop.
You may start over by signing up and then log in to purchase from our variety of brand new items.</p>
<br>
<br>
<h3>Most of the deals available:</h3>
<br>
</font>
</center>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">MAX FLOWER SET DEAL</div>
        <div class="panel-body"><img src="http://localhost:8080/flowershop/resources/images/14.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 5 flower sets and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">THANKSGIVING DEAL</div>
        <div class="panel-body"><img src="http://localhost:8080/flowershop/resources/images/16.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy Thanksgiving flower sets and get a Chocolate eggs</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">HALL DECORATION DEAL</div>
        <div class="panel-body"><img src="http://localhost:8080/flowershop/resources/images/13.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy Hall Decoration sets and get an extra set of confetti</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">BIRTHDAY GREETING DEAL</div>
        <div class="panel-body"><img src="http://localhost:8080/flowershop/resources/images/9.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy Birthday greeting bouquet and get an assorted set of chocolates</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">SYMPATHY DEAL</div>
        <div class="panel-body"><img src="http://localhost:8080/flowershop/resources/images/10.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy a Sympathy bouquet and get a greeting card of your choice</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">GET WELL SOON DEAL</div>
        <div class="panel-body"><img src="http://localhost:8080/flowershop/resources/images/8.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy a Get well soon bouquet and get a greeting card of the same</div>
      </div>
    </div>
  </div>
</div><br><br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
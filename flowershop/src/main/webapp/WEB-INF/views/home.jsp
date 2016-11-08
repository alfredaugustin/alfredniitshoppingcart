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
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
       	<li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="http://i4.fnp.com/images/ban/l/birthday-flower-usa.jpg" alt="...">
          <div class="carousel-caption">
          </div>
        </div>
        
        <div class="item">
          <img src="http://i4.fnp.com/images/ban/l/sameday-delivery-gifts-usa.jpg" alt="...">
          <div class="carousel-caption">
          </div>
        </div>
        
        <div class="item">
          <img src="http://i4.fnp.com/images/ban/l/birthday-flowers-211.jpg" alt="...">
          <div class="carousel-caption">
          </div>
        </div>
        
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

<br><br><br>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">MAX FLOWER SET DEAL</div>
        <div class="panel-body"><img src="http://i4.fnp.com/images/pr/l/fondest-affections_1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 5 flower sets and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">THANKSGIVING DEAL</div>
        <div class="panel-body"><img src="http://i4.fnp.com/images/pr/l/royal-love_1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy Thanksgiving flower sets and get a Chocolate eggs</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">HALL DECORATION DEAL</div>
        <div class="panel-body"><img src="http://i4.fnp.com/images/pr/l/classic-celebrations_1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
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
        <div class="panel-body"><img src="http://i4.fnp.com/images/pr/l/flowery-celebrations_1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy Birthday greeting bouquet and get an assorted set of chocolates</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">SYMPATHY DEAL</div>
        <div class="panel-body"><img src="http://i4.fnp.com/images/pr/l/bouquet-n-greeting-card_1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy a Sympathy bouquet and get a greeting card of your choice</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">GET WELL SOON DEAL</div>
        <div class="panel-body"><img src="http://i4.fnp.com/images/pr/l/asiatic-lilies_1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy a Get well soon bouquet and get a greeting card of the same</div>
      </div>
    </div>
  </div>
</div><br><br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
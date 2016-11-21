<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank you!</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for shopping!</h1>

                    <p>Your order will be shipped in two business days...</p>
                </div>
            </div>
        </section>
<br>
<br>
        <section class="container">
            <p><a href="<spring:url value="/home" />" class="btn btn-danger">Ok</a></p>
        </section>
	</div>
</div>
<br>
<br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
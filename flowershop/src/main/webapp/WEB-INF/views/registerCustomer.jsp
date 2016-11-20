<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1><u><strong>Customer Registration</strong></u></h1>
			
			<p class="lead">Please fill in the following fields</p>
			
		</div>
		<c:url value="/customer/registration" var="url"></c:url>
		<form:form action="${url}" method="post" commandName="customer" >
		
		<h3><u>Basic Information</u></h3>
		
		<div class="form-group">
			<label for="name">Name:</label>
			<form:input path="customerName" class="form-Control" required="test" title="test"/>
		<%-- 	<form:errors path="customerName" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="email">E-mail:</label>
			<form:input path="customerEmail" class="form-Control" required="test" title="test"/>
			<c:if test="${duplicateEmail!=null}">
			${duplicateEmail}
			</c:if>
			<%-- <form:errors path="customerEmail" cssStyle="color: #ff0000" />		 --%>	
		</div>
		
		
		
		<div class="form-group">
			<label for="phone">Phone:</label>
			<form:input path="customerPhone" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="customerPhone" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="username">Username:</label>
			<form:input path="users.username" class="form-Control" required="test" title="test"/>
			
			<c:if test="${duplicateUname!=null}">
			${duplicateUname}
			</c:if>
			<%-- <form:errors path="users.username" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="password">Password:</label>
			<form:input path="users.password" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="users.password" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<br/>
		
		<h3><u>Billing Address</u></h3>
		
		<div class="form-group">
			<label for="billingStreet">Street Name:</label>
			<form:input path="billingAddress.streetName" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="billingAddress.streetName" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="billingApartmentNumber">Apartment Number:</label>
			<form:input path="billingAddress.apartmentNumber" class="form-Control" required="test" title="test"/>
		<%-- 	<form:errors path="billingAddress.apartmentNumber" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="billingCity">City:</label>
			<form:input path="billingAddress.city" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="billingAddress.city" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="billingState">State:</label>
			<form:input path="billingAddress.state" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="billingAddress.state" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="billingCountry">Country:</label>
			<form:input path="billingAddress.country" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="billingAddress.country" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="billingZip">Zipcode:</label>
			<form:input path="billingAddress.zipcode" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="billingAddress.zipcode" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<br/>
		
		<h3><u>Shipping Address</u></h3>
		
		<div class="form-group">
			<label for="shippingStreet">Street Name:</label>
			<form:input path="shippingAddress.streetName" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="shippingAddress.streetName" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="shippingApartmentNumber">Apartment Number:</label>
			<form:input path="shippingAddress.apartmentNumber" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="shippingAddress.apartmentNumber" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="shippingCity">City:</label>
			<form:input path="shippingAddress.city" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="shippingAddress.city" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="shippingState">State:</label>
			<form:input path="shippingAddress.state" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="shippingAddress.state" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="shippingCountry">Country:</label>
			<form:input path="shippingAddress.country" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="shippingAddress.country" cssStyle="color: #ff0000" /> --%>
		</div>
		
		<div class="form-group">
			<label for="shippingZip">Zipcode:</label>
			<form:input path="shippingAddress.zipcode" class="form-Control" required="test" title="test"/>
			<%-- <form:errors path="shippingAddress.zipcode" cssStyle="color: #ff0000" /> --%>
		</div>
		<br>
		<h6><u><strong>Note:</strong></u> All the fields in this form are mandatory. Provided, the details submitted will be made permanent and will be the final point of contact and reference</h6>
		<br><br>
		
		<input type="submit" value="Submit" class="btn btn-default">
		<a href="<c:url value="/home" />" class="btn btn-default">Cancel</a>
		
		</form:form>
</div>
</div>
<br>
<br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
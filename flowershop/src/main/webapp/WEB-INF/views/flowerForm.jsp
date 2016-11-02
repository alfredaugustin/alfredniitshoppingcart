<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a new Flower set</title>
</head>
<body>
	<!--  http://localhost:8080/welcomehelloworld/admin/flower/addFlower -->
	<br>
	
	<c:url value="/admin/flower/addFlower" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="flowerFormObj" enctype="multipart/form-data">
	<h3>Insert a new record about a Flower set:</h3>
		<table>
		<tr>
			<td><form:label path="fid"></form:label></td>
			<td><form:hidden path="fid" /></td>
        </tr>
        
        <tr>
        <td><form:label path="name">NAME:</form:label>  </td>
        <td><form:input path="name"></form:input>
        <form:errors path="name"></form:errors></td>
	    </tr>
	    
	    <tr>
        <td><form:label path="vendor">VENDOR:</form:label>  </td>
        <td><form:input path="vendor"></form:input>
        <form:errors path="vendor"></form:errors></td>
	    </tr>
	    
	    <tr>
        <td><form:label path="price">PRICE:</form:label>  </td>
        <td><form:input path="price"></form:input>
        <form:errors path="price"></form:errors></td>
	    </tr>
	    
	    <tr>
        <td><form:label path="description">DESCRIPTION: </form:label>  </td>
        <td><form:input path="description"></form:input></td>
	    </tr>
	    
	    <tr>
	    <td><form:label path="category">CATEGORY: </form:label></td>
	    <td>
	    <form:radiobutton path="category.cid" value="1"/>New Arrivals
	     <form:radiobutton path="category.cid" value="2"/>Discount Sale	
	      <form:radiobutton path="category.cid" value="3"/>General
	       <form:radiobutton path="category.cid" value="4"/>Clearance Sale
	    </td>
	    </tr>
	    
	    <tr>
		<td><form:label path="flowerImage">Upload image</form:label></td>
		<td><form:input type="file" path="flowerImage" /></td>
		</tr>
	    
	    <tr>
	    <td colspan="2"><input type="submit" value="Add Flower set"></td>
	    </tr>
		</table>
	</form:form>
<br>
<br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>

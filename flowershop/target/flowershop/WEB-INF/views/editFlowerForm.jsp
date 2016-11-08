<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<c:url value="/admin/flower/editFlower" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editFlowerObj">
	<h3>Edit the following fields:</h3>
		<table>
		<tr>
			<td><form:label path="fid"></form:label></td>
			<td><form:input path="fid" disabled="true"/>
			<form:hidden path="fid" /></td>
        </tr>
        
        <tr>
        <td><form:label path="name">NAME:</form:label>  </td>
        <td><form:input path="name"></form:input></td>
	    </tr>
	    
	    <tr>
        <td><form:label path="vendor">VENDOR:</form:label>  </td>
        <td><form:input path="vendor"></form:input></td>
	    </tr>
	    
	    <tr>
        <td><form:label path="price">PRICE:</form:label>  </td>
        <td><form:input path="price"></form:input></td>
	    </tr>
	    
	    <tr>
        <td><form:label path="description">DESCRIPTION:</form:label>  </td>
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
	    <td colspan="2"><input type="submit" value="Edit Flower set"></td>
	    </tr>
		</table>
	</form:form>
	<br>
<br>
<br>
<br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
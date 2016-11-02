<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/book/editBook" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editBookObj">
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
	    <td><form:label path="category">CHOOSE A CATEGORY </form:label></td>
	    <td>
	    <form:radiobutton path="category.cid" value="1"/>New Arrivals
	     <form:radiobutton path="category.cid" value="2"/>Discount Sale	
	      <form:radiobutton path="category.cid" value="3"/>General
	       <form:radiobutton path="category.cid" value="4"/>Clearance Sale
	    </td>
	    </tr>
	    <tr>
	    <td colspan="2"><input type="submit" value="EditBook"></td>
	    </tr>
		</table>
	</form:form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EDiT</title>
</head>
<body>
<c:url value="/admin/book/editBook" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editBookObj">
		<table>
		<tr>
			<td><form:label path="isbn">ISBN</form:label></td>
			<td><form:input path="isbn" disabled="true"/>
			<form:hidden path="isbn" /></td>
        </tr>
        <tr>
        <td><form:label path="title">TITLE</form:label>  </td>
        <td><form:input path="title"></form:input></td>
	    </tr>
	     <tr>
        <td><form:label path="publication">PUBLICATION</form:label>  </td>
        <td><form:input path="publication"></form:input></td>
	    </tr>
	     <tr>
        <td><form:label path="price">PRICE</form:label>  </td>
        <td><form:input path="price"></form:input></td>
	    </tr>
	     <tr>
        <td><form:label path="author">AUTHOR</form:label>  </td>
        <td><form:input path="author"></form:input></td>
	    </tr>
	    
	    <tr>
	    <td><form:label path="category">CATEGORY</form:label></td>
	    <td>
	    <form:radiobutton path="category.cid" value="1"/>New Arrivals
	     <form:radiobutton path="category.cid" value="2"/>Special Edition	
	      <form:radiobutton path="category.cid" value="3"/>Discount Sale
	       <form:radiobutton path="category.cid" value="4"/>General
	    </td>
	    </tr>
	    <tr>
	    <td colspan="2"><input type="submit" value="Save edited details"></td>
	    </tr>
		</table>
	</form:form>
<center>
<%@ include file="footer.jsp" %>
</center>
</body>
</html>

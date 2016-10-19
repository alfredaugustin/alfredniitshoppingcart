<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books DAO</title>


     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
     <script src="https://ajax.googleapis.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>     


<!--  <style>
table, th, td 
{
    border: 1px solid black;
    font-family: "Arial Narrow", arial, narrow;
    font-size: 129%;
    text-align: center;
}
</style> -->
</head>


<body>
<center>
<font face="arial narrow" size="5"> 

<h2>List of Books Available</h2><br>

<table border="0" class="table table-striped table-hover">
<tr>
<th width="5%">Image</th>
<th>ISBN</th>
<th>TITLE</th>
<th>CATEGORY NAME</th>
<th>CATEGORY ID</th>
<th>View <security:authorize access="hasRole('ROLE_ADMIN')">/ Delete / Edit </security:authorize></th>
</tr>

<c:forEach items="${books}" var="b" >
<tr>
<c:url value="/resources/images/${b.isbn}.png" var="src" />
<td><img src="${src}" style="width:50%" align="middle"/> </td>
<td><a href="getBookByIsbn/${b.isbn}">${b.isbn}</a></td>
<td>${b.title}</td>
<td>${b.category.categoryName}</td>
<td>${b.category.cid}</td>
<td>
<a href="getBookByIsbn/${b.isbn}"><span class="glyphicon glyphicon-info-sign"></span></a> <security:authorize access="hasRole('ROLE_ADMIN')"> / <a href="admin/delete/${b.isbn}"><span class="glyphicon glyphicon-trash"></span></a> / <a href="admin/book/editBook/${b.isbn }"><span class="glyphicon glyphicon-edit"></span></a></security:authorize>
</td>
</tr>

</c:forEach>

</table>

<%@ include file="footer.jsp" %>
</font> 
</center>
</body>

</html>
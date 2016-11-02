<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
List of Flower Sets Available
<br>
	<table>
		<tr>
			<th>F_ID</th>
			<th>NAME</th>
			<th>CATEGORY</th>
		</tr>
	
		<c:forEach items="${flowers}" var="f">
		<tr>
		<td><a href="getFlowerByFid/${f.fid}" >${f.fid}</a></td><td>${f.name }</td>
		<td><a href="admin/delete/${f.fid }"><span class="glyphicon glyphicon-trash"></span></a></td>
		<a href="admin/book/editBook/${b.isbn }"><span class="glyphicon glyphicon-edit"></span></a>
		</tr>
		
		</c:forEach>
	</table>

</body>
</html>

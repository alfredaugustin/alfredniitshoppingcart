<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<head>
<title>Login</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div id="login-box">
        
            <h2>Login with Username and Password</h2>

			<br>
			<c:if test="${not empty registrationSuccess}">
                <div class="logout" style="color: #ff0000;">${registrationSuccess}</div>
            </c:if>

            <c:if test="${not empty logout}">
                <div class="logout" style="color: #ff0000;">${logout}</div>
            </c:if>
                        
            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
            
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <br>
                <div class="col-xs-4">
                    <label for="username">Username: </label>
                    <input type="text" id="username" name="j_username" class="form-control" />
                </div>
                <br><br><br><br>
                <div class="col-xs-4">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="j_password" class="form-control" />
                </div>
                <br><br><br><br><br>
                <div class="col-xs-4">
                <input type="submit" value="Submit" class="btn btn-default"  >
            	</div>
            </form>
            
            
        </div>
    </div>
</div>
<br>
<br>
<br>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

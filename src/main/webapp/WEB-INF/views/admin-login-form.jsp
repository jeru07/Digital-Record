<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Admin Login</h1>
	<div id="root">
		<div id="form">
			<h1>USER DETAILS</h1>
			<form:form action="checkadminloginform" method="post"
				modelAttribute="adminlogin">
				<div>
					<label for="adminName">Admin Name:</label>
					<form:input path="adminName" type="text" />
				</div><br/>
				<div>
					<label for="password">Admin Password:</label>
					<form:input path="password" type="password" />
				</div><br/>
				<div>
					<form:button type="submit" class="register">DONE</form:button></a>
				</div>
			</form:form>
			</div>
			</div>
</body>
</html>
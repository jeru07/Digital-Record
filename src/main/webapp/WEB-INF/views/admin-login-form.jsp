<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
<style>
body {
	background-color: #77DD77;
	font-family: Verdana;
	text-align: center;
	width: 50%;
	background-image:
		url('https://media.istockphoto.com/photos/large-stack-of-files-documents-paperwork-on-desk-picture-id904268154?k=20&m=904268154&s=170667a&w=0&h=jkn4UvVyE49o1OkOx4pKo6Xw2RlQun4Q67vDmNrpH4E=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
form {
	background-color: #fff;
	box-align: center;
	font-size: 20px;
	max-width: 500px;
	margin: 70px auto;
	padding: 30px 20px;
	box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
	text-align: center;
	top: 200px;
	left: 600px;
}
.res{
font-size:20px;
font-weight:bold;
}
.bac {
    position: absolute;
    top: 8px;
    left: 16px;
    font-size: 18px;
}
</style>
</head>
<body>
	<h1>Admin Login</h1>
	<div id="root">
		<div id="form">
			<form:form action="checkadminloginform" method="post"
				modelAttribute="adminlogin">
				<div>
					<label for="adminName">Admin Name:</label>
					<form:input path="adminName" type="text" />
				</div><br/>
				<div>
					<label for="password">Password:</label>
					<form:input path="password" type="password" />
				</div><br/>
				<div>
					<form:button type="submit" class="register">DONE</form:button>
				</div>
			</form:form>
			</div>
			</div>
			<div class ="res">${result}</div>
			
			<a href="/user/first">
	<button class="bac">Back</button></a>
</body>
</html>
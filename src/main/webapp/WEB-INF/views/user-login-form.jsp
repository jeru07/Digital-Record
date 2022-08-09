<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>
<style>
body {
	background-color: #77DD77;
	font-family: Verdana;
	text-align: center;
	width: 50%;
	background-image:
		url('https://png.pngtree.com/thumb_back/fh260/background/20190221/ourmid/pngtree-simple-business-office-document-image_20843.jpg');
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

.container {
	position: relative;
}

.center {
	position: absolute;
	top: 50%;
	width: 100%;
	text-align: center;
	font-size: 18px;
}
/* Styling Button */
.register {
	background-color: #05c46b;
	border: 1px solid #777;
	border-radius: 2px;
	font-family: inherit;
	font-size: 21px;
	display: block;
	width: 100%;
	margin-top: 50px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<h1>User Login</h1>
	

		<div id="root">
			<div id="form">

				<form:form action="checkuserlogin" method="post"
					modelAttribute="users">
					<div>
						<label for="userName">User Name:</label>
						<form:input path="userName" type="text" />
					</div>
					<br />
					<div>
						<label for="userPassword">User Password:</label>
						<form:input path="userPassword" type="password" />
					</div>
					<br />
					<div>
						 <form:button type="submit"
								class="register">DONE</form:button>
					</div>
				</form:form>
			</div>
		</div>
</body>
</html>
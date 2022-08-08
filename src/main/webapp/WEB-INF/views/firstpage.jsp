<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image:
		url('https://icon-library.com/images/admin-user-icon/admin-user-icon-22.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.button {
	position: absolute;
	left: 170px;
	top: 60px;
	background-color: white;
	border: none;
	color: tomato;
	font-weight: bold;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 60px;
	margin: 6px 3px;
	cursor: pointer;
	width: 25%;
}
.button1 {
	position: absolute;
	left: 680px;
	top: 60px;
	background-color: white;
	border: none;
	color: tomato;
	font-weight: bold;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 60px;
	margin: 6px 3px;
	cursor: pointer;
	width: 25%;
}

.signin {
	position: absolute;
	left: 200x;
	top: 130px;
	background-color: white;
	border: none;
	color: blue;
	font-weight: bold;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 40px;
	margin: 6px 3px;
	cursor: pointer;
	width: 25%;
}
.signup {
	position: absolute;
	left: 250px;
	top: 130px;
	background-color: white;
	border: none;
	color: blue;
	font-weight: bold;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 40px;
	margin: 6px 3px;
	cursor: pointer;
	width: 25%;
}

</style>
</head>
<body>
	<a href="/document/addformdocument">
	<button class="button">USER</button></a>
	
	<a href="/admin/adminform">
	<button class="button1">ADMIN</button></a>
	
	<a href="/user/userlogin">
	<button class="signin">SIGNIN</button></a>
	
	<a href="/user/addformuser">
	<button class="signup">SIGNUP</button></a>
</body>
</html>
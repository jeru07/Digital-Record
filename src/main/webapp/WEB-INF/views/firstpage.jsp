<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>First Page</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
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
.fa-home{
    position: absolute;
    top: 20px;
    left: 16px;
    font-size: 4em;
}
</style>
</head>
<body>
	<a href="/user/userlogin">
	<button class="button">USER</button></a>
	
	<a href="/admin/adminform">
	<button class="button1">ADMIN</button></a>
	
	<a href="/user/home">
	 <em class="fa fa-home" style="font-size:48px;color:black"></em></a>	
	
</body>
</html>
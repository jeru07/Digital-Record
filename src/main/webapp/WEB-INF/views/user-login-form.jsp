<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
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
.bac {
    position: absolute;
    top: 8px;
    left: 16px;
    font-size: 18px;
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
	align-items: center;
  background-image: linear-gradient(144deg,#AF40FF, #5B42F3 50%,#00DDEB);
  border: 0;
  border-radius: 8px;
  box-shadow: rgba(151, 65, 252, 0.2) 0 15px 30px -5px;
  box-sizing: border-box;
  color: #FFFFFF;
  display: initial;
  font-family: Phantomsans, sans-serif;
  font-size: 20px;
  justify-content: center;
  line-height: 1em;
  max-width: 100%;
  min-width: 140px;
  padding: 10px 24px;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
  cursor: pointer;
}
.register:active,
.register:hover{
outline: 0;
}
@media (min-width: 768px){
.register {
    font-size: 19px;
    min-width: 196px;
  }
}
.fa-arrow-left{
    position: absolute;
    top: 20px;
    left: 16px;
    font-size: 4em;
}

.re{
color:white;
font-weight:bold;
font-size:20px;
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
					<label for="userPassword">Password:</label>
					<form:input path="userPassword" type="password" />
				</div>
				<br />
				<div>
					<form:button class="register">DONE</form:button>
				</div>
          
			</form:form>
			<a href="/user/addformuser">
						<button type="submit"
								class="register">SIGN UP</button></a>
		</div>
	</div>
		<div class="re">${result}</div>
		
		<a href="/user/first">
      <em class="fa fa-arrow-left" style="font-size:48px;color:white"></em></a>	
	
</body>
</html>
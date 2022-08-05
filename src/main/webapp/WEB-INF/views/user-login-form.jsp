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
 
        /* Styling the Body element i.e. Color,
        Font, Alignment */
        body {
            background-color: #05c46b;
            font-family: Verdana;
            text-align: center;
            width:50%;
        }
 
        /* Styling the Form (Color, Padding, Shadow) */
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px 20px;
            box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
        }
 
        /* Styling form-control Class */
        .form-control {
            text-align: left;
            margin-bottom: 25px;
        }
 
        /* Styling form-control Label */
        .form-control label {
            display: block;
            margin-bottom: 20px;
            
        }
 
        /* Styling form-control input,
        select, textarea */
        .form-control input,
    {
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            padding: 10px;
            display: block;
            width: 95%;
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
			<h1>USER DETAILS</h1>
			<form:form action="checkuserlogin" method="post"
				modelAttribute="users">
				<div>
					<label for="userName">User Name:</label>
					<form:input path="userName" type="text" />
				</div><br/>
				<div>
					<label for="userPassword">User Password:</label>
					<form:input path="userPassword" type="password" />
				</div><br/>
				<div>
					<form:button type="submit" class="register">DONE</form:button>
				</div>
			</form:form>
			</div>
			</div>
</body>
</html>
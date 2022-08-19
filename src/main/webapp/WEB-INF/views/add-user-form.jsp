<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
body {
	color: black;
	background-color: #EAEDF0;
	font-family: "Helvetica", "Arial", sans-serif;
	font-size: 20px;
	line-height: 1.3;
	display: flex;
	flex-direction: column;
	align-items: center;
	background-image:
		url('https://png.pngtree.com/thumb_back/fh260/back_our/20190619/ourmid/pngtree-tech-background-image-of-desktop-notebook-and-computer-image_133044.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

input[type=text], input[type=password], input[type=date] {
	width: 100%;
	padding: 10px;
	margin: 10px 0 22px 0;
	display: inline-block;
	border-color: #f1f1f1;
}

.register {
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}
.bac {
    position: absolute;
    top: 8px;
    left: 16px;
    font-size: 18px;
}
.text-danger {
	color: #7FE817
}
.fa-arrow-left{
    position: absolute;
    top: 20px;
    left: 16px;
    font-size: 4em;
}
</style>
<script>
<%@include file="/WEB-INF/Script/validation.js"%>
</script>
</head>
<body>
	<div id="root">
		<div id="form">
			<h1>USER DETAILS</h1>
			<form:form action="add" method="post" modelAttribute="addusers" class="container" name="form">
				<div class="form-control">
					<label for="userName">User Name:</label>
					<form:input path="userName" type="text"
						title="Name can't be empty And User Name must be in alphabets"
						required="true"  placeholder="enter username" onblur="userNameCheck();"/>
					<form:errors path="userName" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="userPassword">User Password:</label>
					<form:input path="userPassword" type="password" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
						title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						required="true"  placeholder="Thinkpad@12" onblur="passwordCheck();" />
					<form:errors path="userPassword" cssClass="text-danger" />
				</div>
				<div>
					<label for="firstName">First Name: </label>
					<form:input path="firstName" type="text"
						title="Name can't be empty And User Name must be in alphabets"
						required="true"  placeholder="enter yout first name"  />
					<form:errors path="firstName" cssClass="text-danger" />
				</div>
				<div>
					<label for="lastName">Last Name: </label>
					<form:input path="lastName" type="text"
						title="Name can't be empty And User Name must be in alphabets"
						required="true"  placeholder="enter your last name"/>
					<form:errors path="lastName" cssClass="text-danger" />
				</div>
				<div>
					<label for="dateOfBirth">Date of Birth: </label>
					 <input type="date" id="dateOfBirth" name="dateOfBirth" onblur="checkDateOfBirth();" required />
					<form:errors path="dateOfBirth" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="eMail">E-mail: </label>
					<form:input path="eMail" type="text"
						title="Mail Id is not in correct format"
						pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" placeholder="welcome@gmail.com" required="true"  onblur="emailCheck();" />
						
					<form:errors path="eMail" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="phoneNumber">Phone Number: </label>
					<form:input path="phoneNumber" type="text"
					title="phone number is not in correct format"
						placeholder="1234567890" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" onblur="phoneNoCheck();" />
					<br>
					<form:errors path="phoneNumber" cssClass="text-danger" />
				</div>
				<div>
					<label for="gender">Gender: </label> <input type="radio"
						id="gender" name="gender" value="male" />Male <input type="radio"
						id="gender" name="gender" value="female" />Female <br />
					<form:errors path="gender" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="address">Address: </label>
					<form:input path="address" type="text" placeholder="enter your address" required="true"/>
					<form:errors path="address" cssClass="text-danger" onblur="addressCheck();" />
				</div>
				<br />
				<div>
					<form:button type="submit" class="register">ADD</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<a href="/user/userlogin">
	 <em class="fa fa-arrow-left" style="font-size:48px;color:black"></em></a>	
	
	</body>
</html>
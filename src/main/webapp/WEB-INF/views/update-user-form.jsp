<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style>

body {
 font-family: 'Open Sans', sans-serif, helvetica, Arial;
 font-weight: 400;
 font-size: 14px;
 color: black;
 /* body background image */
 background-image: linear-gradient(to bottom, rgba(128, 128, 128, 0.541), rgba(204, 0, 255, 0.637)), url(image1.jpg);
  
}
input[type=text], input[type=password],input[type=date] 
{
  width:100%;
  padding: 10px;
  margin: 10px 0 22px 0;
  display: inline-block;
  border-color: black;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="updateusers"  style="margin: auto; width: 220px;">
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" />
					</div>
				</div>
				<div>
					<label for="firstName">First Name</label>
					<div>
						<form:input path="firstName" />
					</div>
				</div>
				<div>
					<label for="lastName">Last Name</label>
					<div>
						<form:input path="lastName" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<div>
						<form:input path="dateOfBirth" />
					</div>
				</div>
				<div>
					<label for="eMail">E-mail</label>
					<div>
						<form:input path="eMail" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<form:button>UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
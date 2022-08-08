<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
<style> 
body {
  color: #5D6063;
  background-color: #EAEDF0;
  font-family: "Helvetica", "Arial", sans-serif;
  font-size: 20px;
  line-height: 1.3;
  display: flex;
  flex-direction: column;
  align-items: center;
   background-image: url('https://media.istockphoto.com/photos/abstract-multi-colored-bokeh-background-lights-at-night-autumn-fall-picture-id1182650732?b=1&k=20&m=1182650732&s=170667a&w=0&h=5LphKncEWNAHpwTXphq9gi0Ix5aDHk22eXgKvtuWR8o=');
	 background-repeat: no-repeat;
      background-attachment: fixed;
       background-size: 100% 100%;
}
input[type=text], input[type=password],input[type=date] 
{
  width:100%;
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
</style>
</head>
<body>
	<div id="root">
		<div id="form">
		<h1>USER DETAILS</h1>
			<form:form action="add" method="post" modelAttribute="addusers">
				<div>
					<label for="userId">User id:</label>
					<form:input path="userId" type="text"/>
				</div>
				<div>
				<label for="userName">User Name:</label> 
				<form:input path="userName" type="text"/> 
				</div>
				<div>
					<label for="userPassword">User Password:</label>
					<form:input path="userPassword" type="password" />
				</div>
				<div>
					<label for="firstName">First Name: </label>
					<form:input path="firstName" type="text"/>
				</div>
				<div>
					<label for="lastName">Last Name: </label>
					<form:input path="lastName" type="text"/>
				</div>
				<div>
					<label for="dateOfBirth">Date of Birth: </label> 
					<input type="date"
						id="dateOfBirth" name="dateOfBirth" type="text">
					<%-- <form:input path="dateOfBirth" /> --%>
				</div>
				<div>
					<label for="eMail">E-mail: </label>
					<form:input path="eMail" type="text"/>
				</div>
				<div>
					<label for="phoneNumber">Phone Number: </label>
					<form:input path="phoneNumber" type="text"/>
				</div>
				<div>
					<label for="gender">Gender: </label> <input type="radio" id="gender"
						name="gender" value="male" />Male <input type="radio" id="gender"
						name="gender" value="female" />Female <br />
					<%-- <form:input path="gender" /> --%>
				</div>
				<div>
					<label for="address">Address: </label>
					<form:input path="address" type="text"/>
				</div><br/>
				<div>
					<form:button type="submit" class="register">ADD</form:button>
					
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
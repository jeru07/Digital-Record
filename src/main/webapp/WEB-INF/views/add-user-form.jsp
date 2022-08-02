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
  font-size: 16px;
  line-height: 1.3;
  display: flex;
  flex-direction: column;
  align-items: center;
}
input[type=text], input[type=password],input[type=date] {
  width:250px;
  padding: 10px;
  margin: 5px 0 22px 0;
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
					<label for="userId">User id: </label>
					<form:input path="userId" type="text"/>
				</div><br/>
				<div>
					<label for="userName">User Name:</label>
					<form:input path="userName" type="text"/>
				</div><br/>
				<div>
					<label for="userPassword">User Password:</label>
					<form:input path="userPassword" type="password" />
				</div><br/>
				<div>
					<label for="firstName">First Name: </label>
					<form:input path="firstName" type="text"/>
				</div><br/>
				<div>
					<label for="lastName">Last Name: </label>
					<form:input path="lastName" type="text"/>
				</div><br/>
				<div>
					<label for="dateOfBirth">Date of Birth: </label> 
					<input type="date"
						id="dateOfBirth" name="dateOfBirth" type="text">
					<%-- <form:input path="dateOfBirth" /> --%>
				</div><br/>
				<div>
					<label for="eMail">E-mail: </label>
					<form:input path="eMail" type="text"/>
				</div><br/>
				<div>
					<label for="phoneNumber">Phone Number: </label>
					<form:input path="phoneNumber" type="text"/>
				</div><br/>
				<div>
					<label for="gender">Gender: </label> <input type="radio" id="gender"
						name="gender" value="male" />Male <input type="radio" id="gender"
						name="gender" value="female" />Female <br />
					<%-- <form:input path="gender" /> --%>
				</div><br/>
				<div>

					<label for="address">Address: </label>
					<form:input path="address" type="text"/>
				</div><br/>
				<div>
					<form:button type="submit" class="register">ADD</form:button>
				</div><br/>
			</form:form>
		</div>
	</div>
</body>
</html>
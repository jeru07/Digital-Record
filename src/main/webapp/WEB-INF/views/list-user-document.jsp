<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER DOCUMENT LIST</title>
<style>
table, th, td {
	border: 1px solid black;
	border-radius: 10px;
	style="width:100%"
}

th, td {
	border-color: #8E44AD;
	background-color: #96D4D4;
	padding: 15px;
	
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getuser"
				style="margin: auto; width: 220px;">
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" readonly="true" />
					</div>
				</div>
				<div>
					<label for="firstName">First Name</label>
					<div>
						<form:input path="firstName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="lastName">Last Name</label>
					<div>
						<form:input path="lastName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<div>
						<form:input path="dateOfBirth" readonly="true" />
					</div>
				</div>
				<div>
					<label for="eMail">E-mail</label>
					<div>
						<form:input path="eMail" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true" />
					</div>
				</div>
				<div></div>
			</form:form>
		</div>
		<div id="table root">
			<table>
				<thead>
					<tr>
						<th>USER ID</th>
						<th>DOCUMENT NAME</th>
						<th>DOCUMENT ID</th>
						<th>ISSUE DATE</th>
						<th>VALID TILL</th>
						<th>ISSUED BY</th>
						<th>NOTES</th>
						<th>DOCUMENT IMAGE</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="docu" items="${doclist}">
						<tr>
							<td>${docu.userId}</td>
							<td>${docu.documentName}</td>
							<td>${docu.documentId}</td>
							<td>${docu.issueDate}</td>
							<td>${docu.validTill}</td>
							<td>${docu.issuedBy}</td>
							<td>${docu.notes}</td>
							<td>${docu.documentImage}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
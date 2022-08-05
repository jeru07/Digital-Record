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
body {
	color: #FA0000;
	position: relative;
	background-color: #F7D7AF;
	font-family: "Helvetica", "Arial", sans-serif;
	font-size: 20px;
	line-height: 1.3;
	display: flex;
	flex-direction: column;
	align-items: center;
}

table, tb {
	width: 100%;
	padding: 15px;
	text-align: left;
	position: relative;
}

th, td {
	border: solid 1px #777;
	padding: 15px;
	border-color: #8E44AD;
}

td {
	color: #000000
}
)
.button1:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getuser">
				<div>
					<label for="userId">User id</label>
					<form:input path="userId" readonly="true" />
				</div>
				<br />
				<div>
					<label for="userName">User Name</label>
					<form:input path="userName" readonly="true" />
				</div>
				<br />
				<div>
					<label for="userPassword">User Password</label>
					<form:input path="userPassword" readonly="true" />
				</div>
				<br />
				<div>
					<label for="firstName">First Name</label>
					<form:input path="firstName" readonly="true" />
				</div>
				<br />
				<div>
					<label for="lastName">Last Name</label>
					<form:input path="lastName" readonly="true" />
				</div>
				<br />
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<form:input path="dateOfBirth" readonly="true" />
				</div>
				<br />
				<div>
					<label for="eMail">E-mail</label>
					<form:input path="eMail" readonly="true" />
				</div>
				<br />
				<div>
					<label for="phoneNumber">Phone Number</label>
					<form:input path="phoneNumber" readonly="true" />
				</div>
				<br />
				<div>
					<label for="gender">Gender</label>
					<form:input path="gender" readonly="true" />
				</div>
				<br />
				<div>
					<label for="address">Address</label>
					<form:input path="address" readonly="true" />
				</div>
				<br />
				<div></div>
			</form:form>
		</div>
		<div id="table root">
			<table>
				<thead>
					<tr>
						<th style="color: white; font-size: 15pt;">USER ID</th>
						<th style="color: white; font-size: 15pt;">DOCUMENT NAME</th>
						<th style="color: white; font-size: 15pt;">DOCUMENT ID</th>
						<th style="color: white; font-size: 15pt;">ISSUE DATE</th>
						<th style="color: white; font-size: 15pt;">VALID TILL</th>
						<th style="color: white; font-size: 15pt;">ISSUED BY</th>
						<th style="color: white; font-size: 15pt;">NOTES</th>
						<th style="color: white; font-size: 15pt;">DOCUMENT IMAGE</th>
						<th style="color: white; font-size: 15pt;">UPDATE</th>
						<th style="color: white; font-size: 15pt;">DELETE</th>
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
							<td><a
								href="/document/updateformdocument?id=${docu.documentId}">
								<input type="button"
									onclick="change()"  value="UPDATE" class="button1" id="myButton1"></input></a></td>
							<td><a
								href="/document/deletedocuments?id=${docu.documentId}"><input type="button"
							onclick="change()"  value="DELETE"  class="button2"  id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
	width: 100%;
	background-image: url('https://media.istockphoto.com/photos/workspace-desk-top-view-no-people-copy-space-picture-id1161855233?k=20&m=1161855233&s=170667a&w=0&h=OU2TqeYqy6plkRC6y5pLQNNKfzxPP-0h8k_5eBW7a40=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

table, tb {
	width: 100%;
	padding: 15px;
	text-align: left;
	position: relative;
	font-weighht: bold;
}

th, td {
	border: solid 1px #777;
	padding: 15px;
	border-color: #8E44AD;
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

input[type=text] {
	width: 20%;
	padding: 10px;
	/*  margin: 10px 0 22px 0;
  display: inline-block; */
	border-color: black;
	font-size: 17px;
}

label {
	color: #000080;
	font-weight: bold;
	display: block;
	width: 150px;
	float: left;
	text-align: center;
	font-size: 20px;
}

td {
	color: #000000
}

tr:hover {
	background-color: #D6EEEE;
}

.button1:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

.button2:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
	<h1 style="color: #000080">RECORD DETAILS</h1>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getuser"
				style="margin: auto; width: 600px;">
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
						<th style="color: white; font-size: 15pt;">ACTION</th>

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
							<td><img width="100" height="100"
								src="getimage?id=${docu.documentId}"></td>
							<td><a
								href="/document/updateformdocument?id=${docu.documentId}"> <input
									type="button" onclick="change()" value="UPDATE" class="button1"
									id="myButton1"></input></a> <a
								href="/document/deletedocuments?id=${docu.documentId}"><input
									type="button" onclick="change()" value="DELETE" class="button2"
									id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="/document/addformdocument?userId=${userId}">
				<button class="button">ADD NEW DOCUMENT</button>
			</a>
		</div>
	</div>
</body>
</html>
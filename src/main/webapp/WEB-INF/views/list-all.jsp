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
	background-image:
		url('https://i.pinimg.com/474x/e4/34/9a/e4349a091bf1d979e763a52d610edfd1.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

table, tb {
	width: 100%;
	padding: 105px;
	text-align: left;
}

th, td {
	border: solid 1px #777;
	padding: 10px;
	border-color: #8E44AD;
}

td {
	color: #000000
}
)
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getuser">
			<%-- 	<div>
					<label for="userId">User id</label>
					<form:input path="userId" readonly="true" />
				</div>
				<br />
 --%>
				<div></div>
			</form:form>
		</div>
		<div id="table root">
			<table>
				<thead>
					<tr>
						<th style="color: red; font-size: 20pt;">USER ID</th>
						<th style="color: red; font-size: 20pt;">DOCUMENT NAME</th>
						<th style="color: white; font-size: 20pt;">ISSUE DATE</th>
						<th style="color: white; font-size: 20pt;">VALID TILL</th>
						<th style="color: white; font-size: 20pt;">ISSUED BY</th>
						<th style="color: white; font-size: 20pt;">NOTES</th>
						<th style="color: white; font-size: 20pt;">DOCUMENT IMAGE</th>
						<!-- <th>Update</th>
						<th>Delete</th> -->
					</tr>
				</thead>
				<tbody>
					<c:forEach var="docu" items="${doclist}">
						<tr>
							<td>${docu.userId}</td>
							<td>${docu.documentName}</td>
							<%-- <td>${docu.documentId}</td>
							<td>${docu.issueDate}</td>
							<td>${docu.validTill}</td>
							<td>${docu.issuedBy}</td>
							<td>${docu.notes}</td>
							<td>${docu.documentImage}</td> --%>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
	alert("See Documents");
	
	</script>
</body>
</html>
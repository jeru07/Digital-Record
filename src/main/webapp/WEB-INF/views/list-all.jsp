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
		url('https://thumbs.dreamstime.com/b/back-to-school-background-girl-s-white-stationery-blank-laptop-computer-books-soft-pink-wall-white-wood-desk-back-120011212.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

table, tb {
	width: 100%;
	padding: 180px;
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
				<caption>Users Documents List</caption>
				<thead>
					<tr>
						<th style="color: red; font-size: 20pt;">USER ID</th>
						<th style="color: red; font-size: 20pt;">DOCUMENT NAME</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="docu" items="${doclist}">
						<tr>
							<td>${docu.userId}</td>
							<td>${docu.documentName}</td>

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
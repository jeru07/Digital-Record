<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Document List</title>
</head>
<body>
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
				<c:forEach var="docu" items="${alldocuments}">
					<tr>
						<td>${docu.user_id}</td>
						<td>${docu.document_name}</td>
						<td>${docu.document_id}</td>
						<td>${docu.issue_date}</td>
						<td>${docu.valid_till}</td>
						<td>${docu.issued_by}</td>
						<td>${docu.notes}</td>
						<td>${docu.document_image}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
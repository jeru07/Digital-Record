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
<div style="width:100%" style="text-align: center;"> 
<h1 style="color:aqua" >List of Documents</h1>  
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
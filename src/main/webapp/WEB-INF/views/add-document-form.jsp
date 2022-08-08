<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Document</title>
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
}

input[type=text], input[type=date], input[type=file] {
	width: 100%;
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
			<h1>DOCUMENT DETAILS</h1>
			<form:form action="add" method="post" modelAttribute="adddocuments">
				<div>
					<label for="userId">User id</label>
					<form:input path="userId" />
				</div>
				<div>
					<label for="documentName">Document Name</label>
					<form:input path="documentName" />
				</div>
				<div>
					<label for="documentId">Document Id</label>
					<form:input path="documentId" />
				</div>
				<div>
					<label for="issueDate">Issue Date</label> 
					<input type="date"
						id="issueDate" name="issueDate" type="text">
					<%-- <form:input path="issueDate" /> --%>
				</div>
				<div>
					<label for="validTill">VALID till</label> <input type="date"
						id="validTill" name="validTill" type="text">
					<%-- <form:input path="validTill" /> --%>
				</div>
				<div>
					<label for="issuedBy">Issued By</label>
					<form:input path="issuedBy" />
				</div>
				<div>
					<label for="notes">Notes</label>
					<form:input path="notes" />
				</div>
				<div>
					<label for="documentImage">Document Image</label>
					<form:input path="documentImage" type='file' placeholder='file'
						accept='audio/*,video/*,image/*' />
						
				</div>
				<div>
					<form:button type="submit" class="register">Upload</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
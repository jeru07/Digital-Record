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
	background-image:
		url('https://img.freepik.com/free-vector/watercolor-nature-background-with-leaves_52683-59449.jpg?w=2000');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
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
					<form:input path="userId" type="text" title="Id must be number" 
                        pattern="^[0-9]+$"  required="true" />
                    <form:errors  path ="userId" cssClass="text-danger"/>    
				</div>
				<div>
					<label for="documentName">Document Name</label>
					<form:input path="documentName" type="text" title="Name can't be empty And User Name must be in String"
                         required="true" />
                     <form:errors  path ="documentName" cssClass="text-danger"/>   
				</div>
				<div>
					<label for="documentId">Document Id</label>
					<form:input path="documentId" type="text" title="Id must be number" 
                          required="true"/>
                      <form:errors  path ="documentId" cssClass="text-danger"/>   
				</div>
				<div>
					<label for="issueDate">Issue Date</label> 
					<input type="date"
						id="issueDate" name="issueDate" type="text">
						<form:errors  path ="issueDate" cssClass="text-danger"/>
				</div>
				<div>
					<label for="validTill">VALID till</label> <input type="date"
						id="validTill" name="validTill" type="text">
						<form:errors  path ="validTill" cssClass="text-danger"/>
				</div>
				<div>
					<label for="issuedBy">Issued By</label>
					<form:input path="issuedBy" type="text" title="Name can't be empty And User Name must be in String"
                         required="true" />
                        <form:errors  path ="issuedBy" cssClass="text-danger"/>
				</div>
				<div>
					<label for="notes">Notes</label>
					<form:input path="notes" type="text" title="Name can't be empty And User Name must be in String"
                    required="true"/>
					<form:errors  path ="notes" cssClass="text-danger"/>
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
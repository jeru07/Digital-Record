<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Document</title>
<style>

body {
 font-family: 'Open Sans', sans-serif, helvetica, Arial;
 font-weight: 400;
 font-size: 14px;
 color: black;
 /* body background image */
 background-image: linear-gradient(to bottom, rgba(128, 128, 128, 0.541), rgba(204, 0, 255, 0.637)), url(image1.jpg);
  
}
input[type=text], input[type=password],input[type=date] 
{
  width:100%;
  padding: 10px;
  margin: 10px 0 22px 0;
  display: inline-block;
  border-color: black;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateddocuments" method="post" modelAttribute="updateddocuments"
			style="margin: auto; width: 220px;">
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="documentName">Document Name</label>
					<div>
						<form:input path="documentName" />
					</div>
				</div>
				<div>
					<label for="documentId">Document Id</label>
					<div>
						<form:input path="documentId" />
					</div>
				</div>
				<div>
					<label for="issueDate">Issue Date</label>
					<div>
						<form:input path="issueDate" />
					</div>
				</div>
				<div>
					<label for="validTill">VALID till</label>
					<div>
						<form:input path="validTill" />
					</div>
				</div>
				<div>
					<label for="issuedBy">Issued By</label>
					<div>
						<form:input path="issuedBy" />
					</div>
				</div>
				<div>
					<label for="notes">Notes</label>
					<div>
						<form:input path="notes" />
					</div>
				</div>
				<div>
					<label for="documentImage">Document Image</label>
					<div>
						<form:input path="documentImage" />
					</div>
					<input type="file" name="file" /> <br /> 
					<form:button>UPDATE</form:button>
					
				</div>
			</form:form>
		</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
			style="margin: auto; width: 300px;">
			<div>
					<label for="userId">User Id</label>
					
						<form:input path="userId" readonly="true" />
					
				</div>
				<div>
					<label for="documentName">Document Name</label>
						<form:input path="documentName" readonly="true" />
				</div>
				<div>
					<label for="documentId">Document Id</label>
					
						<form:input path="documentId" readonly="true" />
					
				</div>
				<div>
					<label for="issueDate">Issue Date</label>
					
						<form:input path="issueDate" type="date"  readonly="true"/>
					
				</div>
				<div>
					<label for="validTill">VALID till</label>
					
					<form:input path="validTill" tye="date"  />
					
				</div>
				<div>
					<label for="issuedBy">Issued By</label>
					
						<form:input path="issuedBy" readonly="true"/>
					
				</div>
				<div>
					<label for="notes">Notes</label>
					
						<form:input path="notes" />
					
				</div>
				<div>
					<label for="documentImage">Document Image</label>
					
						<form:input path="documentImage" />
					
					<input type="file" name="file" /> <br /> 
					
					<form:button>UPDATE</form:button>
					
				</div>
			</form:form>
		</div>
		</div>
</body>
</html>
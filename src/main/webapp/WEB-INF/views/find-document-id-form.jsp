<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Document</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdocumentbyid"
				enctype="multipart/form-data"  style="margin: auto; width: 220px;">
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="documentName">Document Name</label>
					<div>
						<form:input path="documentName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="documentId">Document Id</label>
					<div>
						<form:input path="documentId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="issueDate">Issue Date</label>
					<div>
						<form:input path="issueDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="validTill">VALID till</label>
					<div>
						<form:input path="validTill" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="issuedBy">Issued By</label>
					<div>
						<form:input path="issuedBy" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="notes">Notes</label>
					<div>
						<form:input path="notes" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="documentImage">Document Image</label>
					<div>
						<form:input path="documentImage" readonly="true"/>
					</div>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>
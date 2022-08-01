<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdocumentbyid"
				enctype="multipart/form-data">>
				
				<div>
					<label for="user_id">User id</label>
					<div>
						<form:input path="user_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="document_name">Document Name</label>
					<div>
						<form:input path="document_name" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="document_id">Document Id</label>
					<div>
						<form:input path="document_id" readonly="true" />
					</div>
				</div>
				<div>
					<label for="issue_date">Issue Date</label>
					<div>
						<form:input path="issue_date" readonly="true" />
					</div>
				</div>
				<div>
					<label for="valid_till">VALID till</label>
					<div>
						<form:input path="valid_till" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="issued_by">Issued By</label>
					<div>
						<form:input path="issued_by" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="notes">Notes</label>
					<div>
						<form:input path="notes" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="document_image">Document Image</label>
					<div>
						<form:input path="document_image" readonly="true"/>
					</div>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>
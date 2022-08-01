<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Document</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="updatedocuments"
				enctype="multipart/form-data">
				<div>
					<label for="user_id">User id</label>
					<div>
						<form:input path="user_id" />
					</div>
				</div>
				<div>
					<label for="document_name">Document Name</label>
					<div>
						<form:input path="document_name" />
					</div>
				</div>
				<div>
					<label for="document_id">Document Id</label>
					<div>
						<form:input path="document_id" />
					</div>
				</div>
				<div>
					<label for="issue_date">Issue Date</label>
					<div>
						<form:input path="issue_date" />
					</div>
				</div>
				<div>
					<label for="valid_till">VALID till</label>
					<div>
						<form:input path="valid_till" />
					</div>
				</div>
				<div>
					<label for="issued_by">Issued By</label>
					<div>
						<form:input path="issued_by" />
					</div>
				</div>
				<div>
					<label for="notes">Notes</label>
					<div>
						<form:input path="notes" />
					</div>
				</div>
				<div>
					<label for="document_image">Document Image</label>
					<div>
						<form:input path="document_image" />
					</div>
					<input type="file" name="file" /> <br /> <input type="submit"
						value="Upload File" />
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
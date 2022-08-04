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
			<form:form action="" method="post" modelAttribute="doclist">
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
					<input type="file" name="file" /> <br /> <input type="submit"
						value="Upload File" />
				</div>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
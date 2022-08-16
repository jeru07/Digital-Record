<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Document</title>
<style>
body {
	color: red;
	background-color: #EAEDF0;
	font-family: "Helvetica", "Arial", sans-serif;
	font-size: 20px;
	line-height: 1.3;
	display: flex;
	flex-direction: column;
	align-items: center;
	background-image:
		url('https://png.pngtree.com/thumb_back/fh260/back_our/20190621/ourmid/pngtree-flat-education-office-stationery-background-image_193764.jpg');
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
select {

  appearance: none;
  background-color: transparent;
  border-color:black;
  padding: 0 1em 0 0;
  margin: 10px;
  width: 70%;
  font-family: inherit;
  font-size: inherit;
  cursor: inherit;
  line-height: inherit;
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
			<form:form action="add" method="post" enctype="multipart/form-data" modelAttribute="adddocuments">
				<div>
				<label for="userId">User Id</label>
				<form:input path="userId" title="Id must be number"
				required="true" placeholder="enter user Id"/>
			<form:errors path="userId" cssClass="text-danger" />
				</div>
				
				<div class="custom-select">
					<label for="documentName">Document Name</label>
					<form:select path="documentName">
							<form:errors path="documentName" required="true" />
							<option>Select Your Document</option>
							<form:option value="aadhar">Aadhar</form:option>
							<form:option value="license">Driving License</form:option>
							<form:option value="pan">Permanent Account Number(PAN)</form:option>
							<form:option value="voterid">Voter ID</form:option>
							<form:option value="Marksheet">Educational Certificate</form:option>
							<form:option value="passport">Passport</form:option>
							<form:option value="ration">Ration Card</form:option>
							<form:option value="atmnumber">ATM Card Number</form:option>
							<form:option value="passport">PassBook</form:option>
							<form:option value="birth">Birth Certificate</form:option>
							<form:option value="covid">Covid Vaccination Certificate</form:option>
						</form:select>
				<form:errors path="documentName" cssClass="text-danger" />
		</div>
		
		<div>
			<label for="documentId">Document Id</label>
			<form:input path="documentId" type="text" title="Id must be number"
				required="true" placeholder="enter document number"/>
			<form:errors path="documentId" cssClass="text-danger" />
		</div>
		
		<div>
			<label for="issueDate">Issue Date</label> <input type="date"
				id="issueDate" name="issueDate" type="text" >
			<form:errors path="issueDate" cssClass="text-danger" />
		</div>
		
		<div>
			<label for="validTill">VALID Till</label> <input type="date"
				id="validTill" name="validTill" type="text">
			<form:errors path="validTill" cssClass="text-danger" />
		</div>
		
		
		<div class="custom-select" style="width:500px;">
			<label for="issuedBy">Issued By</label>
			<form:select path="issuedBy">
							<form:errors path="issuedBy" required="true" />
							<option>Select Issuing Department</option>
							<form:option value="aadhar">Central Government</form:option>
							<form:option value="license">International</form:option>
							<form:option value="pan">School/College</form:option>
							<form:option value="voterid">Hospital</form:option>
							<form:option value="Marksheet">Government</form:option>
							<form:option value="ration">Bank</form:option>
						</form:select>
						</div>
		<br/>
		
		<div>
			<label for="notes">Notes</label>
			<form:input path="notes" type="text"
				title="Name can't be empty And User Name must be in String" placeholder="enter important message" />
			<form:errors path="notes" cssClass="text-danger"  />
		</div>
		
		<div>
			<label for="documentImage">Document Image</label>
			<input name="photo" type='file' 
			accept='audio/*,video/*,image/*'/>
		</div>
		
		<div>
			<form:button type="submit" class="register">UPLOAD</form:button>
		</div>
		
		</form:form>
		</div>
		</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>User List</title>
</head>
<body>
<div style="width:100%" style="text-align: center;"> 
<h1 style="color:Tomato" >LIST OF USERS</h1>  
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>USER ID</th>
					<th>USER NAME</th>
					<th>USER PASSSWORD</th>
					<th>FIRST NAME</th>
					<th>LAST NAME</th>
					<th>DATE OF BIRTH</th>
					<th>E-MAIL</th>
					<th>PHONE NUMBER</th>
					<th>GENDER</th>
					<th>ADDRESS</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${allusers}">
					<tr>
						<td>${user.userId}</td>
						<td>${user.userName}</td>
						<td>${user.userPassword}</td>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.dateOfBirth}</td>
						<td>${user.eMail}</td>
						<td>${user.phoneNumber}</td>
						<td>${user.gender}</td>
						<td>${user.address}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>
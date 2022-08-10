<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>User List</title>
<style>
table, th, td {
	border: 1px solid black;
	padding: 15px;
	text-align: left;
}

th, td {
	border-color: #96D4D4;
}

body {
	background-image:
		url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw4PDQ0PDg0PDQ8NDQ0NDQ0NDQ8NDQ0NFREWFhURExUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OFxAQFy0dHR0tLSstLS0tKy0tKy0tLS0tLS0tLS0tLS0tLS0rLS0tLS0rLS0tLS0tLS0tLS0tLS0tLf/AABEIALEBHAMBEQACEQEDEQH/xAAbAAADAQEBAQEAAAAAAAAAAAAAAQIDBQQHBv/EACEQAQEBAQACAwEBAQEBAAAAAAABAhEDEiExUUFxgWEy/8QAGgEAAwEBAQEAAAAAAAAAAAAAAAECAwQGBf/EAB8RAQEBAQADAQEBAQEAAAAAAAABAhEDITESQVEyE//aAAwDAQACEQMRAD8A+mOx80unIFeOs/LmUrGs05rj/E8NBHIVvAufDO+wuaRYua6pKgAIKefrTOmdy3zv/VoanCpyGlpLwcHFfsuFxU1Ct4SpOs7qhUiLArqbk1dLoMugMtZ6FS8ZazwLl6kGYCdqhxCpVAwXQaauU4XFdPpGYAADe19uR5IGDiLOwNGCTlKzoaTTnueVJ9LkA6XIGmNM9ReatCjhVeTCh7cK56P3xrnUZXNdGdxaWgAACEtQDHAByAMNY/A1lZULQDIGz1ngXKkzToHCkMJsVKrqVGKcOEZgwXB0F/0/0baV96zjydNNIyC834Y6nKVNBHKVnQ0lY2cSqItAINc3rKzjXPtVqeLtkK0+IurRn7Gvh4ntbNscoEvFTyVNy0nkv9V7dRZY28e5aOJbAAAFu/AOfWQWW8dgEvGFwGvU3NA6QNnrPDXKzv2FGCTTVC4fTTYqU+ouovq+VN2X6P8AKbqp6rkIBtm8eo1OvJ2daysLEDsHKDxqI3i8Kxfsz/FLheyvxBxWN1n5MThWNZrrnuOJPpcgVjSNZlOXi2SjBqxEaa4npSVgytTafE3S8fCde2nj9Voy46ZqwFxpNSglI8lCspkBmAxs+Q0hAxYAm4gHXn34+fXybSaQFFoziQZyAqz3jv8AqmmdcY2cNrL0gAA1eqeV4cTU36AS8faN/CrRikAHlnv4VUyJc3+ouf8AC40jK/SPNRZ05eNGa2jNv8K0+JuiNIgp5iktGsrKuiXsBADi5qxNzepbZ1LC9aD6PWgdZeXIXmoCgAAGQUnWZQcvGW82G0zUyGYASZlrMoOXjDeLP8NrnXUmpp16p5i5VCrLRpI8/adfCrVikEBlO56JXUTI4Id9QLZJOaqbiBp4/L8/LLyeL12KzeVt3rm5xp3oAACoVaSejI14rPX1r476UlZgAVWbyhLYAI1ehUZa8f4FTTOwKKg2YUXQCBs9Y/DXKk1IMwAAbO+H/h9XPIh6t5880qnWYfsOI/EE2Vz0XE40mmf4kY2cA5AcK+w0YErLPdTVIIrVSHw8J8nwq1zrjC5lEvGudysdYsaTXVRFXIpLQAKxflOvisX20ZtgAAAVa4v8LVJpEAwAVnQOsvJ4+S8DSaYet/AvsL1v4B0et/AOj1v5QfUa8f5D6qaYcU0PgAIGA8r1r4shwJ19MklDPXxUpWdZWdaSs7Kzs4aSXn6Y6nKVaMPtSLVSAjNeGPk+pqkELeHJ0NPH5Kx8njkrSbsX7VnyH+r/AKXRwu0SiwT71t1lx09p+1LkP9U/ej8w/wB0/cvyqeTgsZWOqbhcJYAABanxQI85tQAAAAWr8UCMLOhpKzvj/D6uaRTMA3metfHOBlfpUHIeQW/iiZgEc0m5hWRr49zrHy4vPSNZrXrn5xAAADTH0w39RRrQmenIj7q/kNpKzs6TWVzWcUYBA22L8Mr9b5vYZGAAA0z9M9fXRi9hpX3hXI4qb/0rC4ualIlPPqfNNpPhAwAAE+T6B5ZBYAZ+Wf04rNZmt481658rc/rSkwhAzyEbUSB0CQrTVMnn4K+069tGTFU3UXx5o4qeT/xF8X+UuNfb8c359+08SYViJ1RVoSrF/jPyZ/pxbJYAaeOo00xf4tDQAABeEabeO/xSWgAAAsLhzVjHyeO97Cb4369srOfYadIGAGflv0FZQFAEVnQcvGKmjwx6585XQi4n8PpM7mxWQy2dpcKZI1CBNqiSvN+EX6z1PZkk02hWNMvJjvuFWjnS0kZ0haJLQn2X+Z/Q1mnPcQfpU0m4p/pWL8s9S8Xm+2zJuAAArH2Wvi/Hfa2bcAAEQAS2hWA0a8U/nwFTdZ68dn/v+Bc1Hm390NJ8IGAAAjWOhU1xznsHFwugcHQfFZpMt478WHOADDMyB4pa+J1FsqzPo4C6OUca+Pf6w8vjv2JsaXTGZieJUZ5+06+FWjEgAOgNo52h9Lg7T9qOQ/1Tm6VzFTdlazbG5dc8kv1SVggBTn0JbAADiboGnvWXkwTfN9MbifgaSouIFdTcg0gOU9g57OECOBNpkk5QnWerlDm1L8HQJijoVMQQFefFypY2cMEAFRnqpq87Za8cvxNjSVjZZ9SrH2z38KrZEDAAa4vww3Pa4pJgAEGkZt4cpWdVNWfFTablpPJP6pFb4/0FxV0Am0GQJSdEvPxnvIaSs7AqVFgV1WcgrXEevKzpGyvoyRy0umr8gH6ipSY7z32oMgAomYlBWdXCZU4VvCqmaQAO8Fz0ca+PyT+uby+G/wATctJqfrC41PsTxSSAC/FWXkn9VGjNQIABefpF+tcfDJYAVio3P608V/i0NwACOAGnRLyQUjWQqVFgUAHCeuMGVnSNmQCoSLQCVKGW8/1UDLVMkgASgtZ61lZ3tYUuj8jg6fD4RmrDPadLQkS39Tcy/YOLnkv+ovhzS408fl+fph5PDZPpc4393L+KOj2hfin0e0H5o6vGojUsaeOxaGoAAEvGsrGzjql7OgjgCgAWiVlIWOAMtzlC4QNwnrjAAplZ0obK+jJPB0H+aXTH5/1c0Tn1iSjoLkABwFarOisZaz1aWQAFAV42fkTpaEgAEFyMrepbZvY5tTl4RpIAHi/KNzsONZWPGktipovyqb/05qFxc1KvFZ7n9b+K/wAWzdAHC7AfC/cFFh537TxLWWAjLU6DlYmtw+PXGfABwBNMrOkaCAOBFogTZ1ZMbOAFaoIAB50ViNZ6tLIjC/H/AFn5P4nS2aQArMZ6vSpoJfjrPyT10q0YkCAAaysbOLMjAAzfkWejxeX02zv9Y3Lpzvv1aWgAETWmIAoEfS4OKmk3x9LiptwbHrHRwrDLiLTIgBwys6XDRqUBH5oA/NOUJ1i1fSc9lo6B+KOgfgug/wAKzorEb8frsWTnX42fkLS2aBLP6Vls9BXtP1n+Nf4XKfYXKQhWBvK5bOeiIiADTx1nuKi0KI0nn7K/FZ+qS0VnXE3PV53xpKzvptL34aW/wwOgF0AugB+feqfQP1LoZ6nFSpsIwAE6ETUmQAAKnAx3n+mGYAABwJrTNKufyZ57aYZbZaVaiTqULMGBwgfAG3j18OXy5n6RV+1Y/iJ4fun/AMxxWNzqNeO8EbMDBg8pvxWfqktADVLxNnVZtntpnaLlvnyS/VIaAAAAG4Uj1HX0CoIrDDKxSQAnRxNSZAAAgCs6oOezl4AQBVQSAVnW3jrLyRy7nPR0pOJHB0GRAAAL8dZeWepSq2CQfAcLXwVpnVjC5lJpncrK4sNeftF+Kz9UzamDAMAHNcK56rO7lpncrO5sbZ3NKSsA3CteofQqQQALU6cpVmok6OJqTIAgAADgRvPYYYHAmmCIA864VnU6xNNJpP5jC54Paj8wvzB7UfmH+YPaj8wchzpXibxWbxGpNTib7a511z6xcosUkKyjZVTNIAX49WMt5l+KzeVtNxhc2NZuH0uK6OgugAALzOIvtpJxpms7G+ddMmjgvUO8AAGAC1np9KxjuLiNINAAAAAABwMN557UGIBgAAHKE6z1cpMLOfVTKbpN0cibU2mRAAANM7/WOvH/AGJsa4c26irmWV0SpE2gEAActKyU5bFTabj/ABc3/qpqIubFTUrTEZ6rTM/qkrACppNy2nknPbhvTPqAAAAAAM/N/FZRtlVoABAAAAhkM/J/ysOcAAAAABp4v6jfxh5v40QwAAAAAAAD1eD/AOY+d5/+6z19aMUgAAAAAAAAPT4/qf45d/8AVdeP+YpKgAAH/9k=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

tr:hover {
	background-color: #ff0066;
}
</style>
</head>
<body>
	<h1 style="color: Tomato">LIST OF USERS</h1>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th style="color: #000066;">USER ID</th>
					<th style="color: #000066;">USER NAME</th>
					<th style="color: #000066;">USER PASSSWORD</th>
					<th style="color: #000066;">FIRST NAME</th>
					<th style="color: #000066;">LAST NAME</th>
					<th style="color: #000066;">DATE OF BIRTH</th>
					<th style="color: #000066;">E-MAIL</th>
					<th style="color: #000066;">PHONE NUMBER</th>
					<th style="color: #000066;">GENDER</th>
					<th style="color: #000066;">ADDRESS</th>
					<th style="color: #000066;">Document</th>
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
						<td><a
								href="/user/getlistdocument?id=${user.userId}"> <input
									type="button" onclick="change()" value="VIEW" class="button1"
									id="myButton1"></input></a>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	</div>
</body>
</html>
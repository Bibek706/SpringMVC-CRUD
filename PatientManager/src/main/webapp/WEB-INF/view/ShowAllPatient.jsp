<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show All Patients</title>
<style>
table {
	width: 100%;
	border-collapse: collapse;
	 table-layout: auto;
  width: 100%; 
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
	colspan:"200";
}

th {
	background-color: #E8E8E8;
}
</style>
</head>
<body>
	<h1>All Patients</h1>
	<div class="button-container">
		<form action="downloadpdf" method="get">
			<button type="submit">
				<h3>Download PDF</h3>
			</button>
		</form>
	</div>

	<form>
		<table>
			<thead>
				<tr>
					<th>Patient ID</th>
					<th>Full Name</th>
					<th>Marital Status</th>
					<th>Gender</th>
					<th>Mobile</th>
					<th>Payment</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty patients}">
						<c:forEach items="${patients}" var="patient">
							<tr>
								<td><c:out value="${patient.patientId}" /></td>
								<td><c:out value="${patient.fullName}" /></td>
								<td><c:out value="${patient.maritalStatus}" /></td>
								<td><c:out value="${patient.gender}" /></td>
								<td><c:out value="${patient.mobNo}" /></td>
								<td><c:out value="${patient.payment}" /></td>
								<td><c:out value="${patient.address}" /></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="7">No patients found</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<h1>For the Operation Page</h1>
         <br> <a href="operation">click here</a>
	</form>
</body>
</html>

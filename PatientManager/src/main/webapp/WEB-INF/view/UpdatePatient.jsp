<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient</title>
<style>
.container {
	background-color: #E8E8E8;
	width: 50%;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid black;
	border-radius: 5px;
}

#text {
	width: 90%;
	margin: auto;
	padding: 10px;
	border: 1px solid black;
}

input[type="submit"] {
	background-color: white;
	font-size: medium;
	width: 20%;
	margin: auto;
	padding: 5px;
	border: 2px solid black;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: white;
	color: black;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Update Patient Information</h1>
		<form id="form_data" name="form" action="saveupdate" method="post">
			<h3>Enter the ID</h3>
			<input id="text" type="text" placeholder="Your ID" name="patientId"
				readonly value='<c:out value="${id}"></c:out>'><br>

			<h3>Enter Your Full Name</h3>
			<input id="text" type="text" placeholder="Your Name" name="fullName"
				value='<c:out value="${patient.fullName}"></c:out>' required><br>

			<h3>Marital Status</h3>
			<select name="maritalStatus" required>
				<option value="Single"
					<c:if test="${patient.maritalStatus eq 'Single'}">selected</c:if>>Single</option>
				<option value="Married"
					<c:if test="${patient.maritalStatus eq 'Married'}">selected</c:if>>Married</option>
				<option value="Divorced"
					<c:if test="${patient.maritalStatus eq 'Divorced'}">selected</c:if>>Divorced</option>
				<option value="Widowed"
					<c:if test="${patient.maritalStatus eq 'Widowed'}">selected</c:if>>Widowed</option>
			</select><br>


			<h3>Select The Gender</h3>
			<label> <input type="radio" value="Male" name="gender"
				<c:if test="${patient.gender eq 'Male'}">checked</c:if>>Male
			</label><br> <label> <input type="radio" value="Female"
				name="gender"
				<c:if test="${patient.gender eq 'Female'}">checked</c:if>>Female
			</label><br>


			<h3>Enter Your Mobile Number</h3>
			<input type="tel" id="text" placeholder="Mobile number" name="mobNo"
				pattern="[0-9]{10}" value='<c:out value="${patient.mobNo}"></c:out>'
				required><br>

			<h3>Enter The Total Payment</h3>
			<input id="text" type="number" placeholder="payment" name="payment"
				value='<c:out value="${patient.payment}"></c:out>' required><br>

			<h3>Enter Your Address</h3>
			<textarea name="address" placeholder="Please give your address"
				rows="3" cols="30" required><c:out
					value="${patient.address}"></c:out></textarea>
			<br> <input type="hidden" name="action" value="submit">
			<h3>
				<input type="submit" value="Update">
			</h3>
		</form>
		<center><br> <a href="operation">click here</a>
		<h1>For the Operation Page</h1>
		<center>

	</div>
</body>

</html>
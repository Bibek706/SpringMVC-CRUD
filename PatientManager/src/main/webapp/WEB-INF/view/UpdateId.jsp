<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    	.container {
        background-color: #E8E8E8;
        width: 50%; 
        margin: 0 auto; 
        padding: 20px;
        border: 1px solid black;
        border-radius: 5px;
    }
    #id {
        width: 90%;
        margin: auto;
        padding: 10px;
        border: 1px solid black;
    }

    input[type="submit"] {
        background-color: black;
        font-size: medium;
        color:white;
        width: 20%;
        margin: auto;
        padding: 5px;
        border: 2px solid black;
        margin-left: 40%; /* Adjusted margin-left for better alignment */
        border-radius: 5px;
        cursor: pointer; /* Added cursor pointer on hover */
    }

    input[type="submit"]:hover {
        background-color: white;
        color: black;
        border: 2px solid black;
    }
    
    </style>
</head>
<body>

    <center><h2>Update Patient by ID</h2></center>
   	<div class = "container">
    <form action="updatepatient" >
        <label for="id"><h3>Enter Patient ID:</h3></label>
        <input type="text" id="id" name="patientId"  placeholder = "Patient Id" required><br><br>
        <input type="submit" value="Update">
    </form>

</body>
</html>
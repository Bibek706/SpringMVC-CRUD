<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


     body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px; /* Add padding to give content some space */
  }
    
      .navbar {
    overflow: hidden;
    background-color: #333;
    height: 60px;
  }
  .navbar a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 20px 30px;
    font-size: 18px;
    text-decoration: none;
  }
  .navbar a:hover {
    background-color: #ddd;
    color: black;
  }
  .navbar a.active {
    background-color: #007bff; /* Change to your desired active button color */
}
  h1 {
    font-size: 40px; 
  }


    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border: 2px solid #333;
    }


    .options-container {
        margin-top: 20px;
        display: flex;
        justify-content: space-between;
    }

    .option-button {
        width: 45%;
        padding: 15px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .option-button:hover {
        background-color: #fff;
        color:black;
        border: 2px solid #333;
    }
</style>
</head>
<body>
	
<center><h1>Welcome to Patient Manager</h1></center>
    <!-- Navbar -->
    <div class="navbar">
    <a href = "home"> Home</a>
      <a href="#">About Us</a>
      <a href="login">Log In</a>
      <a href="signup">Sign Up</a>
      <a href="contact">Contact Us</a>
      <a href="application">About Application</a>
	</div>
<div class="container">
    <h1>Patient Management System</h1>
    <div class="options-container">
        <button class="option-button" onclick="window.location.href='addpat'"><h3>Add Patient Information</h3></button>
        <button class="option-button" onclick="window.location.href='showpatient'"><h3>Show Patient Information</h3></button>
    </div>
    <div class="options-container">
        <button class="option-button" onclick="window.location.href='deletepat'"><h3>Delete Patient Information</h3></button>
        <button class="option-button" onclick="window.location.href='update'"><h3>Update Patient Information by ID</h3></button>
    </div>
</div>

</body>
</html>
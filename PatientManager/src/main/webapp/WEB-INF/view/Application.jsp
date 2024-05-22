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

    p {
        text-align: justify;
        line-height: 1.5;
    }

    .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }

    .button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<center><h1>Welcome to Patient Manager</h1></center>
    <!-- Navbar -->
    <div class="navbar">
    <a href = "home"> Home</a>
      <a href="aboutus">About Us</a>
      <a href="login">Log In</a>
      <a href="signup">Sign Up</a>
      <a href="contact">Contact Us</a>
      <a href="#">About Application</a>
	</div>
<div class="container">
    <center><h1>Welcome to Patient Manager</h1></center>
    <p>
        Patient Manager is a web application designed for managing patient information. 
        With Patient Manager, you can easily store, update, and retrieve patient records, 
        as well as perform CRUD (Create, Read, Update, Delete) operations on them.
    </p>
    <p>
        Patient Manager helps healthcare professionals efficiently manage patient data, 
        track medical histories, appointments, treatments, and more, all in one place.
    </p>
    <p>
        Get started with Patient Manager now and streamline your patient management process!
    </p>
    
</div>

</body>
</html>
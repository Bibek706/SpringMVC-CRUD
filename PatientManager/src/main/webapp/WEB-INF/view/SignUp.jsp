<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %> 

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

    .login-container {
        width: 300px;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border: 2px solid #333;
        
    }

    .login-container input[type="text"],
    .login-container input[type="password"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 10px;
        border: 2px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .login-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .login-container input[type="submit"]:hover {
        background-color: #fff;
        color: black;
        border: 2px solid #333;
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
      <a href="#">Sign Up</a>
      <a href="contact">Contact Us</a>
      <a href="application">About Application</a>
      
	</div>
	<br>
	<c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>
<center>
<br><br>
<div class="login-container">
    <h2>SignUp</h2>
    <form action="signup" method="POST">
        <input type="text" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="SignUp">
    </form>
</div>
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  /* CSS for About Us Page */
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
    margin: 0 auto;
    padding: 20px; /* Add padding to separate content from the edge of container */
    border: 2px solid #333; /* Add a border around the container for further separation */
    border-radius: 10px;
  }
  h2 {
    color: #333;
  }
  p {
    line-height: 1.6;
    color: #666;
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
	</div><br>
<div class="container">
  <center><h2>About Our Hospital</h2></center>
  <p>Welcome to Our Hospital, where we strive to provide exceptional healthcare services to our patients. Our hospital is committed to delivering high-quality medical care with compassion, dedication, and professionalism.</p>
  <p>At Our Hospital, we have a team of skilled healthcare professionals including doctors, nurses, and support staff who work tirelessly to ensure the well-being and comfort of our patients. Whether you need routine check-ups, specialized treatments, or emergency care, you can trust us to provide personalized care tailored to your needs.</p>
  <p>Our state-of-the-art facilities, advanced medical equipment, and comprehensive range of services enable us to diagnose and treat a wide range of medical conditions effectively. We are dedicated to continuous improvement and innovation to meet the evolving needs of our community.</p>
  <p>Thank you for choosing Our Hospital for your healthcare needs. We are honored to serve you and your family and look forward to helping you live a healthier and happier life.</p>
</div>

</body>
</html>
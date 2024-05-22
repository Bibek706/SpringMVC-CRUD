<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
h2{
 background-color: #ff0028;
    height: 60px;
}
  body {
    margin: 0;
    font-family: Arial, sans-serif;
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
  .full-width-image {
    width: 100%;
    height: auto;
    display: block;
  }
</style>
</head>
<body>
<br>
    <center><h1>Welcome to Patient Manager</h1></center>
    <h2>Patient Manager is used by everyone in the health system to improve throughput and capacity, to drive multidisciplinary rounds, and to highlight barriers to care progression and discharge planning.</h2>
    <!-- Navbar -->
    <div class="navbar">
      <a href = "#"> Home</a>
      <a href="aboutus">About Us</a>
      <a href="login">Log In</a>
      <a href="signup">Sign Up</a>
      <a href="contact">Contact Us</a>
      <a href="application">About Application</a>
    </div>
	<img class="full-width-image" src=https://patientengagementhit.com/images/site/article_headers/_normal/2017-physician-shortage.jpg alt="Doctors discussing digital tablet">
	    

</body>
</html>

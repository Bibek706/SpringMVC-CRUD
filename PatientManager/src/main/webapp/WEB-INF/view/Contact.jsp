<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
         border: 2px solid #333;
    }

    h1 {
        text-align: center;
        color: #333;
        font-size: 40px;
    }

    p {
        text-align: justify;
        line-height: 1.5;
    }

    .contact-form {
        margin-top: 20px;
    }

    .contact-form label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    .contact-form input[type="text"],
    .contact-form textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .contact-form textarea {
        height: 150px;
    }

    .contact-form input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .contact-form input[type="submit"]:hover {
        background-color: #0056b3;
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
    <h1>Contact Us</h1>
    <p>
        Have questions or feedback? We'd love to hear from you! Please fill out the form below 
        and we'll get back to you as soon as possible.
    </p>
    <form class="contact-form" action="#" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Your name" required>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" placeholder="Your email" required>

        <label for="message">Message:</label>
        <textarea id="message" name="message" placeholder="Your message" required></textarea>

        <input type="submit" value="Send Message">
    </form>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Insert Patient</title>
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

<c:choose>
    <c:when test="${patientId ne null and patientId ne 0}">
        <c:if test="${successmsg ne null and not empty successmsg}">
            <script>
                alert("${successmsg}");
            </script>
        </c:if>
    </c:when>
    <c:otherwise>
        <c:if test="${failuremsg ne null and not empty failuremsg}">
            <script>
                alert("${failuremsg}");
            </script>
        </c:if>
    </c:otherwise>
</c:choose>

<div class="container">
    <form id="form_data" name="form" action="save" method="post" >
        <h3>Enter Your Full Name</h3>
        <input id="text" type="text" placeholder="Your Name" name="fullName" required><br>
        
        <h3>Marital Status</h3>
        <select name="maritalStatus" required>
            <option value="Single"> Single</option>
            <option value="Married">Married</option>
            <option value="Divorced">Divorced</option>
            <option value="Widowed">Widowed</option>
        </select><br>
        
        <h3>Select The Gender</h3>
        <label>
            <input type="radio" value="Male" name="gender" >Male
        </label><br>
        <label>
            <input type="radio" value="Female" name="gender">Female
        </label><br>
        
        <h3>Enter Your Mobile Number</h3>
        <input  type="tel" id="text"placeholder="Mobile number" name="mobNo" pattern = "[0-9]{10}" required><br>
        
        <h3>Enter The Total Payment</h3>
        <input id="text" type="number" placeholder="payment" name="payment" required><br>
        
        <h3>Enter Your Address</h3>
        <textarea name="address" placeholder="Please give your address" rows="3" cols="30" required></textarea><br>
        
        <input type="hidden" name="action" value="submit"> 
        <h3><input type="submit" value="Submit"></h3>
    </form>
</div>

</body>
</html>

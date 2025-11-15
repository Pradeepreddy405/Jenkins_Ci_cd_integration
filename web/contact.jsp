<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Contact Us</h1>
    <form action="submitContact.jsp" method="post">
        Name: <input type="text" name="name"><br><br>
        Email: <input type="email" name="email"><br><br>
        <input type="submit" value="Submit">
    </form>
    <a href="index.jsp">Home</a> | <a href="about.jsp">About</a>
</body>
</html>


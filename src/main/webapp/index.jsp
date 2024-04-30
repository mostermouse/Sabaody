<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Employment Status</title>
</head>
<body>
<h1>Create New Employment Status</h1>
<form action="CreateEmploymentStatusServlet" method="post">
    Division: <input type="text" name="division"><br>
    ID: <input type="text" name="id"><br>
    Name: <input type="text" name="name"><br>
    Department: <input type="text" name="department"><br>
    Position: <input type="text" name="position"><br>
    <input type="submit" value="Create">
</form>
</body>
</html>

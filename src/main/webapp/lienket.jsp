<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input
	{
		margin: 5px;
		border-radius: 5px;
	}
</style>
</head>
<body>
<form action="/TEST_HELLO/lk" method="post">
	<h1>Widget Order Form</h1><br>
	<label>Quantity: </label>
	<input type="text" id="quantity" name="quantity"><br>
	<label>Your name: </label>
	<input type="text" id="name" name="name"><br>
	<label>Email Address: </label>
	<input type="email" id="email" name="email"><br>
	
	<label>&nbsp</label><br>
	<input type="submit" value="Confirm" id="submit">
</form> 
</body>
</html>
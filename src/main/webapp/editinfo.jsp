<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
</head>
<body>
<form action="/TEST_HELLO/formsv" method="post">
	<h1>Form</h1><br>
	<label>Ho Ten: </label>
	<input type="text" id="name" name="name"><br>
	<label>Email Address: </label>
	<input type="email" id="email" name="email"><br>
	<label>Password: </label>
	<input type="password" id="password" name="password"><br>
	<label>Dia Chi: </label>
	<input type="text" id="locate" name="locate"><br>
	<label>Gioi Tinh:</label>
		<label for="male" class="gender">
            <input type="radio" id="male" name="gender" value="0" required>Nam
        </label>
        <label for="female" class="gender">
            <input type="radio" id="female" name="gender" value="1" required>Nữ
        </label><br>
	<label>Giao Hang:</label>
	<label for="In home" class="Type">
            <input type="checkbox" id="Home" name="Type" value="In home">Tai nha
        </label>
        <label for="In office" class="Type">
            <input type="checkbox" id="Office" name="Type" value="In office">Tai co quan
        </label>
        <label for="Other" class="Type">
            <input type="checkbox" id="Other" name="Type" value="Other">Khác
	</label><br>
	<input type="submit" value="Confirm" id="submit">
</form>
</body>
</html>

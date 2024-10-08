<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Form Dang Ki</title>
</head>
<body>
	<form action="/TEST_HELLO/us" method="post">
		<input type="hidden" name="action" value="add">
		
		<label>Email:</label>
		<input type="text" name="email" required><br>
		<br>

		<label>Họ và tên: </label>
		<input type="text" name="fname" required><br>
		<br>
         
         <label>Gender: </label>
         <input type="radio" name="sex" value="Female" required>Nam
         <input type="radio" name="sex" value="Male"required>Nu<br>
         
		<label>Địa chỉ:</label>
		<input type="text" name="address" required><br>
		<br>

		<label>Thành phố:</label>
		<select id="Tpho" name="Tpho">
			<option value="Ho Chi Minh">Hồ Chí Minh</option>
			<option value="Ha Noi">Hà Nội</option>
			<option value="Da Nang">Đà Nẵng</option>
			<option value="Kon Tum">Kon Tum</option>
			<option value="Qua   ng Nam">Quảng Nam</option>
		</select><br>
		<br>

		<label>Hình thức giao hàng:</label><br>
		<label for="Tại nhà">
			<input type="checkbox" id="Tại nhà" name="hinhthuc" value="Tai nha"> Tại nhà
		</label>
		<label for="Tại cơ quan">
			<input type="checkbox" id="Tại cơ quan" name="hinhthuc" value="Tai co quan"> Tại cơ quan
		</label>
		<label for="Khác">
			<input type="checkbox" id="Khác" name="hinhthuc" value="Khac"> Khác
		</label><br>
		<br>

		<input type="submit" value="Submit" id="submit">
	</form>
</body>
</html>
<!-- thứ nhất cái 1. edit info, 3. định nghĩa variable bằng xml, 3.erros page(3 trang errorcode, 1 trang errortype) -->

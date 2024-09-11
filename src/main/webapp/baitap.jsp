<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Bài Tập 3</title>
		<style>
    		table 
    		{
        		border-collapse: collapse;
        		width: 90%;
        		border: 2px solid black;
    		}
    		td, th 
    		{
        		border-bottom: 1px solid black; /* Chỉ tạo đường kẻ ngang */
        		padding: 10px; /* Tạo khoảng cách bên trong các ô */
        		text-align: left;
    		}
    		tr:nth-child(even) 
    		{
       			background-color: #f2f2f2; /* Tạo màu nền xám nhạt cho hàng chẵn */
    		}
    		th 
    		{
        		font-weight: bold; /* In đậm nội dung hàng đầu */
    		}
</style>
	</head>
	<body>
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Points</th>
			</tr>
			<tr>
				<td>Jill</td>
				<td>Smith</td>
				<td>50</td>
			</tr>
			<tr>
				<td>Eve</td>
				<td>Jackson</td>
				<td>94</td>
			</tr>
			<tr>
				<td>Adam</td>
				<td>Johnson</td>
				<td>67</td>
			</tr>
		</table>
	</body>
</html>
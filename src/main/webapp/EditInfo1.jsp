<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="User1.user" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirm Information</title>
</head>
<body>
<%
    user user = (user) request.getAttribute("user");
    String[] transportTypes = user.getGHTD();
%>
<form>
    <h1>User Information</h1><br>
    <label>Ho Ten: </label>
    <input type="text" id="name" name="name" value="<%= user.getFname() %>"><br>
    <label>Email Address: </label>
    <input type="email" id="email" name="email" value="<%= user.getEmail() %>"><br>
    <label>Password: </label>
    <input type="password" id="password" name="password" value="<%= user.getPassword() %>"><br>
    <label>Dia Chi: </label>
    <input type="text" id="locate" name="locate" value="<%= user.getAddress() %>"><br>
    
    <label>Gioi Tinh:</label>
    <label for="male" class="gender">
        <input type="radio" id="male" name="gender" value="0" <%= user.getSex() %>>Nam
    </label>
    <label for="female" class="gender">
        <input type="radio" id="female" name="gender" value="1" <%= user.getSex() %>>Nữ
    </label><br>
    
    <label>Kind of transport:</label>
    <label for="In home" class="Type">
        <input type="checkbox" id="Home" name="Type" value="In home" 
            <%= (transportTypes != null && java.util.Arrays.asList(transportTypes).contains("In home")) ? "checked" : "" %>>Tai nha
    </label>
    <label for="In office" class="Type">
        <input type="checkbox" id="Office" name="Type" value="In office" 
            <%= (transportTypes != null && java.util.Arrays.asList(transportTypes).contains("In office")) ? "checked" : "" %>>Tai co quan
    </label>
    <label for="Other" class="Type">
        <input type="checkbox" id="Other" name="Type" value="Other" 
            <%= (transportTypes != null && java.util.Arrays.asList(transportTypes).contains("Other")) ? "checked" : "" %>>Khac
    </label><br>
    
    <input type="submit" value="Confirm">
</form>
</body>
</html>

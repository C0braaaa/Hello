<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@page import="User1.user2" %>
<title>Insert title here</title>
</head>
<body>
<%
	user2 usr = (user2) request.getAttribute("usr");
%>
	<p>Name: ${usr.getFname()}</p>
		<p>Gender: 
<% if(usr.isSex()){ %>
    <span>Male</span>
<% } else { %>
    <span>Female</span>
<% } %>
	<p>Email: ${usr.getEmail()}</p>
	<p>Address: ${usr.getAddress()}</p>
	<p>City: ${usr.getCity()}</p>
<span>Hinh thuc giao hang: </span>
<%
for (String type : usr.getGHTD()){
%>
<span><%= type %></span>
<%
}
%>
</body>
</html>
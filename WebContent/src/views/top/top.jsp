<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String title = "Welcome to Mypage!";
	String text01 = "I'm Text01";
	String form01 = "I'm Text01";
	String button01 = "I'm Text01";
	String field01 = "I'm Text01";
	String item01 = "I'm Text01";
%>
<h1><%= title %></h1>
<%= new java.util.Date() %>

<h1>${requestScope["model"].message }</h1>
<h2>${model.message }</h2>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><%= new java.util.Date() %></title>

<script src="src/javascripts/jquery-3.2.1.min.js"></script>
<script src="src/javascripts/bootstrap.min.js"></script>
<link href="src/stylesheets/bootstrap.min.css" rel="stylesheet">

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
<h2>${model.message }</h2>
<p><%= text01 %></p>
<p><%= form01 %></p>
<p><%= button01 %></p>
<p><%= field01 %></p>
<p><%= item01 %></p>

<div>
	<h1>SampleForm</h1>
	<form>
		<fieldset>
			<label>LabekName</label>
			<input type="text" placeholder="Type here.">
			<br/>
			<button class="btn btn-large btn-primary" type="button">LargeButton</button>
		</fieldset>
	</form>
</div>
<div class="jumbotron">
	<h1>Column01 !</h1>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Main</title>

<script src="src/javascripts/jquery-3.2.1.min.js"></script>
<script src="src/javascripts/bootstrap.min.js"></script>
<link href="src/stylesheets/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="jumbotron">
				<h1>Column01 !</h1>
			</div>		
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-3"></div>
			<div class="col-xs-12 col-sm-6">
				<h1>UploadForm</h1>
				<form action="main/upload" method="post" enctype="multipart/form-data">
					<label>ImageFile : </label>
					<br/>
					<input type="file" name="filename">
					<br/>
					<input type="submit" value="Go">
				</form>
			</div>
			<div class="col-xs-12 col-sm-3"></div>			
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-6 col-md-offset-3"><h2>/---------- View Zone ----------/</h2></div>		
			<div class="col-xs-12 col-sm-6">sample image</div>
			<div class="col-xs-12 col-sm-6">read image</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<img src="src/images/img001.png" class="img-responsive">
			</div>
			<div class="col-xs-12 col-sm-6">
				temp
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-9"></div>
			<div class="col-xs-12 col-sm-3">
				<a href="top">return TopView</a>
			</div>
		</div>
	</div>
</body>
</html>
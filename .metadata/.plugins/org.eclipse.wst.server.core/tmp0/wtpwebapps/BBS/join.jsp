<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content = "width=device-width,initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Word of Mouth</title>
</head>
<body>
<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
		data-target="#bs-example-navbar-collapse-1" aria-expanded="false" >
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp"> Word of Mouth </a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav">
	<li><a href="main.jsp">Main</a></li>
	<li><a href="bbs.jsp">Board</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
		aria-haspopup="true" aria-expended="false">connect<span class="caret"></span></a>
		<ul class="dropdown-menu">
		<li><a href="login.jsp">Login</a></li>
		<li class="active"><a href="join.jsp">join</a></li>
		</ul>
		</li>
		</ul>
		</div>
		</nav>
<div class="container">
<div class="col-lg-4"></div>
<div class="col-lg-4">
	<div class="jumbotron" style="padding-top: 20px;">
		<form method="post" action="joinAction.jsp">
			<h3 style="text.align: center;">Register</h3>
			<div class ="form-group">
				<input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20">
			</div>
			<div class ="form-group">
				<input type="password" class="form-control" placeholder="PASSWORD" name="userPassword" maxlength="20">
			</div>
			<div class ="form-group">
				<input type="text" class="form-control" placeholder="Name" name="userName" maxlength="20">
			</div>
			<div class ="form-group" style="text-align: center;">
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-primary active">
						<input type="radio" name="userGender" autocomplete="off" value="Male" checked>Male
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="userGender" autocomplete="off" value="Female" checked>Female
					</label>
			</div>
			</div>
			<div class ="form-group">
				<input type="email" class="form-control" placeholder="Email" name="userEmail" maxlength="20">
			</div>
			<input type="submit" class="btn btn-primary form-control" value="JoinMember">
		</form>
	</div>
</div>
<div class="col-lg-4"></div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>﻿
<script src="js/bootstrap.js"></script>
</body>
</html>
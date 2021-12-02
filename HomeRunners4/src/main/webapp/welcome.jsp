<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>MLB Stats</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			

			<ul class="navbar-nav">
			Season:
				<li><a href="<%=request.getContextPath()%>/season2019"
					class="nav-link">2019</a></li>
					<li><a href="<%=request.getContextPath()%>/season2018"
					class="nav-link">2018</a></li>
			</ul>
			
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center"> Welcome to the Homerunners MLB Stats Website </h3>
			<hr>
			
			<br>
			
			
			
		</div>
	</div>
</body>
</html>
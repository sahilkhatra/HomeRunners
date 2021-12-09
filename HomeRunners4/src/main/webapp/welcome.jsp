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
<style>
li {
	font-size: 16px; 
	color: white;
}

</style>
</head>
<body>
<embed src="/What a funktastic hit 2.mp3" loop="true" autostart="true" width="2" height="0">
		<embed>
		
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			

			<ul class="navbar-nav">
			<li> Season:</li>
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
			<div>
			<img src="/Shinada close up 1 cropped 2.jpg" height="630" width ="552">
			<img src="/Sawada close up 1 cropped 2.jpg" height="630" width ="552">
			
			</div>		
		
		</div>
	</div>

</body>
</html>
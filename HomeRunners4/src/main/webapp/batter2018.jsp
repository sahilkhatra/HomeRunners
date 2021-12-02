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
			<div>
				<a href="http://localhost:8080/HomeRunners/" class="navbar-brand"> MLB Stats </a>
			</div>

			
			
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/pitchers2018"
					class="nav-link">2018 Pitchers</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Top 2018 MLB Batter Stats</h3>
			<hr>
			
			<br>
			
			<div class="col-md-4">
				<form action="" method="get">
					<input type="text" class="form-control" name="q" placeholder="Search here..."/>
				</form>
			
			</div>
			
			
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Height</th>
						<th>Weight</th>
						<th>Age</th>
						<th>Team</th>
						<th>HR</th>
						<th>AB</th>
						<th>AVG</th>
						<th>OBP</th>
						<th>SLG</th>
						<th>OPS</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					
					<c:forEach var="user" items="${listBatter2018}">

						<tr>
							<td><c:out value="${user.nameFirst}" /></td>
							<td><c:out value="${user.nameLast}" /></td>
							<td><c:out value="${user.height}" /></td>
							<td><c:out value="${user.weight}" /></td>
							<td><c:out value="${user.age}" /></td>
							<td><c:out value="${user.teamID}" /></td>
							<td><c:out value="${user.HR}" /></td>
							<td><c:out value="${user.AB}" /></td>
							<td><c:out value="${user.AVG}" /></td>
							<td><c:out value="${user.OBP}" /></td>
							<td><c:out value="${user.SLG}" /></td>
							<td><c:out value="${user.OPS}" /></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
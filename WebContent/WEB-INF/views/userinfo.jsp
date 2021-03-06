<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Hood Samaritan</title>

<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Favicon -->
<link rel="shortcut icon"
	href="https://files.slack.com/files-pri/T04UPFZ31-F9KERJV0T/finalprojecticon.png" />

<style>
body {
	background-color: #000816;
}

h1 {
	color: #fff575;
	text-align: center;
	font-family: georgia;
}

h2 {
	color: white;
	background-color: #00798C;
	opacity: .85;
}

h3 {
	color: white;
	font-family: arial;
}

h5 {
	color: white;
}

a {
	color: #D1495B;
}

p {
	color: white;
}

#container {
	border: 0px solid;
	max-width: 840px;
	padding-left: 50px;
	padding-right: 50px;
	margin: auto;
	display: block;
	overflow-x: hidden;
}

#header {
	top: 0px;
	left: 0px;
	position: fixed;
	color: #ffe375;
	background-image:
		url("https://image.freepik.com/free-vector/abstract-dark-blue-polygonal-background_1035-9700.jpg");
	height: 150px;
	width: 100%;
	z-index: 1;
	text-align: center;
	display: block;
}

#content {
	text-align: center;
	width: 100%;
	background-color: #EDAE49;
	overflow-x: hidden;
	clear: both;
	border: 1px solid;
	margin-top: 50px;
	width: 100%;
}
</style>
</head>
<body>
	<div id="container">
		<div id="header">
			<br>
			<h1>HOOD SAMARITAN</h1>
			<h2>Volunteer  |  Donate  |  Support</h2>
			<br>
		</div>

		<div id="content">
			<br> <br> <br> <br> <br>

	<h2>User Account</h2>
	<p>Please confirm your login information</p>
			<form action="userinfosend" method="post">
				<div class="container">
					<label for="uName"><b>User Name</b></label><br> <input
						type="text" placeholder="Enter User Name" name="uName" required><br>

					<label for="password"><b>Password</b></label><br> <input
						type="password" placeholder="Enter Password" name="password"
						required><br>
					<br> <input type="submit" value="Confirm">

				</div>
			</form>
			<div>
			<br>
			<h2>User Information</h2>
				<br> <br>

				<br>
				<table style="width: 100%">
					<tr>
						<th>User Name</th>
						<th>${user2.username}</th>
					</tr>
					<tr>
						<th>Name</th>
						<th>${user2.firstName}${user2.lastName}</th>
					</tr>
					<tr>
						<th>Email</th>
						<th>${user2.email}</th>
					</tr>
					<tr>
						<th>Phone</th>
						<th>${user2.phone}</th>
					</tr>
					<tr>
						<th>Address</th>
						<th>${user2.address}</th>
					</tr>
					<tr>
						<th>Hours Donated</th>
						<th>${user2.hours}</th>
					</tr>
				</table>


			</div>
			<br>
			<h2>Posted Tasks</h2>
			<br>
			
			
			
<table border="1" align="center">
				<tr>
					<th>Title</th>
					<th>Date</th>
					<th>Time (Military Time)</th>
					<th>Task Length (Hrs)</th>
					<th>City</th>
					<th> </th>
					<th></th>
				</tr>

				<c:forEach var="myVar" items="${userList}">

					<tr>
						<td>${myVar.title}</td>
						<td>${myVar.date}</td>
						<td>${myVar.time}</td>
						<td>${myVar.estimatedTime}</td>
						<td>${myVar.city}</td>
					<td><a href="deletetask?title=${myVar.title}">Delete</a>
		 <!--  	<td><a href="update?id=${myVar.productID}">Update</a>  -->
		
		</tr>
		
		
		</c:forEach>
		
	</table>
			
			
			
			
<br>
<form action="mainmenu.html">
    <input type="submit" value="Return to Main Menu" />
</form>
<br><br>
		</div>

	</div>
		
</body>
</html>
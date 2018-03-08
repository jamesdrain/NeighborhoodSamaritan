<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<title>Donation Options</title>

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
	text-align: center; width : 100%;
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
			<h2>Engage | Donate | Inspire</h2>
			<br>
		</div>

		<div id="content">
			<br> <br> <br> <br> <br>
<h3>Donation Options</h3>
<br>
<h4>Thank you for engaging with your community through Hood Samaritan</h4>
<br>

If you don't see your preferred organization in the below list, please <a href="http://panda-search.s3-website-us-east-1.amazonaws.com/">click here</a> to locate it.

<br>
<br>
--Insert DONATE option with PayPanda--
<br>
<br>
<h3>Popular Charities and EIN numbers</h3>
<br>
<table border="1" align="center">
<c:forEach var="myVar" items="${charList}">
<tr>
<td>${myVar.name}</td>
<td>${myVar.ein}</td>
</tr>
</c:forEach>
</table>

<br>
<br>
<form action="mainmenu.html">
    <input type="submit" value="Return" />
</form>
<br><br>
</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Favicon -->
<link rel="shortcut icon" href="https://files.slack.com/files-pri/T04UPFZ31-F9KERJV0T/finalprojecticon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<h1>Register!</h1>
	<form action="registrationsuccess" method="post">
		User Name: <input type="text" name="username"><br>
		E-mail: <input type="text" name="email"><br>
		Password: <input type="password" name="password"><br>
		Confirm Password: <input type="password" name="password"><br>
		First Name: <input type="text" name="firstName"><br>
		Last Name: <input type="text" name="lastName"><br>
		City: <input type="text" name="city"><br>
		Phone Number: <input type="text" name="phone"><br>
		<input type="submit" value="Sign-Up!">
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<form action="loging.controller" method="post">
		<table>
			<tr>
				<td>UserName:</td>
				<td><input type="text" name="aid"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="apassword"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="checkbox" name="remember-me">RememberMe</td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">Login</button></td>
			</tr>
		</table>
	</form>
</body>
</html>
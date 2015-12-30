<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="join" class="homework.JoinBean" />
<jsp:setProperty name="join" property="*" />



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Check Join</title>
</head>
<body>
	<center>
		<table border="1">
			<tr>
				<td>아이디 :</td>
				<td><jsp:getProperty name="join" property="id" /></td>
			<tr>
			<tr>
				<td>이름 :</td>
				<td><jsp:getProperty name="join" property="name" /></td>
			<tr>
			<tr>
				<td>이메일 :</td>
				<td><jsp:getProperty name="join" property="email" /></td>
			<tr>
			<tr>
				<td>번호 :</td>
				<td><jsp:getProperty name="join" property="call" /></td>
			<tr>
		</table>

	</center>
</body>
</html>
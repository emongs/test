<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Join Page</title>
</head>
<body>
	<form action="join.jsp" method="post">
		<table border=1>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>���̵�</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td><input type="text" name="mail"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="radio" name="gender" value="��"> ���� 
				<input type="radio" name="gender" value="��"> ���� </td>
			</tr>
			<tr>
				<td colspan="2" align=center>
				<input type="submit" value="����"> 
				<input type="button" value="�ٽ��Է�"> </td>
			</tr>
			<tr></tr>
		</table>
	</form>
</body>
</html>
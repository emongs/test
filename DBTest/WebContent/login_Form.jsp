<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Welcome</title>
</head>
<body>
	<center>
		<form name="loginform" action="login_Process.jsp" method="post">
			<table border=1>
				<tr>
					<td colspan="2" align="center"><b><font size=5> �α���
								ȭ�� </font></b></td>
				<tr>
					<td>���̵�</td>
					<td><input type="text" name="id"></td>
					
				</tr>

				<tr>
					<td>��й�ȣ</td>
					<td><input type="password" name="pw"></td>
				</tr>

				<tr>
					<td><input type="submit" value="�α���">
					<td><input type="button" value="ȸ������" onclick="location.href='join_Form.jsp'"></td>
				</tr>

			</table>
	</center>
	</form>
</body>
</html>
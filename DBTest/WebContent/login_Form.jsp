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
					<td colspan="2" align="center"><b><font size=5> 로그인
								화면 </font></b></td>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>
					
				</tr>

				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>

				<tr>
					<td><input type="submit" value="로그인">
					<td><input type="button" value="회원가입" onclick="location.href='join_Form.jsp'"></td>
				</tr>

			</table>
	</center>
	</form>
</body>
</html>
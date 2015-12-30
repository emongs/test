<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Join Screen</title>
<script language="JavaScript">
function regist(){
	var id = document.getElementById("id").value;
	var pw = document.getElementById("pw").value;
	var checkpw = document.getElementById("checkpw").value;
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var call = document.getElementById("call").value;

	if(id=="")
		{
		alert("아이디를 입력해");
		return;
		}
	
	if(pw != checkpw)
		{
		alert("비밀번호 제대로 입력해");
		return;
		}

}
	</script>
</head>
<body>
<form action="joinChk.jsp" name="reg" method="post">
		<table border="1" style="width: 100%; ">
		<tr>
			<td colspan="3" align="center">회원가입</td>
		</tr>

		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" id="id"></td>
			<td>아이디를 적어주세요</td>
		</tr>

		<tr>
			<td>패스워드</td>
			<td><input type="password" name="pw" id="pw"></td>
			<td>패스워드를 적어주세요</td>
		</tr>

		<tr>
			<td>패스워드 확인</td>
			<td><input type="password" name="checkpw" id="checkpw"></td>
			<td>패스워드를 확인합니다.</td>
		</tr>

		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name"></td>
			<td>이름을 적어주세요</td>
		</tr>

		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" id="email"></td>
			<td>이메일을 적어주세요.</td>
		</tr>

		<tr>
			<td>전화번호</td>
			<td><input type="text" name="call" id="call"></td>
			<td>전화번호를 적어주세요</td>
		</tr>
		
		<tr>
			<td colspan="3" align="center">
				<input type="submit" onClick="javascript:regist()" value="회원가입" name="submit"> &nbsp; &nbsp; &nbsp; &nbsp;
				<input type="reset" value="다시쓰기" name="rewirte">
			</td>
		</tr>
	</table>
</form>

</body>
</html>
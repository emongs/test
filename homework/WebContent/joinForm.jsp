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
		alert("���̵� �Է���");
		return;
		}
	
	if(pw != checkpw)
		{
		alert("��й�ȣ ����� �Է���");
		return;
		}

}
	</script>
</head>
<body>
<form action="joinChk.jsp" name="reg" method="post">
		<table border="1" style="width: 100%; ">
		<tr>
			<td colspan="3" align="center">ȸ������</td>
		</tr>

		<tr>
			<td>���̵�</td>
			<td><input type="text" name="id" id="id"></td>
			<td>���̵� �����ּ���</td>
		</tr>

		<tr>
			<td>�н�����</td>
			<td><input type="password" name="pw" id="pw"></td>
			<td>�н����带 �����ּ���</td>
		</tr>

		<tr>
			<td>�н����� Ȯ��</td>
			<td><input type="password" name="checkpw" id="checkpw"></td>
			<td>�н����带 Ȯ���մϴ�.</td>
		</tr>

		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name" id="name"></td>
			<td>�̸��� �����ּ���</td>
		</tr>

		<tr>
			<td>�̸���</td>
			<td><input type="text" name="email" id="email"></td>
			<td>�̸����� �����ּ���.</td>
		</tr>

		<tr>
			<td>��ȭ��ȣ</td>
			<td><input type="text" name="call" id="call"></td>
			<td>��ȭ��ȣ�� �����ּ���</td>
		</tr>
		
		<tr>
			<td colspan="3" align="center">
				<input type="submit" onClick="javascript:regist()" value="ȸ������" name="submit"> &nbsp; &nbsp; &nbsp; &nbsp;
				<input type="reset" value="�ٽþ���" name="rewirte">
			</td>
		</tr>
	</table>
</form>

</body>
</html>
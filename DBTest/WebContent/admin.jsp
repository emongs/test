<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init
				.lookup("java:comp/env/jdbc/Mysql_Test");
		//lookup�� �Ķ���ͷ� ���°� web.xml�� �Է��Ѱ� �״�� 
		conn = ds.getConnection();
		pstmt = conn.prepareStatement("SELECT * FROM dbtest");
		rs = pstmt.executeQuery();

	} catch (Exception e) {

		e.printStackTrace();
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Welcome</title>
</head>
<body>
	<center>
		<table border=1>
			<tr>
				<td colspan="2" align="center"><b><font size=5> ����ȭ��
					</font></b></td>
				<%
					while (rs.next()) {
				%>
			
			<tr>

				<td><a href="member_info.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("id")%></a></td>
				<td><a href="member_delete.jsp?id=<%=rs.getString("id")%>">����</a> </td>


			</tr>

			<%
				}
			%>

		</table>
	</center>
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	String info_id = request.getParameter("id");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init
				.lookup("java:comp/env/jdbc/Mysql_Test");
		//lookup�� �Ķ���ͷ� ���°� web.xml�� �Է��Ѱ� �״�� 
		conn = ds.getConnection();
		pstmt = conn
				.prepareStatement("SELECT * FROM dbtest WHERE id=?");
		pstmt.setString(1, info_id);
		rs = pstmt.executeQuery();

	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<html>
<head>
<title>ȸ������</title>
<body>
	<center>
		<%
			while (rs.next()) {
		%>
		<table border=1>
			<tr align=center>
				<td colspan=2>ȸ������</td>
			</tr>

			<tr align=center>
				<td>�̸�</td>
				<td><%=rs.getString("name")%></td>
			</tr>

			<tr align=center>
				<td>���̵�</td>
				<td><%=rs.getString("id")%></td>
			</tr>

			<tr align=center>
				<td>��й�ȣ</td>
				<td><%=rs.getString("pw")%></td>
			</tr>

			<tr align=center>
				<td>�̸���</td>
				<td><%=rs.getString("mail")%></td>
			</tr>

			<tr align=center>
				<td>����</td>
				<td><%=rs.getString("gender")%></td>
			</tr>
			<%
				}
			%>
			<tr align=center>
				<td colspan=2> <a href="admin.jsp">����Ʈ�� ���ư���</a></td>
			</tr>
		</table>
	</center>
</body>
</head>
</html>



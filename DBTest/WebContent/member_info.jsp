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
		//lookup의 파라미터로 들어가는건 web.xml에 입력한것 그대로 
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
<title>회원정보</title>
<body>
	<center>
		<%
			while (rs.next()) {
		%>
		<table border=1>
			<tr align=center>
				<td colspan=2>회원정보</td>
			</tr>

			<tr align=center>
				<td>이름</td>
				<td><%=rs.getString("name")%></td>
			</tr>

			<tr align=center>
				<td>아이디</td>
				<td><%=rs.getString("id")%></td>
			</tr>

			<tr align=center>
				<td>비밀번호</td>
				<td><%=rs.getString("pw")%></td>
			</tr>

			<tr align=center>
				<td>이메일</td>
				<td><%=rs.getString("mail")%></td>
			</tr>

			<tr align=center>
				<td>성별</td>
				<td><%=rs.getString("gender")%></td>
			</tr>
			<%
				}
			%>
			<tr align=center>
				<td colspan=2> <a href="admin.jsp">리스트로 돌아가기</a></td>
			</tr>
		</table>
	</center>
</body>
</head>
</html>



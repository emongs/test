<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	String delete_id = request.getParameter("id");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init
				.lookup("java:comp/env/jdbc/Mysql_Test");
		//lookup�� �Ķ���ͷ� ���°� web.xml�� �Է��Ѱ� �״�� 
		conn = ds.getConnection();
		pstmt = conn.prepareStatement("DELETE FROM dbtest WHERE id=?");
		pstmt.setString(1, delete_id);
		pstmt.executeUpdate();

		out.println("<script>");
		out.println("location.href='member_info.jsp'");
		out.println("</script>");

	} catch (Exception e) {

		e.printStackTrace();
	}
%>

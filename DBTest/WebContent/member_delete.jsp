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
		//lookup의 파라미터로 들어가는건 web.xml에 입력한것 그대로 
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

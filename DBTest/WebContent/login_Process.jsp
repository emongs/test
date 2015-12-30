<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	String LP_id = request.getParameter("id");
	String LP_pw = request.getParameter("pw");
	
	
	
	if(LP_id.equals("admin") && LP_pw.equals("admin"))
	{
		out.println("<script>");
		out.println("location.href='admin.jsp'");
		out.println("</script>");
	}

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "SELECT * FROM dbtest WHERE id=?";

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Mysql_Test");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, LP_id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			 if (LP_pw.equals(rs.getString("pw"))) {
				session.setAttribute("id", LP_id);

				out.println("<script>");
				out.println("location.href='main.jsp'");
				out.println("</script>");

			}	
			 else
			 {
				 out.println("<script>");
					out.println("location.href='login_Form.jsp'");
					out.println("alert('올바른 비밀번호를 입력하세요.');");
					out.println("</script>"); 
			 }
		}
		
		
		out.println("<script>");
		out.println("location.href='login_Form.jsp'");
		out.println("alert('올바른 아이디를 입력하세요.');");
		out.println("</script>");

	} catch (Exception e) {

		e.printStackTrace();
	}
%>

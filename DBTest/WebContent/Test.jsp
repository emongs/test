<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	Connection conn = null;
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init
				.lookup("java:comp/env/jdbc/Mysql_Test");
		conn = ds.getConnection();

		out.println("연결됨");
	} catch (Exception e) {
		out.println("<h3>연결실패</h3>");
		e.printStackTrace();

	}
%>

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

		out.println("�����");
	} catch (Exception e) {
		out.println("<h3>�������</h3>");
		e.printStackTrace();

	}
%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>

<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pass = request.getParameter("pw");
	String email = request.getParameter("mail");
	String gender = request.getParameter("gender");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String InsertSQL = "INSERT INTO dbtest VALUES (?,?,?,?,?)";
	String checkSQL = "SELECT * FROM dbtest";
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Mysql_Test");
		conn = ds.getConnection();
		pstmt = conn.prepareStatement(InsertSQL);
		
		PreparedStatement Cpstmt = conn.prepareStatement(checkSQL);
		ResultSet Crs = Cpstmt.executeQuery();
		
		if(Crs.next())
		{
			String checkID = Crs.getString("id");
			if(!checkID.equals(id))
			{
				  out.println("<script>");
				  out.println("alert('아이디가 중복됩니다.');");
				  out.println("location.href='join_Form.jsp'");
				  out.println("/<script>");
			}
				  
		}
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pass);
		pstmt.setString(4, email);
		pstmt.setString(5, gender);
		
		int result = pstmt.executeUpdate();
		
		if(result !=0)
		{
		out.println("<script>");
		out.println("location.href='login_Form.jsp'");
		out.println("</script>");
		}
		
		else
		{
			out.println("<script>");
			out.println("location.href='join_Form.jsp'");
			out.println("</script>");
		}
		
		//여기서 입력받은것 DB에 저장해줘야지 151227 2247
	}catch(Exception e){
		out.print("<h3> 등록에 실패했습니다.");
		
		e.printStackTrace();
	}
	
	


%>
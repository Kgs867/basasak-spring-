<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

	<%
		String driver = "com.mysql.jdbc.Driver"; //대소문자 기억! 
		Class.forName(driver); //클래스명을 집어넣어주면 자동으로 객체를 만들어주는 함수. 
		String url = "jdbc:mysql://localhost:3306/basasak?useUnicode=true&characterEncoding=UTF-8"; //sql의 포트번호와 SID적기 
		String userName = "root";
		String passWord = "1234";
		Connection con = DriverManager.getConnection(url, userName, passWord);
		PreparedStatement pstmt = null;
		String sql=null;
		try {
			int sum=Integer.parseInt(request.getParameter("c_price"))*Integer.parseInt(request.getParameter("number"));
			
			sql="update shopb set sb_count=?,sb_price=? where sb_serial=?";
			pstmt=con.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(request.getParameter("number")));
			pstmt.setInt(2, sum);
			pstmt.setString(3, request.getParameter("sb_serial"));
			pstmt.executeUpdate();	
		} catch (Exception e) {
			System.out.println("Cartupdate 에러" + e);
		}
			con.close();
			pstmt.close();

	%>

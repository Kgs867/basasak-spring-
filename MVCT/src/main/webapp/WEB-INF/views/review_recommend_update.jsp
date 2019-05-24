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
			sql="update review set r_recommend=? where r_num=?";
			

			pstmt = con.prepareStatement(sql);
			int r_num = Integer.parseInt(request.getParameter("r_num"));
			System.out.println(r_num);
			int r_recommend=Integer.parseInt(request.getParameter("r_recommend"))+1;
			System.out.println(r_recommend);
			
			pstmt.setInt(1, r_recommend);
			pstmt.setInt(2,r_num);
			pstmt.executeUpdate();	
		} catch (Exception e) {
			System.out.println("contupdate 에러" + e);
		}
			con.close();
			pstmt.close();

	%>

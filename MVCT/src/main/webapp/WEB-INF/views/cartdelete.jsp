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
		ResultSet rs=null;
		try {
			sql="delete from shopb where sb_serial=?";
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("sb_serial"));
			pstmt.executeUpdate();
			System.out.println((String)request.getSession().getAttribute("id"));
			sql="select count(*) from shopb where m_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, (String)request.getSession().getAttribute("id"));
			rs=pstmt.executeQuery();
			if(rs.next()){
				request.getSession().setAttribute("sb_count", rs.getInt(1));
				out.write(rs.getInt(1));
			}
		} catch (Exception e) {
			System.out.println("CartDelete 에러" + e);
		}
			con.close();
			pstmt.close();
			rs.close();
	%>
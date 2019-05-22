<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.lang.*"%>
<%@page import="java.awt.Robot" %>
<%! 
public void delay() throws Exception{
	Robot robot=new Robot();
	robot.delay(1000);
}
%>
<%
	System.out.println(request.getAttribute("done") + "," + request.getParameter("r_num"));
	int done = (Integer)request.getAttribute("done");
	String r_num= request.getParameter("r_num");
	if (done == 1) {
		out.println("<script> alert('수정완료'); location.href='content.do?r_num="+r_num+"';</script>");
	} else {
		out.println("<script> alert('수정실패 비밀번호 확인'); location.href='content.do?r_num="+r_num+"';</script>");
	}
%>

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
	System.out.println(request.getAttribute("delCheck") + "," + request.getParameter("n_num"));
	int delCheck = (Integer)request.getAttribute("delCheck");
	String n_num= request.getParameter("n_num");
	String pageNum= request.getParameter("pageNum");
	if (delCheck == 1) {
		out.println("<script> alert('삭제완료'); location.href='notice.do?pageNum="+pageNum+"';</script>");
	} else {
		out.println("<script> alert('삭제실패 비밀번호 확인'); location.href='deleteNoticeForm.do?n_num="+n_num+"&pageNum="+pageNum+"';</script>");
	}
%>

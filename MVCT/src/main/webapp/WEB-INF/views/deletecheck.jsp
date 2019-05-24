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
	System.out.println("ㅁㄴㄴㅇㅀㄴㅇ"+request.getAttribute("delCheck") + "," + request.getParameter("r_num"));
	int delCheck = (Integer)request.getAttribute("delCheck");
	String r_num= request.getParameter("r_num");
	if (delCheck == 1) {
		out.println("<script> alert('삭제완료'); location.href='review.do';</script>");
	} else {
		out.println("<script> alert('삭제실패 비밀번호 확인'); location.href='deleteForm.do?r_num="+r_num+"';</script>");
	}
%>

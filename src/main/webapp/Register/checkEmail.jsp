<%@page import="com.marketkurly.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String useremail = request.getParameter("useremail");
	MemberDAO mdao = new MemberDAO();
	if( !mdao.checkEmail(useremail) ){
		// 회원가입 가능 경우
		out.print("okemail");
	} else {
		// 회원가입 불가 경우
		out.print("not-okemail");
	}


%>
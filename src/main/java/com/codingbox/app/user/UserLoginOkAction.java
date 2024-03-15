package com.codingbox.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

import market.user.dao.UserDAO;

public class UserLoginOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		
		
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		if(udao.login(userid, userpw)) {
			// 로그인 성공
			forward.setPath("/app/main/mainview.jsp");
			
		} else {
			// 로그인 실패
			forward.setPath("/app/user/loginview.jsp?flag=false");
			
		}
		
		forward.setRedirect(true);
		
		return forward;
	}

	
}

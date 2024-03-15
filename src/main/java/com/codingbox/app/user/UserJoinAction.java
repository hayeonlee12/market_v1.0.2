package com.codingbox.app.user;

import javax.servlet.http.HttpServletRequest;                                                                                                                                                                                                                                                                                                                                                   
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

import market.user.dao.UserDAO;
import market.user.dao.UserDTO;

public class UserJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		user.setUserid(request.getParameter("userid"));
		user.setUserpw(request.getParameter("userpw"));
		user.setUsername(request.getParameter("username"));
		user.setUserphone(request.getParameter("userphone"));
		user.setUseraddr(request.getParameter("useraddr"));
		
	
		if(udao.join(user)) {
			forward.setPath("/app/user/loginview.jsp");
			forward.setRedirect(true);
		} else {
			forward.setPath("/index.jsp?flag=false");
			forward.setRedirect(true);
			
		}
		
		return forward;
		
	}

}

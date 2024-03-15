package com.market.mypage;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketLoginDAO;
import com.market.DAO.MarketMypageDAO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class UserInfoModifyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		String username = req.getParameter("username");
		String useremail = req.getParameter("useremail");
		String userpw = req.getParameter("userpw");
		String userid = req.getParameter("userid");
		
		System.out.println(username);
		System.out.println(useremail);
		System.out.println(userpw);
		System.out.println(userid);
		
		Map<String, String> datas = new HashMap<>();
		
		datas.put("username", username);
		datas.put("useremail", useremail);
		datas.put("userpw", userpw);
		datas.put("userid", userid);
		
		MarketMypageDAO mDAO = new MarketMypageDAO();

		if( userpw == null ) {
			mDAO.userModify2(datas);
		} else {
			mDAO.userModify(datas);
		}
		
		MarketUserDTO user = mDAO.userInfoGet(userid);
		HttpSession session = req.getSession();
		
		session.setAttribute("user", user);
		
		forward.setPath("/mypage/privacy_confirm.jsp");
		forward.setRedirect(true);
		
		return forward;
	}

}

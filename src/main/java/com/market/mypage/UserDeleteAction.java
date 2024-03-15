package com.market.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.MarketMypageDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class UserDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		String userid = req.getParameter("userid");
		
		MarketMypageDAO mDAO = new MarketMypageDAO();
		
		if(mDAO.userDelete(userid)) {
			forward.setPath("/market/MarketLogout.lo");
			forward.setRedirect(true);
		} else {
			try {
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('탈퇴하시는데 실패하셨습니다.');history.back();</script>");
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return forward;
	}

}

package com.market.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.MarketMypageDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class DupEmailCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = null;
		String useremail = req.getParameter("useremail");
		
		MarketMypageDAO mDao = new MarketMypageDAO();
		req.setAttribute("useremail", mDao.dupEmailCheck(useremail));
		try {
			PrintWriter out = resp.getWriter();
			out.print( mDao.dupEmailCheck(useremail) );
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return forward;
	}

}

package com.market.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.MarketMypageDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class LocInfoDelAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		String locationid = req.getParameter("locationid");
		MarketMypageDAO mDAO = new MarketMypageDAO();

		mDAO.locInfoDel(locationid);

		ActionForward forward = new ActionForward();
		
		forward.setPath("/mypage/LocationList.lo");
		forward.setRedirect(true);
		
		return forward;
	}

}

package com.market.mypage;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.MarketMypageDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class LocInfoModifyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		String locationid = req.getParameter("locationid");
		String locname = req.getParameter("locname");
		String locphone = req.getParameter("locphone");
		
		HashMap<String, String> datas = new HashMap<>();
		datas.put("locationid", locationid);
		datas.put("locname", locname);
		datas.put("locphone", locphone);
		
		MarketMypageDAO mDAO = new MarketMypageDAO();
		
		mDAO.locInfoModify(datas);
		
		forward.setPath("/mypage/LocationList.lo");
		forward.setRedirect(true);
		
		return forward;
	} 

}

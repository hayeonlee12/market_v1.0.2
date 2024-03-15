package com.market.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketMypageDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class LocationChangeSwapAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String userid = req.getParameter("userid");
		String locationid = req.getParameter("locationid");
		String beforeURL = req.getParameter("beforeURL");
		//userid 와 locbasic 1 을 기준으로 locbasic 0 으로 변경
		
		// 요청 받은 locationid 기준으로 locbasic 1 으로 변경
		
		MarketMypageDAO mDAO = new MarketMypageDAO();
		
		if( mDAO.locBasicUpdate(userid, locationid) ) {
			System.out.println("기본 배송지 수정 완료");
		} else {
			System.out.println("기본 배송지 수정 실패");
		}
		
		ActionForward forward = new ActionForward();
		
		HttpSession session = req.getSession();
//		System.out.println(session.getAttribute("locbasic"));
		session.setAttribute("locbasic",  req.getParameter("locaddr"));
//		System.out.println(session.getAttribute("locbasic"));
		
		forward.setRedirect(true);;
		forward.setPath(beforeURL);
		
		return forward;
	}
	
}

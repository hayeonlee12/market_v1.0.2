package com.market.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketMypageDAO;
import com.market.DTO.LocationDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class LocBasicUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String userid = req.getParameter("userid");
		String locationid = req.getParameter("locationid");
		
		//userid 와 locbasic 1 을 기준으로 locbasic 0 으로 변경
		
		// 요청 받은 locationid 기준으로 locbasic 1 으로 변경
		
		MarketMypageDAO mDAO = new MarketMypageDAO();
		LocationDTO loc = new LocationDTO();
		
	
		
		HttpSession session = req.getSession();
		
		
		if( mDAO.locBasicUpdate(userid, locationid) ) {
			System.out.println("기본 배송지 수정 완료");
		} else {
			System.out.println("기본 배송지 수정 실패");
		}
		
		loc = mDAO.selectLocBasic(userid);
		
		session.setAttribute("locbasic", loc.getLocaddr());
		
//		System.out.println(loc.getLocaddr());
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);;
		forward.setPath("/mypage/LocationList.lo");
		
		return forward;
	}
	
}

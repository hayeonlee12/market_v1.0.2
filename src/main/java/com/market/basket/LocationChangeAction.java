package com.market.basket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketMypageDAO;
import com.market.DTO.LocationDTO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class LocationChangeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
ActionForward forward = new ActionForward();
		
		MarketMypageDAO mDAO = new MarketMypageDAO();
		
		HttpSession session = req.getSession();
		MarketUserDTO user = (MarketUserDTO) session.getAttribute("user");
		
		if( user == null ) {
			try {
				PrintWriter out;
				out = resp.getWriter();
				out.print("<script>alert('로그인이 필요한 페이지 입니다.');</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
			forward.setRedirect(true);
			forward.setPath("/");
		} else {
			
			List<LocationDTO> locList =  mDAO.locationList(user.getUserid());
			req.setAttribute("locList", locList);
			forward.setRedirect(false);
			forward.setPath("/mypage/locationChange.jsp");
		}
		return forward;
	}

}

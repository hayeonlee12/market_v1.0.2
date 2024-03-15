package com.market.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketLoginDAO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class MarketLoginAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		String userid = req.getParameter("id");
		String userpw = req.getParameter("password");
		
		/*로그인 가능 페이지에서 로그인페이지로 넘어왔을 경우 다시 이전 페이지로 돌리기 위한 소스 구현 */
		String beforeURL = req.getParameter("beforeURL");

		
		Map<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		MarketLoginDAO dao = new MarketLoginDAO();
		HttpSession session = null;
		
		MarketUserDTO user = dao.loginMarket(datas); 
		
		// 장바구니 갯수를 위한 것
		int basketCnt = dao.basketCnt(userid);
//		session.setAttribute("basketCnt", basketCnt);
		
		// 기본배송지 정보 가지고 오기
		String locbasic = dao.basicLocation(userid);
		
		if(user == null) {
			// 로그인 실패
			System.out.println("로그인 실패");
			forward.setPath("/login/loginView.jsp?success=false");
		} else {
			// 로그인 성공
			// session 에 로그인 정보 저장
			session = req.getSession();
			session.setAttribute("user", user);
			// 장바구니 개수 저장
			session.setAttribute("basketCnt", basketCnt);
			// 기본 배송지 저장
			session.setAttribute("locbasic", locbasic);
			System.out.println(locbasic);
			
			if(beforeURL.equals("")) {
				forward.setPath("http://localhost:8081?success=true");
			} else {
				forward.setPath(beforeURL);
			}
			
		}

		// path 및 forward 여부 
		forward.setRedirect(true);
		
		return forward;
	}

}

package com.market.basket;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.BasketListDAO;
import com.market.DAO.MarketLoginDAO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class PurchaseAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		BasketListDAO bDAO = new BasketListDAO();
		
		String str = req.getParameter("arr");

		// cartList 에서 삭제하기 위함
		String[] cartidArr = str.split(",");
		
		for(int i = 0 ; i < cartidArr.length; i++ ) {
			bDAO.deleteBasket(cartidArr[i]);
		}
		
		// 구매내역 테이블에 저장하기 위함
		String userid = req.getParameter("userid");
		String payment = req.getParameter("payment");
		
		Map<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("payment", payment);
		
		bDAO.purchaseHistoryStore(datas);
		
		HttpSession session = req.getSession();
		MarketLoginDAO mDAO = new MarketLoginDAO();
		
		int basketCnt = mDAO.basketCnt(((MarketUserDTO) session.getAttribute("user")).getUserid());
		session.setAttribute("basketCnt", basketCnt);
		// 구매내역으로 이동
		forward.setPath("/mypage/PurchaseHistory.lo");
		forward.setRedirect(true);
		
		return forward;
	}

}

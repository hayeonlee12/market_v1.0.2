package com.market.basket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.BasketListDAO;
import com.market.DAO.MarketLoginDAO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class BasketDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		String[] cartid = req.getParameter("deleteList").split(",");
		
		BasketListDAO bDAO = new BasketListDAO();
		
		
		HttpSession session = req.getSession();
		MarketLoginDAO mDAO = new MarketLoginDAO();
		

		for(int i=0; i < cartid.length ; i++) {
			System.out.println(cartid[i] + " 삭제 시작");
			bDAO.deleteBasket(cartid[i]);
			System.out.println(cartid[i] + " 삭제 완료");
		}
		
		int basketCnt = mDAO.basketCnt(((MarketUserDTO) session.getAttribute("user")).getUserid());
		session.setAttribute("basketCnt", basketCnt);
		
		forward.setRedirect(true);
		forward.setPath("/basket/CartList.lo");
		return forward;
	}

}

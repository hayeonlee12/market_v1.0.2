package com.market.basket;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.BasketListDAO;
import com.market.DTO.BasketListDTO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class BasketAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		HttpSession session = req.getSession();
		MarketUserDTO user = (MarketUserDTO) session.getAttribute("user");
		
		BasketListDAO bDAO = new BasketListDAO();
		
		List<BasketListDTO> basketList = new ArrayList<>();
		
		if(user != null) {
			basketList = bDAO.listBasket(user.getUserid());
			req.setAttribute("basketList", basketList);

			int price = 0;
			int cnt = 0;
			int sum = 0;
			
			for( int i = 0 ; i < basketList.size() ; i++ ) {
				price = Integer.parseInt(basketList.get(i).getPrice());
				cnt = Integer.parseInt(basketList.get(i).getOrdercount());
				sum += (price * cnt);
			}
			
			req.setAttribute("sum", sum);
		} else {
			req.setAttribute("sum", 0);
		}
		
		
		forward.setRedirect(false);
		forward.setPath("/basket/basketView_default.jsp");
		
		return forward;
		
	}

}

package com.market.basket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.BasketListDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class BasketCntUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = null;
		
		String ordercount = req.getParameter("ordercount");
		System.out.println(ordercount);
		String cartid = req.getParameter("cartid");
		System.out.println(cartid);
		
		Map<String, String> datas = new HashMap<>();
		datas.put("ordercount", ordercount);
		datas.put("cartid", cartid);
		
		BasketListDAO bDAO = new BasketListDAO();
		
		try {
			PrintWriter out = resp.getWriter();
			out.print( bDAO.countCntUpdate(datas) );
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return forward;
	}

}

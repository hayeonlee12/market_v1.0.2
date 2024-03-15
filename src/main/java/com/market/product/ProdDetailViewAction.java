package com.market.product;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.ProductDAO;
import com.market.DTO.MarketUserDTO;
import com.market.DTO.ProductDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class ProdDetailViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String productid = req.getParameter("productid");
		
		HttpSession session = req.getSession();
		
		MarketUserDTO user = (MarketUserDTO) session.getAttribute("user");
		
		ProductDAO pDAO = new ProductDAO();
		
		ProductDTO prod = pDAO.prodGetInfo(productid);
		
		if(user == null) {
			req.setAttribute("zzimYN", "false");
			
		} else {
			String userid = user.getUserid();
			Map<String, String> datas = new HashMap<>();
			datas.put("userid", userid);
			datas.put("productid", productid);
			Boolean zzimYN = pDAO.getZzimYN(datas);
			req.setAttribute("zzimYN", zzimYN);
			
		}
		
		req.setAttribute("prod", prod);
		
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath("/product/productDetail.jsp");
		forward.setRedirect(false);
		return forward;
	}

}

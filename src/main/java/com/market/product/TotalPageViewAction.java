package com.market.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.ProductDAO;
import com.market.DTO.ProductDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

import market.productDAO;
import market.user.dao.UserDTO;

public class TotalPageViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
//		HttpSession session = req.getSession();
//		UserDTO user = (UserDTO) session.getAttribute("user");
		
		
		ProductDAO pDAO = new ProductDAO();
		
		List<ProductDTO> listProduct = pDAO.totalProductView();
		
		req.setAttribute("listProduct", listProduct);
		
		ActionForward forward = new ActionForward();
		
		forward.setPath("/product/totalPageView.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}

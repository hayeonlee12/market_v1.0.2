package com.market.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.ProductDAO;
import com.market.DTO.ProductDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class CategoryPageViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String categoryNum = req.getParameter("categoryNum");
		
		System.out.println(categoryNum);
		
		ProductDAO pDAO = new ProductDAO();
		
		List<ProductDTO> listProduct = pDAO.categoryProductView(categoryNum);
		
		req.setAttribute("listProduct", listProduct);
		
		ActionForward forward = new ActionForward();
		
		forward.setPath("/product/totalPageView.jsp");
		forward.setRedirect(false);
		
		return forward;
		
	}

}

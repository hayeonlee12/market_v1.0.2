package com.market.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketLoginDAO;
import com.market.DAO.ProductDAO;
import com.market.DTO.BasketDTO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;


public class InCartProdAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession session = req.getSession();
		MarketUserDTO user = (MarketUserDTO) session.getAttribute("user");
		
		if(user == null ) {
			try {
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('로그인이 필요한 서비스입니다.');</script>");
				out.println("<script>location.href='/login/loginView.jsp'</script>");
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
		
		String userid = req.getParameter("userid");
		String productid = req.getParameter("productid");
		String ordercount = req.getParameter("ordercount");
		
		BasketDTO cart = new BasketDTO();
		cart.setOrdercount(ordercount);
		cart.setProductid(productid);
		cart.setUserid(userid);
		
		ProductDAO pDAO = new ProductDAO();
		if(pDAO.inCart(cart)) {
			System.out.println("장바구니 담기 성공");
		} else {
			System.out.println("장바구니 담기 실패");
		}
		
		/*index.jsp 의 basket count 업데이트를 위한 구현*/
		MarketLoginDAO mDAO = new MarketLoginDAO();
		
		int basketCnt = mDAO.basketCnt(((MarketUserDTO) session.getAttribute("user")).getUserid());
		session.setAttribute("basketCnt", basketCnt);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/basket/CartList.lo");
		forward.setRedirect(false);
		
		return forward;
	}

}

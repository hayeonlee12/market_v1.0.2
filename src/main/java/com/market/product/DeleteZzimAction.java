package com.market.product;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.ProductDAO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class DeleteZzimAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = null;
		
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
		
		Map<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("productid", productid);
		
		ProductDAO pDAO = new ProductDAO();
		
		
		try {
			PrintWriter out = resp.getWriter();
			out.print( pDAO.deleteZzim(datas) );
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return forward;
	}

}

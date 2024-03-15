package test.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.ProductDAO;
import com.market.DTO.ProductDTO;
import com.market.action.ActionForward;

public class HelloServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProductDAO pDAO = new ProductDAO();
		
		List<ProductDTO> listProduct = pDAO.totalProductView();
		
		req.setAttribute("listProduct", listProduct);
		
		ActionForward forward = new ActionForward();
		
		forward.setPath("/product/totalPageView.jsp");
		forward.setRedirect(false);
		
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// true : redirect
				resp.sendRedirect(forward.getPath());
			} else {
				// false : forward
				RequestDispatcher dispsss = req.getRequestDispatcher(forward.getPath());
				dispsss.forward(req, resp);
			}
		}
		
	}
	
}

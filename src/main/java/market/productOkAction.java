package market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class productOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		product pd = new product();
		productDAO pdDAO = new productDAO();
		
		
		
		String productname = request.getParameter("productname");
		String price = request.getParameter("price");
	
		pd.setProductname(productname);
		pd.setPrice(price);
		
		if(pdDAO.login(pd)) {
            // 성공시
            System.out.println("성공시");
            forward.setPath("/detail.ao");
        } else {
            // 실패시
            System.out.println("실패시");
            forward.setPath("/detail.ao");
        }
        forward.setRedirect(false);

        return forward;
		
	}
	
		
	

}

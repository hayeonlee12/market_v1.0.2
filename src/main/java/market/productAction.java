package market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class productAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		product pd = new product();
		productDAO pdDAO = new productDAO();
		
		System.out.println("넘어왔땅");
		
		pd.setProductid(request.getParameter("productid")); 
		pd.setProductname(request.getParameter("productname")); 
		pd.setPrice(request.getParameter("price")); 
		pd.setProductimg(request.getParameter("productimg")); 
		

		forward.setPath("/detail.jsp");
		
        forward.setRedirect(false);

        
        return forward;
        
        
		
	}

}

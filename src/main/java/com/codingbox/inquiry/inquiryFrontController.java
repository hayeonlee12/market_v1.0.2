package com.codingbox.inquiry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.ActionForward;

@WebServlet("*.bo")
public class inquiryFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess (HttpServletRequest request, HttpServletResponse response )  throws IOException, ServletException  {
		String requestURI = request.getRequestURI();
		ActionForward forward = null;
		
		switch (requestURI) {
		case "/inquiry/inquirywrite.bo" :
			forward = new ActionForward(true, "/inquirywrite.jsp");
			break;
		
		case "/inquiry/inquiryWriteOk.bo" :
			forward = new inquirywriteOkAction().execute(request, response);
			break;
			
		case "/inquiry/inquiryList.bo" :
			forward = new inquiryListAction().execute(request, response);
			break;

		case "/inquiry/inquiry.bo" :
			forward = new inquiryAction().execute(request, response);
			break;
		}
		
		
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher disp = request.getRequestDispatcher(forward.getPath());
				disp.forward(request, response);
			}
		}
		
		
	}
	
}

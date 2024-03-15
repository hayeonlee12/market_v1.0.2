package com.marketkurly.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marketkurly.member.action.ActionForward;

@WebServlet("*.mo")
public class MemberFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String requestURI = request.getRequestURI();
		ActionForward forward = null;
		
		switch(requestURI) {
		case "/Register/Memberjoin.mo":
			System.out.println(requestURI + " 도착!!");
			forward = new MemberJoinAction().execute(request, response);
		
		}
		
		// 전송에 대한 일괄처리
				if( forward != null ) {
					if( forward.isRedirect() ) {	
						// true : redirect
						response.sendRedirect(forward.getPath());
					} else {
						// false : forward
						RequestDispatcher disp 
							= request.getRequestDispatcher(forward.getPath());
						disp.forward(request, response);
					}
				}
	}
}

package com.codingbox.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;
import com.codingbox.inquiry.bean.inquiryDAO;

public class inquiryAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		inquiryDAO idao = new inquiryDAO();
		
		String inquiryinqid = request.getParameter("inquiryinqid");
		
		
//		idao.updateReadCount(inquiryinqid);
		request.setAttribute("inquiry", idao.getDetail(inquiryinqid));
		forward.setPath("/inquiry.jsp");
		forward.setRedirect(false);
		
		//댓글 조회 기능인데 일단 따라서 만드렁 봅시다~
		
//		request.setAttribute("replylist", idao.getR);
		
		return forward;
	}

	
	
}

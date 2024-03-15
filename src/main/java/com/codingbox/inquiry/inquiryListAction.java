package com.codingbox.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;
import com.codingbox.inquiry.bean.inquiryDAO;


public class inquiryListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		inquiryDAO idao = new inquiryDAO();
		int totalCnt = idao.getInquiryCnt();
		
		//페이이이이이이잉이이이잉이이이이이징
		
		String temp = request.getParameter("page");
		int page = 0;
		page = temp == null ? 1 : Integer.parseInt(temp);
		
		
		//페이지 사이이이이이이이이이ㅣ이이이이잉ㅇ이즈
		
		int pageSize = 10;
		int endRow = page * 10;
		int startRow = endRow - 9;
		
		int startPage = (page-1)/pageSize*pageSize +1;
		
		int endPage = startPage + pageSize -1;
		int totalPage = (totalCnt -1)/pageSize +1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		request.setAttribute("totalCnt", totalCnt);
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		request.setAttribute("inquiryList", idao.getInquiryList(startRow, endRow));
		forward.setRedirect(false);
		forward.setPath("/inquiryList.jsp");
		
		return forward;
	}

	
	
}

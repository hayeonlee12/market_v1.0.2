package com.codingbox.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.logging.stdout.StdOutImpl;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;
import com.codingbox.inquiry.bean.InquiryBean;
import com.codingbox.inquiry.bean.inquiryDAO;
import com.market.DTO.MarketUserDTO;

public class inquirywriteOkAction implements Action {

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		inquiryDAO idao = new inquiryDAO();
		InquiryBean inquiry = new InquiryBean();
		
		System.out.println("넘어왔다");
		
		
		String inqcategory = request.getParameter("inqcategory");
		String inqtitle = request.getParameter("inqtitle");
		String inqcontent = request.getParameter("inqcontent");
		
		HttpSession session = request.getSession();
		MarketUserDTO user = (MarketUserDTO) session.getAttribute("user");
		String userid = user.getUserid();
		
		inquiry.setInqcategory(inqcategory);
		inquiry.setInqtitle(inqtitle);
		inquiry.setInqcontent(inqcontent);
		inquiry.setUserid(userid);
		
		if(idao.insertinquiry(inquiry)) {
			//성공하면..! 제발 제발제발
			System.out.println("성공했냐");
			forward.setPath("/inquiry/inquiryList.bo");
		} else {
			// 실패시 몰라 일단 두개다 성공시켜줘 제발
			System.out.println("실패했냐");
			forward.setPath("/inquiry/inquirywrite.bo");
		}
		
		forward.setRedirect(true);
		
		
		return forward;
	}

	
	
}

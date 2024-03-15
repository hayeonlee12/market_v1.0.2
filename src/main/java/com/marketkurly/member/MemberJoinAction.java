package com.marketkurly.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DTO.LocationDTO;
import com.marketkurly.member.action.Action;
import com.marketkurly.member.action.ActionForward;
import com.marketkurly.member.dao.MemberDAO;
import com.marketkurly.member.dao.MemberDTO;

public class MemberJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		MemberDTO member = new MemberDTO();
		MemberDAO mdao = new MemberDAO();
		
		member.setUserid(req.getParameter("userid"));
		member.setUserpw(req.getParameter("userpw"));
		member.setUsername(req.getParameter("username"));
		member.setUserphone(req.getParameter("userphone"));
		member.setUseremail(req.getParameter("useremail"));
		member.setUserbirth(req.getParameter("userbirth"));
		member.setUseraddress(req.getParameter("addr") + req.getParameter("addrdetail"));
		member.setLocbasic(req.getParameter("basicaddr"));
		
		/* kdy : 배송지 테이블에 insert ( locbasic -> 1 ) */
		LocationDTO loc = new LocationDTO();
		
		loc.setLocaddr(req.getParameter("addr") + req.getParameter("addrdetail"));
		loc.setLocname("");
		loc.setLocphone("");
		loc.setUserid(req.getParameter("userid"));
		loc.setLocbasic("1");
		
		ActionForward forward = new ActionForward();
		
		if (mdao.join(member)) {
			
			mdao.insertLocTable(loc);
			forward.setPath("/login/loginView.jsp");
			forward.setRedirect(true);
		} else {
			forward.setPath("/Register/register.jsp?flag=false");
			forward.setRedirect(true);
		}
		
		return forward;
	}
	
}

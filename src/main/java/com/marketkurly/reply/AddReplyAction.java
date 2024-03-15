package com.marketkurly.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marketkurly.reply.action.Action;
import com.marketkurly.reply.action.ActionForward;
import com.marketkurly.reply.dao.ReplyDAO;
import com.marketkurly.reply.dao.ReplyDTO;

public class AddReplyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		ReplyDTO reply = new ReplyDTO();
		ReplyDAO rdao = new ReplyDAO();
		
		String productid 
			= req.getParameter("productid");
		String username = req.getParameter("username");
		String anndetail = req.getParameter("anndetail");
		
		reply.setProductid(productid);
		reply.setUsername(username);
		reply.setAnndetail(anndetail);
		
		if(rdao.addReply(reply)) {
			// 등록 성공
			forward.setRedirect(true);
//			forward.setPath("/board/BoardView.bo?productid="+productid); (앞에만 상세 주소 변경)
		} else {
			// 등록 실패
			try {
				forward.setRedirect(false);
				PrintWriter out;
				out = resp.getWriter();
				out.println("<script>alert('오류가 발생');history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return forward;
	}

}

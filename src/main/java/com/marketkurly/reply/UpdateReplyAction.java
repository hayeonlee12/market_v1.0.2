package com.marketkurly.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;
import com.marketkurly.reply.dao.ReplyDAO;

public class UpdateReplyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		ReplyDAO rdao = new ReplyDAO();
		
		
		int productid = Integer.parseInt(request.getParameter("productid"));
		String replycontents = request.getParameter("reply"+productid);
		
		if( rdao.updateReply(productid, replycontents) ) {
			// 성공
			forward.setRedirect(true);
			forward.setPath("/board/BoardView.bo?productid="+productid);
		} else {
			// 실패
			try {
				forward.setRedirect(false);
				PrintWriter out;
				out = resp.getWriter();
				out.println("<script>alert('댓글수정 실패');history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		
		
		return forward;
	}

}















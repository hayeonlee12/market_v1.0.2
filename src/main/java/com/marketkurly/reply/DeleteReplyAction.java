package com.marketkurly.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marketkurly.reply.action.Action;
import com.marketkurly.reply.action.ActionForward;
import com.marketkurly.reply.dao.ReplyDAO;

public class DeleteReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		ReplyDAO rdao = new ReplyDAO();
		
		String productid = request.getParameter("productid");
		
		if(rdao.deleteReply(productid)) {
			forward.setRedirect(true);
//			forward.setPath("/board/BoardView.bo?productid="+productid); (요청 주소 변경)
		}
		
		return forward;
	}

}















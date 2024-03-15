package com.marketkurly.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marketkurly.reply.action.Action;
import com.marketkurly.reply.action.ActionForward;
import com.marketkurly.reply.dao.ReplyDAO;

public class ViewReplyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		ReplyDAO rdao = new ReplyDAO();
		
		int productid = Integer.parseInt(req.getParameter("productid"));
		
		// 댓글 조회
				req.setAttribute("replylist", rdao.getReply(productid));
//				req.setAttribute("board", rdao.getDetail(productid)); (상세가 어디지)
//				forward.setPath("/board/boardview.jsp"); (주소 변경 필요)
				forward.setRedirect(false);
				
				return forward;
	}

}

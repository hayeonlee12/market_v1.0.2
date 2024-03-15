package com.marketkurly.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marketkurly.reply.action.ActionForward;



@WebServlet("*.ro")
public class ReplyFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) {
		String requestURI = "";
		ActionForward forward = null;
		
//		switch(requestURI) {
//		case "": //  댓글 추가 주소
//			System.out.println(requestURI + " 도착!!");
//			forward = new AddReplyAction().execute(request, response);
//		case "": //  댓글 수정 주소
//			System.out.println(requestURI + " 도착!!");
//			forward = new UpdateReplyAction().execute(request, response);
//		case "": // 댓글 삭제 주소
//			System.out.println(requestURI + " 도착!!");
//			forward = new DeleteReplyAction().execute(request, response);
//		case "": //  댓글 조회 주소
//			System.out.println(requestURI + " 도착!!");
//			forward = new ViewReplyAction().execute(request, response);
		}
	
}

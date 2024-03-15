package com.market.mypage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.MarketMypageDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class NewLocationAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		String locaddr = req.getParameter("addr");
		String userid = req.getParameter("userid");
		String locbasic = req.getParameter("locbasic");
		System.out.println(locaddr);
		System.out.println(userid);
		
		HashMap<String, String> datas = new HashMap<String, String>();
		datas.put("locaddr", locaddr);
		datas.put("userid", userid);
		//checked: true -> locbasic : 1
		//checked: false -> locbasic : 0
		datas.put("locbasic", locbasic);
		
		

		// 기존 1을 찾고 0으로 변경해준다.
		// userid 와 1을 기준으로 update 처리
		// 그리고 insert 처리
		ActionForward forward = new ActionForward();
		MarketMypageDAO mDAO = new MarketMypageDAO();
		
		if(locbasic.equals("0")) {
			
			if(mDAO.insertLocation(datas)) {
				// 새 배송지 추가 완료
				forward.setPath("/mypage/LocationList.lo");
				forward.setRedirect(true);
			} else {
				// 새 배송지 추가 실패
				try {
					PrintWriter out = resp.getWriter();
					out.print("<script>alert('새 배송지 추가 실패')</script>");
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else {
			
			if(mDAO.locBasicUpdateAndInsert(userid, datas)) {
				// 새 배송지 추가 완료
				forward.setPath("/mypage/LocationList.lo");
				forward.setRedirect(true);
			} else {
				// 새 배송지 추가 실패
				try {
					PrintWriter out = resp.getWriter();
					out.print("<script>alert('새 배송지 추가 실패')</script>");
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
		}
		
		return forward;
	}
	
}

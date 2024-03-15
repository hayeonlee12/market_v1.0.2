package com.market.mypage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketMypageDAO;
import com.market.DTO.MarketUserDTO;
import com.market.DTO.ZzimJoinProductDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class ZzimListViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		
		HttpSession session = req.getSession();
		MarketUserDTO user = (MarketUserDTO) session.getAttribute("user");
		
		if(user == null ) {
			try {
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('로그인이 필요한 서비스입니다.');</script>");
				out.println("<script>location.href='/login/loginView.jsp'</script>");
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
		
		MarketMypageDAO mDAO = new MarketMypageDAO();
		List<ZzimJoinProductDTO> zzimList = mDAO.zzimList(user.getUserid());
		
		req.setAttribute("zzimList", zzimList);
		
		forward.setPath("/mypage/zzimlist.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}

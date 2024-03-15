package com.market.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.ActionForward;
import com.market.basket.BasketAction;
import com.market.basket.BasketCntUpdateAction;
import com.market.basket.BasketDeleteAction;
import com.market.basket.LocationChangeAction;
import com.market.basket.PurchaseAction;
import com.market.login.MarketLoginAction;
import com.market.mypage.DupEmailCheckAction;
import com.market.mypage.InfoConfirmAction;
import com.market.mypage.LocBasicUpdateAction;
import com.market.mypage.LocInfoDelAction;
import com.market.mypage.LocInfoModifyAction;
import com.market.mypage.LocationChangeSwapAction;
import com.market.mypage.LocationListAction;
import com.market.mypage.NewLocationAction;
import com.market.mypage.PurchaseHistoryAction;
import com.market.mypage.ReviewViewAction;
import com.market.mypage.UserDeleteAction;
import com.market.mypage.UserInfoModifyAction;
import com.market.mypage.ZzimListViewAction;
import com.market.product.CategoryPageViewAction;
import com.market.product.DeleteZzimAction;
import com.market.product.InCartProdAction;
import com.market.product.InsertZzimAction;
import com.market.product.ProdDetailViewAction;
import com.market.product.TotalPageViewAction;

@WebServlet("*.lo")
public class MarketFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch (requestURI) {
		case "/market/MarketLogin.lo":
			// 로그인
			forward = new MarketLoginAction().execute(req, resp);
			break;
		case "/market/MarketLogout.lo":
			// 로그아웃 시, 세션 user 정보 삭제
			req.getSession().removeAttribute("user");
			req.getSession().removeAttribute("basketCnt");
			req.getSession().removeAttribute("locbasic");
			System.out.println("탈퇴 2");
			forward = new ActionForward(true, "http://localhost:8081/");
			break;
		case "/mypage/PrivacyModify.lo":
			forward = new InfoConfirmAction().execute(req, resp);
			break;
		case "/mypage/DupEmailCheck.lo":
			forward = new DupEmailCheckAction().execute(req, resp);
			break;
		case "/basket/CartList.lo":
			forward = new BasketAction().execute(req, resp);
			break;
		case "/basket/DeleteBasket.lo":
			forward = new BasketDeleteAction().execute(req, resp);
			break;
		case "/basket/BasketCntUpdate.lo":
			forward = new BasketCntUpdateAction().execute(req, resp);
			break;
		case "/mypage/LocationList.lo":
			forward = new LocationListAction().execute(req, resp);
			break;
		case "/mypage/LocBasicUpdate.lo":
			forward = new LocBasicUpdateAction().execute(req, resp);
			break;
		case "/mypage/NewLocation.lo":
			forward = new NewLocationAction().execute(req, resp);
			break;
		case "/mypage/LocInfoModify.lo":
			forward = new LocInfoModifyAction().execute(req, resp);
			break;
		case "/mypage/LocInfoDel.lo":
			forward = new LocInfoDelAction().execute(req, resp);
			break;
		case "/mypage/userDelete.lo":
			forward = new UserDeleteAction().execute(req, resp);
			break;
		case "/mypage/LocationChange.lo":
			forward = new LocationChangeAction().execute(req, resp);
			break;
		case "/mypage/LocationChangeSwap.lo":
			forward = new LocationChangeSwapAction().execute(req, resp);
			break;
		case "/mypage/UserInfoModify.lo":
			forward = new UserInfoModifyAction().execute(req, resp);
			break;
		case "/mypage/Purchase.lo":
			forward = new PurchaseAction().execute(req, resp);
			break;
		case "/mypage/PurchaseHistory.lo":
			forward = new PurchaseHistoryAction().execute(req, resp);
			break;
		case "/prod/TotalPageView.lo":
			forward = new TotalPageViewAction().execute(req, resp);
			break;
		case "/prod/CategoryPageView.lo":
			forward = new CategoryPageViewAction().execute(req, resp);
			break;
		case "/mypage/ZzimListView.lo":
			forward = new ZzimListViewAction().execute(req, resp);
			break;
		case "/mypage/ReviewView.lo":
			forward = new ReviewViewAction().execute(req, resp);
			break;
		case "/product/prodDetailView.lo":
			forward = new ProdDetailViewAction().execute(req, resp);
			break;
		case "/product/InCartProd.lo":
			forward = new InCartProdAction().execute(req, resp);
			break;
		case "/product/InsertZzim.lo":
			forward = new InsertZzimAction().execute(req, resp);
			break;
		case "/product/DeleteZzim.lo":
			forward = new DeleteZzimAction().execute(req, resp);
			break;
		default:
			break;
		}
		// redirect / forward 방식에 따라 요청 페이지에 처리 방법 분할
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// true : redirect
				resp.sendRedirect(forward.getPath());
			} else {
				// false : forward
				RequestDispatcher dispsss = req.getRequestDispatcher(forward.getPath());
				dispsss.forward(req, resp);
			}
		}
		
	}

}

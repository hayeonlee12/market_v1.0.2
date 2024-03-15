<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 	로그인해야 가능한 페이비 여부 판단으로 추가  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link href="/css/tag.css" rel="stylesheet" type="text/css" />
<link href="/css/headView.css" rel="stylesheet" type="text/css" />
<link href="/css/loginView.css" rel="stylesheet" type="text/css" />
<link href="/css/mypageView.css" rel="stylesheet" type="text/css" />
<link href="/css/searchView.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<title>세션 종료됨</title>

</head>
<body>

		<!-- 로그인해야 접속 가능한 페이지 여부 판단 -->
	<c:if test="${sessionScope.user == null }">
		<script type="text/javascript">
			alert("세션이 종료 됐습니다. 다시 로그인해주세요.");
			var curURL = window.location.href;
			location.href="/login/loginView.jsp?beforeURL="+curURL;
		</script>	
	</c:if>
	
	<div class="b2">마이페이지</div>
	<ul class="b3">
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/PurchaseHistory.lo">주문 내역 <span class="b6"></span>
		</a></li>
<%-- 		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/presenthistory.jsp">선물 내역 <span class="b6"></span> --%>
<!-- 		</a></li> -->
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/ZzimListView.lo">찜한 상품 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/LocationList.lo">배송지 관리 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/ReviewView.lo">상품 후기 <span class="b6"></span>
		</a></li>
<%-- 		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/inquire.jsp">상품 문의 <span class="b6"></span> --%>
<!-- 		</a></li> -->
<%-- 		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/coupon.jsp">쿠폰 <span class="b6"></span> --%>
<!-- 		</a></li> -->
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/privacy_confirm.jsp">개인정보수정 <span class="b6"></span>
		</a></li>
	</ul>
</body>
</html>
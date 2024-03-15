<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="import" href="/index.jsp">
<meta charset="UTF-8">
<title>찜한 상품</title>
<style>
  * {padding:0;}

	.section input[id*="slide"] {display:none;}

	.section .slidewrap {max-width:1200px;margin:0 auto;overflow:hidden;}
	.section .slidelist {white-space:nowrap;font-size:0;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.section .slidelist > li > a {display:block;position:relative;}
	.section .slidelist > li > a img {width:100%;}

	.section .slidelist label {position:absolute;z-index:1;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .left {left:30px;background:url('./img/left.png') center center / 100% no-repeat;}
	.section .slidelist .right {right:30px;background:url('./img/right.png') center center / 100% no-repeat;}

	.section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%); animation:slide01 10s infinite;}
	.section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%); animation:slide02 10s infinite;}
	.section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%); animation:slide03 10s infinite;}
	
	@keyframes slide01 {
		0% {left:0%}
		31% {left:0%}
		33% {left:-100%}
		64% {left:-100%}
		66% {left:-200%}
		98% {left:-200%}
		100% {left:0%}
	}
	
	@keyframes slide02 {
		0% {left:0%}
		31% {left:0%}
		33% {left:-100%}
		64% {left:-100%}
		66% {left:100%}
		98% {left:100%}
		100% {left:0%}
	}
	
	@keyframes slide03 {
		0% {left:0%}
		31% {left:0%}
		33% {left:-100%}
		64% {left:-100%}
		66% {left:100%}
		98% {left:100%}
		100% {left:0%}
	}
	
</style>
</head>
<body>
	
	<!-- 상단부 -->
	<jsp:include page="/index.jsp" flush="false" />

	<div class="z">
	
		<!-- 중상단부 -->
		
		<div class="a" style="padding-top: 0px;padding-bottom: 0px;">
			<div class = "section">
				<input type="radio" name="slide" id="slide01" checked>
				<input type="radio" name="slide" id="slide02" >
				<input type="radio" name="slide" id="slide03" >
				<input type="radio" name="slide" id="slide04" >
				
					<div class = "slidewrap">
						<ul class="slidelist" style=" padding-left: 0px;">
							<li>
								<a href="/prod/TotalPageView.lo?categoryNum=0">
									<label for="slide03" class="left"></label>
									<img src="/img/365일 최저가 도전.png">
									<label for="slide02" class="right"></label>
								</a>
							</li>
							<li>
								<a href="/prod/CategoryPageView.lo?categoryNum=3">
									<label for="slide01" class="left"></label>
									<img src="/img/중식꿔바로우.png">
									<label for="slide03" class="right"></label>
								</a>
							</li>
							<li>
								<a href="/prod/CategoryPageView.lo?categoryNum=1">
									<label for="slide02" class="left"></label>
									<img src="/img/제철의맛토마토.png" >
									<label for="slide01" class="right"></label>
								</a>
							</li>
						</ul>
					</div>
			</div>
		</div>
		
		
		<!-- 중하단부 -->
		<div class="b">
			<div class="b1">
				<jsp:include page="/mypage/mypageIndex.jsp" flush="false" />
			</div>
			
			<!-- 마이페이지 메뉴별 div 설정 -->
			<div class="css-171zbec eug5r8l0">
				<div class="css-j0lifa ed9qr673"  style="padding-bottom: 0px;">
					<div class="css-fhxb3m ed9qr672">
						<h2 class="css-1268zpe ed9qr671">찜한 상품</h2>
					</div>
				</div>
				
					<c:set var="zzimList" value="${requestScope.zzimList}"/>

				<div class="css-1jdq78j e1cucsfi1"  style="border-bottom: 2px solid;">
					<div style="width: 250px; text-align: center; font-weight: bold;">상품이미지</div>
					<div style="width: 300px; text-align: center; font-weight: bold;">상품명</div>
					<div style="width: 250px; text-align: center; font-weight: bold;">상품가격</div>
				</div>
				<ul style="padding-left: 0px;  margin-top: 0px;">
					<c:forEach items="${zzimList }" var="zzim" varStatus="status">
						<li>
							<div class="css-1jdq78j e1cucsfi1">
								<div style="width: 250px; text-align: center;">
								<img
								src="${zzim.productimg }"
								alt="상품이미지" class="css-17mnrrx" style="width: -1px; height:100px; padding-left: 0px;">
								</div>
								<div style="width: 300px; text-align: center;  display: flex; justify-content : center;align-items : center;  font-weight: bold;">${zzim.productname }</div>
								<div style="width: 250px; text-align: center;  display: flex; justify-content : center;align-items : center;  font-weight: bold;">${zzim.price } 원</div>
							</div>
						</li>

					</c:forEach>
				</ul>

			</div>
			
		</div>


		

	</div>
</body>
</html>
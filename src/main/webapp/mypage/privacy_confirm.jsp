<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/css/tag.css" rel="stylesheet" type="text/css" />
<link href="/css/headView.css" rel="stylesheet" type="text/css" />
<link href="/css/loginView.css" rel="stylesheet" type="text/css" />
<link href="/css/mypageView.css" rel="stylesheet" type="text/css" />
<link href="/css/searchView.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<title>개인정보 수정</title>
<style type="text/css">
*, :after, :before {
    box-sizing: border-box;
    margin: 0;
}
</style>

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
				<div class="css-j0lifa ed9qr673">
					<div class="css-fhxb3m ed9qr672">
						<h2 class="css-1268zpe ed9qr671">개인 정보 수정</h2>
					</div>
				</div>
				<div class="css-1492bdb e1f12ame0">
					<h4 class="css-z4258j e1nwufn91">비밀번호 재확인</h4>
					<p class="css-1fup356 e1nwufn90">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시
						한번 확인해주세요.</p>
					<form action="/mypage/PrivacyModify.lo">
						<div class="css-14gj3aw enqf8aq1">
							<div class="css-1pjgd36 e744wfw6">
								<div class="css-1y8737n e744wfw5">
									<label for="userId" class="css-1obgjqh e744wfw4">아이디</label>
								</div>
								<div class="css-82a6rk e744wfw3">
									<div class="css-1waqr6j e1uzxhvi6">
										<div class="css-176lya2 e1uzxhvi3">
											<input data-testid="input-box" id="userId" name="userId"
												type="text" readonly="" class="css-u52dqk e1uzxhvi2"
												value="${sessionScope.user.userid }">
										</div>
									</div>
								</div>
								<div class="css-1w0ksfz e744wfw2"></div>
							</div>
							<div class="css-1pjgd36 e744wfw6">
								<div class="css-1y8737n e744wfw5">
									<label for="password" class="css-1obgjqh e744wfw4">비밀번호<span
										class="css-qq9ke6 e744wfw0">*</span></label>
								</div>
								<div class="css-82a6rk e744wfw3">
									<div class="css-1waqr6j e1uzxhvi6">
										<div class="css-176lya2 e1uzxhvi3">
											<input data-testid="input-box" id="password" name="password"
												placeholder="현재 비밀번호를 입력해주세요" type="password"
												autocomplete="off" class="css-u52dqk e1uzxhvi2" value="">
										</div>
									</div>
								</div>
								<div class="css-1w0ksfz e744wfw2"></div>
							</div>
						</div>
						<div class="css-144iql5 enqf8aq0">
							<button class="css-18m884r e4nu7ef3" type="submit" width="240"
								height="56" radius="3">
								<span class="css-ymwvow e4nu7ef1">확인</span>
							</button>
						</div>
					</form>
				</div>
			</div>

		</div>


		

	</div>
</body>
</html>
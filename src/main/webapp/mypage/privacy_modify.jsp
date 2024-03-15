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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
				<div class="css-ya8of1 e1w140tr0">
					<form action="#">
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
								<label for="originalPassword" class="css-1obgjqh e744wfw4">현재
									비밀번호</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="originalPassword"
											name="originalPassword" placeholder="비밀번호를 입력해 주세요"
											type="password" autocomplete="off"
											class="css-u52dqk e1uzxhvi2" value=""
											onblur="handleBlur1('${sessionScope.user.userpw }')">
									</div>
									<div class="css-shoa2s e1g8vpbl0" style="display: none;" id="idCheck">
										<p class="css-1ozil7i e1revjhv0">현재 비밀번호를 확인해주세요</p>
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="newPassword" class="css-1obgjqh e744wfw4">새
									비밀번호</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="newPassword"
											name="newPassword" placeholder="새 비밀번호를 입력해 주세요"
											type="password" autocomplete="off"
											class="css-u52dqk e1uzxhvi2" value=""
											onblur="handleBlur2()">
									</div>
								</div>
								<div class="css-shoa2s e744wfw1" style="display: none;" id="newPwdCheck">
									<p class="css-1ozil7i e1revjhv0">10자 이상 입력</p>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="newPasswordConfirm" class="css-1obgjqh e744wfw4">새
									비밀번호 확인</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="newPasswordConfirm"
											name="newPasswordConfirm" placeholder="새 비밀번호를 다시 입력해 주세요"
											type="password" autocomplete="off"
											class="css-u52dqk e1uzxhvi2" value=""
											onblur="handleBlur3()">
									</div>
									<div class="css-shoa2s e744wfw1" style="display: none;" id="pwdConfirmCheck">
										<p class="css-1ozil7i e1revjhv0">동일한 비밀번호를 입력해주세요.</p>
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="name" class="css-1obgjqh e744wfw4">이름</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="name" name="name"
											placeholder="이름을 입력해 주세요" type="text"
											class="css-u52dqk e1uzxhvi2"
											value="${sessionScope.user.username }">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="email" class="css-1obgjqh e744wfw4">이메일</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="email" name="email"
											placeholder="이메일을 입력해 주세요" type="text"
											class="css-u52dqk e1uzxhvi2"
											value="${sessionScope.user.useremail }"
											onKeyUp="curUserEmailChk('${sessionScope.user.useremail }')">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2">
								<button class="css-ufulao e4nu7ef3" type="button" id="btnDupCheckEmail" disabled>
									<span class="css-ymwvow e4nu7ef1">중복확인</span>
								</button>
							</div>
						</div>
<!-- 						<div class="css-1pjgd36 e744wfw6"> -->
<!-- 							<div class="css-1y8737n e744wfw5"> -->
<!-- 								<label for="mobileNumber" class="css-1obgjqh e744wfw4">휴대폰</label> -->
<!-- 							</div> -->
<!-- 							<div class="css-82a6rk e744wfw3"> -->
<!-- 								<div class="css-1waqr6j e1uzxhvi6"> -->
<!-- 									<div class="css-176lya2 e1uzxhvi3"> -->
<!-- 										<input data-testid="input-box" id="mobileNumber" -->
<!-- 											name="mobileNumber" placeholder="숫자만 입력해 주세요" type="text" -->
<!-- 											readonly="" class="css-u52dqk e1uzxhvi2" -->
<%-- 											value="${sessionScope.user.userphone }"> --%>
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="css-1w0ksfz e744wfw2"> -->
<!-- 								<button class="css-ufulao e4nu7ef3" type="button"> -->
<!-- 									<span class="css-ymwvow e4nu7ef1">다른번호 인증</span> -->
<!-- 								</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<div class="css-14332pf e1m8ervv0">
							<button class="css-ufulao e4nu7ef3" type="button" onclick="userDelete('${sessionScope.user.userid }')">
								<span class="css-ymwvow e4nu7ef1">탈퇴하기</span>
							</button>
							<button class="css-1qirdbn e4nu7ef3" type="submit"
							 onclick="userModify('${sessionScope.user.useremail }', '${sessionScope.user.userid }')" >
								<span class="css-ymwvow e4nu7ef1">회원정보수정</span>
							</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
<script>
 function handleBlur1(userpw) {
	 if($("#originalPassword").val() == userpw){
		$("#idCheck").css("display","none");
	 } else {
		$("#idCheck").css("display","block");
	 }
 }
 function handleBlur2() {
	 if($("#newPassword").val().length < 10 && $("#newPassword").val().length >= 1){
		$("#newPwdCheck").css("display","block");
	 } else {
		$("#newPwdCheck").css("display","none");
	 }
 }
 function handleBlur3() {
	 if($("#newPassword").val() == $("#newPasswordConfirm").val()){
		$("#pwdConfirmCheck").css("display","none");
	 } else {
		$("#pwdConfirmCheck").css("display","block");
	 }
 }
 function handleBlur3() {
	 if($("#newPassword").val() == $("#newPasswordConfirm").val()){
		$("#pwdConfirmCheck").css("display","none");
	 } else {
		$("#pwdConfirmCheck").css("display","block");
	 }
 }
 function curUserEmailChk(useremail) {
	 if($("#email").val() == useremail){
			$("#btnDupCheckEmail").attr("disabled",true);
		 } else {
			$("#btnDupCheckEmail").attr("disabled",false);
		 }
 }
 /*
  * Ajax 통신 & jQuery 라이브러리 사용 (비동기식)
  */ 
 $("#btnDupCheckEmail").click(function(){
	let xhr = new XMLHttpRequest();
	xhr.open("POST", "/mypage/DupEmailCheck.lo", true);
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send("useremail="+$("#email").val());
	xhr.onreadystatechange = function() {
		if( xhr.readyState == XMLHttpRequest.DONE
				&& xhr.status == 200 ) {
			if(xhr.responseText.trim() == "true") {
				alert("사용 불가능한 메일입니다.");
			} else {
				alert("사용 가능한 메일입니다.");
				$("#btnDupCheckEmail").attr("disabled",true);
			}
		}
	};
 });
 function userDelete(userid) {
	 if($("#idCheck").css("display") == 'none') {
		 var answer = confirm("정말 탈퇴를 하시겠습니까?");
		 if(answer == true){
			 location.href="/mypage/userDelete.lo?userid="+userid;
		 } 
	 } else {
		 alert("현재 비밀번호를 정확히 입력해주세요.");
	 }
 }
 function userModify(useremail, userid) {
	 
	 // newPasswordConfirm, name, email
	 if($("#idCheck").css("display") == 'none' && $("#newPwdCheck").css("display") == 'none'
			 && $("#pwdConfirmCheck").css("display") == 'none' && $("#btnDupCheckEmail").attr("disabled") == 'disabled') {
		 // 비밀번호 변경
		 // 이메일 변경
		 // 이름변경
		 if($("#newPasswordConfirm").val() == "") {
			 location.href="/mypage/UserInfoModify.lo?username="+
				$("#name").val() + "&useremail=" + $("#email").val() + "&userid=" + userid;
// 			 alert( $("#name").val() + useremail + " " +$("#newPasswordConfirm").val() + " " + userid + " " );
			 alert("개인정보가 수정되었습니다.");
		 } else {
			 location.href="/mypage/UserInfoModify.lo?username="+
				$("#name").val()+"&useremail="+useremail+"&userpw="+$("#newPasswordConfirm").val()+"&userid="+userid;
// 			 alert($("#name").val() + useremail + " " +$("#newPasswordConfirm").val() + " " + userid + " ");
// 			 alert("개인정보가 수정되었습니다.");
			 alert("비밀번호 변경");
		 }
	 } else {
		 alert("변경할 개인정보를 다시한번 확인해주세요.");
	 }

 }
</script>
</html>
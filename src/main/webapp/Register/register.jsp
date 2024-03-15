<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 - 컬리</title>
<link rel = "stylesheet" href="/css/registerCSS.css">
<script src="/Register/jquery-3.2.1.min.js"></script>
<script src="/Register/jquery.validate.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src = "/Register/Registerpop.js" charset = "utf-8"></script>
<script>
		$(function(){
			$("#register").validate({
				//규칙
				rules:{
					userid:{
						required : true, //필수입력여부
						minlength : 6, //최소 입력 글자수
						maxlength  : 16 // 최대 입력 글자수
					},
					userpw:{
						required : true, //필수입력여부
						minlength : 10, //최소 입력 글자수
						maxlength  : 16 // 최대 입력 글자수
					},
					userpwRe:{
						required : true, //필수입력여부
						equalTo: "#userpw"
					},
					username:{
						required : true //필수입력여부
					},
					useremail:{
						required : true, //필수입력여부
						email: true
					},
					userphone:{
						required : true, //필수입력여부
						number: true
					},
				},

				//메시지
				messages:{
					userid:{
						required : "6자 이상 16자 이하의 영문 혹은 영문과 숫자를 조합",
						minlength : "6자 이상 16자 이하의 영문 혹은 영문과 숫자를 조합",
						maxlength : "6자 이상 16자 이하의 영문 혹은 영문과 숫자를 조합"
					},
					userpw: {
						required : "영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합",
						minlength : "최소 10자 이상 입력"
					},
					userpwRe: {
						required : "비밀번호를 한번 더 입력해 주세요.",
						equalTo : "동일한 비밀번호를 입력해 주세요"
						
					},
					username:{
						required : "이름을 입력해주세요.",
					},
					useremail:{
						required : "이메일을 입력해 주세요.",
						email: "이메일 형식으로 입력해 주세요."
					},
					
					userphone:{
						required : "휴대폰 번호를 입력해 주세요.",
						number:" "
					}
				},

				//메시지 태그
				errorElement : 'span', 	//태그
				errorClass: 'error',	//클레스 이름
				validClass:'vaild' 
			});
		});
		
		
	</script>
</head>

<body>
		<!-- 상단부 -->
		<jsp:include page="/index.jsp" flush="false" />
		
		<!-- 회원가입 페이지 -->
		<form action = "/Register/Memberjoin.mo" name = "register" id = "register" method = "POST" style="margin-left: auto;margin-right: auto;width: 675px;">
			<header>
				<h1 id = "registertitle" style = "text-align:center;">회원가입</h1>
				<p id = "important">*필수입력사항</p>
				<br>
				
				<hr id = "registerhr">
			</header>
			
			<br>
		
			<div class = "input"  style="margin-left: 0px; padding-left: 40px;">
				<p>
					<label for = "userid">아이디: </label>
					<input type = "text"  id = "inputbox" name = "userid" placeholder = " 아이디를 입력하세요.">
					<input type = "button" id = "buttonbox" name = "idCheck" value = "중복 확인" 
						onclick = "checkId(register.userid.value)"/>
				</p>
				
				<br>
				
				<p>
					<label for = "userpw">비밀번호: </label>
					<input type = "password" id = "userpw" name = "userpw" placeholder = " 비밀번호를 입력하세요." style = "width:320px; height:45px;
					margin-left: 60px;">
				</p>
				
				<br>
				
				<p>
					<label for = "userpwRe">비밀번호 확인: </label>
					<input type = "password" id = "passwordRebox" name = "userpwRe" placeholder = " 비밀번호를 한번 더 입력하세요.">
				</p>
				
				<br>
				
				<p>
					<label for = "username">이름: </label> 
					<input type = "text" id = "namebox" name = "username" placeholder = " 이름을 입력하세요.">
				</p>
				
				<br>
				
				<p>
					이메일: <input type = "text" id = "inputbox" name = "useremail" placeholder = " 예:marketkurly@kurly.com">
					<input type = "button" id = "buttonbox" name = "emailCheck" value = "중복 확인"
						onclick = "checkEmail(register.useremail.value)">
				</p>
				
				<br>
				
				<p>
					<label for = "userphone">휴대폰:  </label>
					<input type = "text" name = "userphone" id = "userphone" placeholder = " 숫자만 입력해주세요."
						style = "width:320px; height:45px; margin-left: 75px;">
				</p>
				
				<br>
				
				<p>
					주소: <input type = "button" id = "addressbox" name = "roadAddress" value = "주소 검색"
							onclick="execDaumPostcode()">
					
					<br><br>
	
					<label> <input type="text"  id="sample6_address" name="addr" placeholder="주소" 
					style = "width:333px; height:46px; padding: 0px 11px 1px 15px;
					border:1px solid rgb(221, 221, 221);font-size:16px;font-weight:400;margin-left:125px">
					
					<br> 
					<br>
					<input type="text" id="sample6_detailAddress" name="addrdetail" placeholder="상세주소" 
					style = "width:333px; height:46px; padding: 0px 11px 1px 15px;
					border:1px solid rgb(221, 221, 221);font-size:16px;font-weight:400;margin-left:125px">
					</label>
					<input type = "hidden" name = "basicaddr" id = "basicaddr">
	
				</p>
				
				<br>
				
				<p>
					생년월일: <input type = "text" id = "birthbox" name = "userbirth" placeholder= "         YYYY / MM / DD">
				</p>
				
				<br>
				
				
			</div>
		
		<br> 
		
			
			<input type = "submit" id = "submit" value = "가입하기" style="margin-left:280px">
		
	
	</form>

</body>
</html>
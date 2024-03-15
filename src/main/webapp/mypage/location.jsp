<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<meta charset="UTF-8">
<title>배송지 관리</title>
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
			<c:set var="locList" value="${requestScope.locList}"/>
			
			<div class="css-171zbec eug5r8l0">
				<div class="css-171zbec e1nlszg00">
					<div class="css-jdmlr9 e1af7ryb7">
						<div class="css-tq074a e1af7ryb6">
							<div class="css-fhxb3m e1af7ryb4">
								<span class="css-1268zpe e1af7ryb5">배송지 관리</span><span
									class="css-a3vgo2 e1af7ryb3">배송지에 따라 상품정보 및 배송유형이 달라질 수
									있습니다.</span>
							</div>
							<div>
								<div class="css-1es6ihh e1af7ryb2">
									<div class="css-1xhquvz e1a9f8h00">
										<button class="css-1bqw8am e4nu7ef3" type="button" height="60" onclick="sample6_execDaumPostcode()">
											<span class="css-ymwvow e4nu7ef1"><img
												src="https://res.kurly.com/pc/ico/2006/ico_add_16x16.svg"
												alt="" class="css-1m3kac1 e4nu7ef0">새 배송지 추가</span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="css-1jdq78j e1cucsfi1">
						<div class="css-wru9pk e1cucsfi0">선택</div>
						<div class="css-3fr0n1 e1cucsfi0">주소</div>
						<div class="css-gtglzf e1cucsfi0">받으실 분</div>
						<div class="css-1aqlhfo e1cucsfi0">연락처</div>
						<div class="css-1aqlhfo e1cucsfi0">배송유형</div>
						<div class="css-wru9pk e1cucsfi0">수정</div>
					</div>
					<ul class="css-1fttcpj erme1rh2" style="padding:0;margin:0;">
						<c:forEach items="${locList }" var="loc" varStatus="status">
						
						
						<li class="css-d35zkp erme1rh1">
							<div>
								<div class="eeocvzp5 css-1bs5q0a e19svclq0">
									
												<c:choose>
												<c:when test="${status.count == 1 }">
												<label class="css-1xdhyk6 e1dcessg3"
													for="kurly-address-19909965"><input
													id="kurly-address-19909965" type="checkbox"
													class="css-agvwxo e1dcessg2" value="19909965" checked="">
													<div class="css-79hxr7 e1dcessg1">
														<svg width="24" height="24" viewBox="0 0 24 24"
															fill="none" xmlns="http://www.w3.org/2000/svg">
															<path
																d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
																fill="#5f0080"></path>
															<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path></svg>
													</div> <span></span></label>
												</c:when>
												<c:otherwise>
												<label class="css-1xdhyk6 e1dcessg3"
													for="kurly-address-19909965"><input
													id="kurly-address-19909965" type="checkbox"
													class="css-agvwxo e1dcessg2" value="19909965" checked="">
													<div class="css-79hxr7 e1dcessg1" onclick="location.href='/mypage/LocBasicUpdate.lo?userid=${sessionScope.user.userid }&locationid=${loc.locationid }'">
														<svg width="24" height="24" viewBox="0 0 24 24"
															fill="none" xmlns="http://www.w3.org/2000/svg">
															<path
																d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
																stroke="#ddd" fill="#fff"></path>
															<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path></svg>
													</div> <span></span></label>
												</c:otherwise>
												</c:choose>

								</div>
								<div class="eeocvzp4 css-8xfsdg e19svclq0">
									<div>${loc.locaddr }</div>
								</div>
								<div class="eeocvzp3 css-1o9d8vk e19svclq0">${loc.locname }</div>
								<div class="eeocvzp2 css-xkreku e19svclq0">${loc.locphone }</div>
								<div class="eeocvzp6 css-xkreku e19svclq0">
									<div>
										<span type="direct" class="css-z4mca9 e1jlkvf51">샛별배송</span>
									</div>
								</div>
								<div class="eeocvzp1 css-1bs5q0a e19svclq0">
									<button onclick="edit('${loc.locationid }', '${loc.locname }', '${loc.locphone }', '${loc.locaddr }')">
										<svg width="24" height="24" viewBox="0 0 24 24"
											xmlns="http://www.w3.org/2000/svg">
											<g fill="none" fill-rule="evenodd">
											<path fill="none" d="M0 0h24v24H0z"></path>
											<path
												d="m13.83 5.777 4.393 4.393-10.58 10.58H3.25v-4.394l10.58-10.58zm3.204-2.527c.418 0 .837.16 1.157.48l2.08 2.08a1.63 1.63 0 0 1 0 2.314l-2.157 2.156-4.394-4.394 2.157-2.156c.32-.32.738-.48 1.157-.48z"
												stroke="#ccc" stroke-width="1.5"></path></g></svg>
									</button>
								</div>
							</div>
						</li>
						
						</c:forEach>
					</ul>
				</div>
			</div>

		</div>


		

	</div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

//                 location.href="/mypage/newlocation.jsp";
               window.open('/mypage/newlocation.jsp?addr='+addr, 'a', 'width=500, height=600, left=100, top=50'); 
                
//                 // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
//                 if(data.userSelectedType === 'R'){
//                     // 법정동명이 있을 경우 추가한다. (법정리는 제외)
//                     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
//                     if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
//                         extraAddr += data.bname;
//                     }
//                     // 건물명이 있고, 공동주택일 경우 추가한다.
//                     if(data.buildingName !== '' && data.apartment === 'Y'){
//                         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
//                     }
//                     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
//                     if(extraAddr !== ''){
//                         extraAddr = ' (' + extraAddr + ')';
//                     }
//                     // 조합된 참고항목을 해당 필드에 넣는다.
//                     document.getElementById("sample6_extraAddress").value = extraAddr;
                
//                 } else {
//                     document.getElementById("sample6_extraAddress").value = '';
//                 }

//                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                 document.getElementById('sample6_postcode').value = data.zonecode;
//                 document.getElementById("sample6_address").value = addr;
//                 // 커서를 상세주소 필드로 이동한다.
//                 document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    
    function edit(locationid, locname, locphone, locaddr) {
    	window.open("/mypage/locinfomodify.jsp?locationid="+locationid+"&locname="+locname+"&locphone="+locphone+"&locaddr="+locaddr, 'a', 'width=500, height=600, left=100, top=50'); 
    }
</script>
</html>
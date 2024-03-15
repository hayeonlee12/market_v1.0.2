<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<link href="${pageContext.request.contextPath }/css/tag.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/headView.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/loginView.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/mypageView.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/searchView.css" rel="stylesheet"/>
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> -->
	<meta charset="UTF-8">
	<title>PLEASE MARKET</title>
<style type="text/css">
*, :after, :before {
	box-sizing: border-box;
	/*margin: 0;*/
}
#slide, #panel {
	padding: 17px;
	text-align: center;
	background-color: #ffffff00;
	border: solid 1px #ffffff00;;
	width: 100px;
}
/* #penel의 스타일의 기본이 display:none으로 되어 있다.  */
#panel {
	padding: 5px;
	display: none;
	background-color: #ffffff;
	border: 1px solid #000;
	position: absolute;
	height: 150px;
}
</style>

</head>
<body>
	<!-- 	상단부 -->
	<div>
		<div class="css-t79vuj">
			<div class="css-fexq9b">
				<c:choose>
					<c:when test="${sessionScope.user == null}">
						<a class="css-1g7d8zf"
							href="http://localhost:8081/Register/register.jsp">회원가입</a>
						<div class="css-1qgm48u"></div>
						<a class="css-1pu21l0"
							href="${pageContext.request.contextPath }/login/loginView.jsp">로그인</a>
					</c:when>
					<c:otherwise>
						<div class="css-1qolcqm"
							onmouseover="document.getElementById('myPageList').style.display='block';"
							onmouseout="document.getElementById('myPageList').style.display='none';">
							<a class="css-1pu21l0"
								href="${pageContext.request.contextPath }/mypage/PurchaseHistory.lo"> <span
								class="css-1jd0kby"> <span class="css-ufqs0g">일반</span>
									${sessionScope.user.username }
							</span> <span class="css-1lrerrk"></span>
							</a>
							<div class="menu css-1ia5eje" id="myPageList">
								<div class="css-12olpw6" onclick="location.href='/mypage/PurchaseHistory.lo'">주문 내역</div>
								<div class="css-12olpw6" onclick="location.href='/mypage/ZzimListView.lo'">찜한 상품</div>
								<div class="css-12olpw6" onclick="location.href='/mypage/LocationList.lo'">배송지 관리</div>
								<div class="css-12olpw6" onclick="location.href='/mypage/ReviewView.lo'">상품 후기</div>
								<div class="css-12olpw6" onclick="location.href='/mypage/privacy_confirm.jsp'">개인 정보 수정</div>
								<div class="css-12olpw6"
									onclick="location.href='${pageContext.request.contextPath }/market/MarketLogout.lo'">로그아웃</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				<div class="css-1qgm48u"></div>
				<div class="css-1qolcqm"
					onmouseover="document.getElementById('custumCenter').style.display='block';"
					onmouseout="document.getElementById('custumCenter').style.display='none';">
					<a class="css-1pu21l0">고객센터<span class="css-1lrerrk"></span></a>
					<div class="menu css-1ia5eje" id="custumCenter">
						<div onclick="location.href='http://localhost:8081/csc.jsp'" class="css-12olpw6">공지사항</div>
						<div onclick="location.href='http://localhost:8081/question.jsp'" class="css-12olpw6">자주하는 질문</div>
						<div onclick="location.href='${pageContext.request.contextPath}/inquiry/inquiryList.bo'" class="css-12olpw6">1:1 문의</div>
						<div onclick="location.href='http://localhost:8081/orderwrite.jsp'" class="css-12olpw6">대량주문 문의</div>
					</div>
				</div>
			</div>
			<div class="css-r7wmjj">
				<div class="css-boc80u"  style="cursor: pointer;" onclick="location.href='/prod/TotalPageView.lo?categoryNum=0'">
					<img
						src="/img/로고.png"
						alt="마켓컬리 로고" class="css-17mnrrx" style="width: -1px; height:75px; padding-left: 100px;">

				</div>
				<div class="css-pqw0uk">
					<div class="css-w444a2">
						<input id="gnb_search" placeholder="검색어를 입력해주세요" required="" class="css-11ntk83" value="">
						<button id="submit" aria-label="submit" class="css-ywxmlw"></button>
					</div>
				</div>
				<div class="css-pqw0uk">
					<div class="css-c4pbxv">
						<c:choose>
							<c:when test="${sessionScope.user != null }">
								<div class=" css-1n4p7us"
									onmouseover="document.getElementById('mui-3').style.display='block';"
									onmouseout="document.getElementById('mui-3').style.display='none';"></div>
							</c:when>
							<c:otherwise>
								<div class=" css-1n4p7us"
									onmouseover="document.getElementById('mui-1').style.display='block';"
									onmouseout="document.getElementById('mui-1').style.display='none';"></div>
							</c:otherwise>
						</c:choose>
						<div role="tooltip" id="mui-3"
							class="e1n3mt0d0 MuiTooltip-popper MuiTooltip-popperInteractive css-41wedd"
							style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(18px, 36px); display: none;"
							data-popper-placement="bottom">
							<div
								class="MuiTooltip-tooltip MuiTooltip-tooltipPlacementBottom css-1spb1s5"
								style="opacity: 1; transition: opacity 1ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;">
								<div class="css-ej44pb e19jgrln4"
									onmouseover="document.getElementById('mui-3').style.display='block';"
									onmouseout="document.getElementById('mui-3').style.display='none';">
									<p class="css-zvjjit e19jgrln3">${sessionScope.locbasic }</p>
									<div class="css-7617kc e19jgrln1">
										<button class="css-oyz24n" type="button" height="36" radius="3" onclick="locationChange()">
											<span class="css-ymwvow">배송지 변경</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div role="tooltip" id="mui-1"
							class="e1n3mt0d0 MuiTooltip-popper MuiTooltip-popperInteractive css-41wedd"
							style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(18px, 36px); display: none;"
							data-popper-placement="bottom">
							<div
								class="MuiTooltip-tooltip MuiTooltip-tooltipPlacementBottom css-1spb1s5"
								style="opacity: 1; transition: opacity 1ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;">
								<div class="css-ej44pb e19jgrln4"
									onmouseover="document.getElementById('mui-1').style.display='block';"
									onmouseout="document.getElementById('mui-1').style.display='none';">
									<c:choose>
										<c:when test="${sessionScope.locbasic == null}">
									
										<p class="css-zvjjit e19jgrln3">
											<strong class="css-1b2mq3h e19jgrln2">배송지를 등록</strong>하고<br>
											<span class="css-1bmnxg7 e19jgrln0">구매 가능한 상품을 확인하세요!</span>
										</p>
										<div class="css-7617kc e19jgrln1">
											<button class="css-113ydsk e4nu7ef3" type="button" width="80"
												height="36" radius="3"
												onclick="location.href='${pageContext.request.contextPath }/login/loginView.jsp'">
												<span class="css-ymwvow e4nu7ef1">로그인</span>
											</button>
											<button class="css-1i20qd6 e4nu7ef3" type="button" height="36" onclick="sample6_execDaumPostcode()"
												radius="3">
												<span class="css-ymwvow e4nu7ef1"><img
													src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAoCAQAAAAiAqDbAAAAAXNSR0IArs4c6QAAAYdJREFUeNrt1j9Lw0AYBvDGqlBF7VAQRUFBoeDmIoL4b9Cp4CJO1g9QrHQVCnbo7mdwLNJvUJy6KSIFxaloQQpSaxqT3D1FHodWrTYZctUtT7Yc97sX7u5NAgE/fvw4h5o+J2IiYceNtecRaj2DuaC9DxP8fkShPtMTWQ7jthP8go+U662NQgdBlMxFDlKj1oiIZIu1s0osNZRAUKR+TjcncAOCYksBNXdAUB53j1RCMEDUL/q911kFcX/S5zRqrIKg2PaIvo2DoLHptqR8AGXeI2otgeDLmNu4nQFhetwsEQNBDriiByDoETXWQfBpyHXRlAKqz4OgseCKFkBce76eaILyzLmWRgQERcLzObWzIGgtO+59EUSzEvKMVofRBKHXprvINAiKQ6W731hpt49kLvgJmpO4ar+NKbaU1sEC8S7P7Yw4xV1nrzI2FNnXWVz+anymHZfRVo9VZqnJqEzLIuryUeatvdaFqE31yLp02zYro//AitQffxLLYWuXg/6vgR8/HfkA7NFWMofTE4wAAAAASUVORK5CYII="
													alt="" class="css-q6apuw">주소 검색</span>
											</button>
										</div>
									
										</c:when>
										<c:otherwise>
									
										<p class="css-zvjjit e19jgrln3">${sessionScope.locbasic }</p>
										<div class="css-rgkv4s">
											<span type="direct" class="css-z4mca9 e1jlkvf51">샛별배송</span>
										</div>
										<div class="css-7617kc e19jgrln1">
											<button class="css-oyz24n e4nu7ef3" type="button" height="36" onclick="sample6_execDaumPostcode()"
												radius="3">
												<span class="css-ymwvow e4nu7ef1">배송지 변경</span>
											</button>
										</div>
									
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						<button class="css-231fw3" aria-label="찜하기" type="button"  onclick = "location.href ='${pageContext.request.contextPath }/mypage/ZzimListView.lo'"></button>
						<div class="css-ff2aah">
							<button class="css-g25h97"
									onclick="location.href='/basket/CartList.lo'"></button>
<!-- 								onclick="location.href='http://localhost:8080/basket/basketView_default.jsp'"></button> -->
								<c:if test="${sessionScope.user != null}">
									<span class="css-8lxdnc e14oy6dx0">${sessionScope.basketCnt }</span>
								</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="header" class="css-19ndp9a">
			<div class="css-mlddcv">
				<div class="css-0" id="menu" >
					<div class="css-axtlq9">
						<span class="css-t75x7c" >
										<!-- 마우스가 올라가는 부분 -->
				            <div id="slide"></div>
				            <!-- 처음엔 안보였다 나중에 보이는 부분 -->
				            <div id="panel">
				            <div style="margin-top: 5px; margin-bottom: 7px">
				            	전체 상품<br>
				            </div>
				            <div  style="margin-bottom: 7px; border:1px solid #000">
				            	과일/채소<br>
				            </div>
				            <div  style="margin-bottom: 7px">
				            	유제품<br>
				            </div>
				            <div  style="margin-bottom: 7px">
				            	냉동 식품<br>
				            </div >
				            
				            </div>
				            
				        </span>
					</div>
				</div>
				<div style="padding-left: 120px;">
					<ul class="css-1887xqd">
						<li class="css-59mmhh"><span class="css-1xyu7j9" onclick="location.href='/prod/TotalPageView.lo?categoryNum=0'">전체 상품</span></li>
						<li class="css-59mmhh"><span class="css-1xyu7j9" onclick="location.href='/prod/CategoryPageView.lo?categoryNum=1'">과일/채소</span></li>
						<li class="css-59mmhh"><span class="css-1xyu7j9" onclick="location.href='/prod/CategoryPageView.lo?categoryNum=2'">유제품</span></li>
						<li class="css-59mmhh"><span class="css-1xyu7j9" onclick="location.href='/prod/CategoryPageView.lo?categoryNum=3'">냉동식품</span></li>
					</ul>
				</div>
				
			</div>
		</div>
		<div hidden="" class="css-1px7x3s"></div>
	</div>

</body>


<!-- </script> -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
<!-- <script> -->
//document.addEventListener("DOMContentLoaded", function(){
//	// timer변수를 만들어 약간의 딜레이를 줄건데 딜레이가 없으면 마우스가 지나갈 때마다
//	// 메뉴바가 나오고 사라지고 해서 눈에 거슬림 
//	var timer;
 
//	document.getElementById("slide").onmouseenter(function() { //#slide에 mouseenter이벤트를 만듬
//		timer = setTimeout(function() { //딜레이를 설정하면서 (0.1초) 해당 시간 후에 아래와 같은 동작을 함 
//			document.getElementById("panel").not(':animated') //에니메이션이 Queue에 쌓이는 것을 방지하기 위해서  not(':animated')설정을 해준다.
//			.slideDown(200) //display가 none에서 block으로 바뀌면서 슬라이드 효과가 생기면서 보여지게 됨
//		}, 100);
//	})
//	document.getElementById("menu").onmouseleave(function() { //#menu에 mouseleave이벤트를 만듬
//		clearTimeout(timer); //위에서 딜레이를 설정하고 그 시간 안에 mouseleave 이벤트가 일어나면 해당 timer변수가 사라져서
//		document.getElementById("panel") //mouseenter이벤트 시의 동작이 일어나지 않음
//		.slideUp(200) //display가 none에서 block으로 바뀌면서 슬라이드 효과가 생기면서 보여지게 됨
//	});
//});
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

//             location.href="/mypage/newlocation.jsp";
           window.open('/mypage/newlocation_nologin.jsp?addr='+addr, 'a', 'width=500, height=600, left=100, top=50'); 
            
//             // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
//             if(data.userSelectedType === 'R'){
//                 // 법정동명이 있을 경우 추가한다. (법정리는 제외)
//                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
//                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
//                     extraAddr += data.bname;
//                 }
//                 // 건물명이 있고, 공동주택일 경우 추가한다.
//                 if(data.buildingName !== '' && data.apartment === 'Y'){
//                     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
//                 }
//                 // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
//                 if(extraAddr !== ''){
//                     extraAddr = ' (' + extraAddr + ')';
//                 }
//                 // 조합된 참고항목을 해당 필드에 넣는다.
//                 document.getElementById("sample6_extraAddress").value = extraAddr;
            
//             } else {
//                 document.getElementById("sample6_extraAddress").value = '';
//             }

//             // 우편번호와 주소 정보를 해당 필드에 넣는다.
//             document.getElementById('sample6_postcode').value = data.zonecode;
//             document.getElementById("sample6_address").value = addr;
//             // 커서를 상세주소 필드로 이동한다.
//             document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
function locationChange() {
	 window.open('/mypage/LocationChange.lo', 'a', 'width=500, height=600, left=100, top=50'); 
}
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자주하는 질문</title>
<link rel="stylesheet" href="/css/customercss2.css">
<link href="/css/tag.css" rel="stylesheet" type="text/css" />
<link href="/css/headView.css" rel="stylesheet" type="text/css" />
<link href="/css/loginView.css" rel="stylesheet" type="text/css" />
<link href="/css/mypageView.css" rel="stylesheet" type="text/css" />
<link href="/css/searchView.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>

<body>
	
	<!-- 	상단부 -->
	<jsp:include page="/index.jsp" flush="false" />
	
    <div>
        <span></span>
    </div>
    
    <div style="margin: 0px auto; display: flex; padding: 50px 0px 80px; width: 1050px;">
        <div style="width: 200px;">
            <table id="customer">
                <thead>
                <tr>
                    <th>고객 센터</th>
                </tr>
                </thead>
                <tbody>
                <tr>
	                    <td style="cursor:pointer;" onclick="location.href='http://localhost:8081/csc.jsp'">
	                        공지사항<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>        
	                    </td>
	                </tr>
	                <tr>
	                    <td style="cursor:pointer; background: rgba(101, 99, 102, 0.184); color:rgb(95, 0, 128); font-weight: 600;" onclick="location.href='http://localhost:8081/question.jsp'">
	                        자주하는 질문<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>
	                    </td>
	                </tr>
	                <tr>
	                    <td style="cursor:pointer;" onclick="location.href='${pageContext.request.contextPath}/inquiry/inquiryList.bo'">
	                        1:1 문의<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>
	                    </td>
	                </tr>
	                <tr>
	                    <td style="cursor:pointer;" onclick="location.href='http://localhost:8081/orderwrite.jsp'">
	                        대량주문 문의<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>
	                    </td>
	                </tr>
                </tbody>
            </table>
        </div>
        <div style="width: 820px;">
                <table id="">
                    <tr>
                        <h2> 자주하는 질문<h5>고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</h5> </h2>
                    </tr>
                </table>
                <table id="noticeboardhead">
                    <tr id="">
                        <th style="width: 10%; font-size: 14px; text-align: center;">번호</th>
                        <th style="width: 22%; font-size: 14px; text-align: center;">카테고리</th>
                        <th style="width: 600px; font-size: 14px; text-align: center;" >제목</th>
                    </tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">1</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>취소/교환/환불</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>교환(반품) 진행 시, 배송비가 부과
								되나요?</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color: #000000"><strong>■
											교환(반품) 진행 시, 배송비 안내</strong></span>
								</p>
								<p>
									- 단순변심에 의한 교환/반품 시 배송비 6,000원 (주문건 배송비를 낸 경우 3,000원)을 고객님께서
									부담하셔야합니다.<br> - 파트너사 판매상품의 경우, 상품의 상세페이지 내 안내 정책을 참고
									부탁드립니다.
								</p>
								<p>
									<strong>▶신선/냉장/냉동 식품</strong><br> 재판매가 불가한 상품의 특성상, 단순변심/주문
									착오 시 교환 및 반품이 어려운 점 양해 부탁드립니다.<br> 상품에 따라 조금씩 맛이 다를 수 있으며,
									개인의 기호에 따라 같은 상품도 다르게 느끼실 수 있습니다.
								</p>
								<p>
									<strong>▶유통기한 30일 이상 식품 (신선/냉장/냉동 제외)&amp;기타 상품</strong><br>
									상품을 받은 날부터 7일 이내에 고객행복센터로 문의 부탁드립니다.g
								</p>
								<p>
									<br data-tomark-pass=""> <br> <strong>[참고]</strong>&nbsp;※
									다음에 해당하는 교환/환불 신청은 어려울 수 있으니 양해 부탁드립니다.<br> ▣ 고객님의 책임 있는
									사유로 상품이 멸실되거나 훼손 된 경우<br> ( 단, 상품의 내용을 확인하기 위해 포장 등을 훼손한
									경우는 제외 )<br> ▣ 고객님의 사용 또는 일부 소비로 상품의 가치가 감소한 경우<br> ▣
									시간이 지나 다시 판매하기 곤란할 정도로 상품의 가치가 감소한 경우<br> ▣ 복제가 가능한 상품의 포장이
									훼손 된 경우<br> ▣ 고객님의 주문에 따라 개별적으로 생산되는 상품의 제작이 이미 진행 된 경우
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">2</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>선물하기</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>선물하기 주문을 취소하고 싶어요.</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■ 선물하기 주문 취소 방법</strong></span>
								</p>
									선물 수락대기 : 주문자 직접 취소 가능 ( 경로 : 마이컬리-선물내역 )
								<p>
									[참고]
								</p>
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>▣ 배송지 입력 후 주문 취소가 필요하시다면 컬리 고객행복센터 카카오톡으로 문의해주세요.</strong></span>
								</p>
								<p>
									다만, 상품 포장이 시작되었다면 취소가 어려울 수 있는 점 양해 바랍니다
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">3</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>포장</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>포장재를 회수하기도 하나요?</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■ 포장재 회수 안내</strong></span>
								</p>
 
								컬리에서는 아래와 같이 수도권 샛별배송지역에 한해서 일부 포장재의 회수 서비스를 진행하고 있습니다. <br>
								<br>
								 - 대상지역 : 수도권 샛별배송 지역 + 컬리 퍼플 박스 주문 건  <br>
								
								 - 회수대상 : 컬리 퍼플 박스포장 방법으로 주문 시, 발생한 냉장/냉동 포장한 비닐  <br>
								 <br>
								  * 1회 최대 2장  <br>
								
								  * 기타 종이소재 포장재( 완충재, 종이봉투, 종이테이프등) 및 아이스팩은 미회수  <br>
								<br>
								 - 회수방법 :   <br>
								
								 ① 상품 수령 후 비닐에서 송장을 제거해주세요  <br>
								
								 ② 다음 주문 시 컬리 퍼플 박스 안에 비닐을 넣어두세요  <br>
								
								 ③ 새로운 주문이 배송 됨과 동시에 배송 기사님께서 퍼플박스 안의 비닐을 회수합니다  <br>
								
								<br>
								 [참고]  <br>
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>▣ 간혹, 배송매니저님들께서 깜빡하고 회수를 잊으시거나 부득이 회수가 어려운 경우로 누락될 수 있습니다. 고객님의 너그러운 양해 부탁드리며 고객센터 문의 남겨주시면 배송 매니저님께 잊지 않으시도록 꼭 전달 드리겠습니다.</strong></span>
								</p>
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>▣ 상세 내용은 컬리홈>공지사항 게시판에서 확인 할 수 있습니다.</strong></span>
								</p>								
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>▣ 종이박스 회수는 2022년 7월 1일부로 종료되었습니다.</strong></span>
								</p>						
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">4</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>회원</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>아이디, 비밀번호를 잊어버렸습니다.</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■ 아이디, 비밀번호 찾기 안내</strong></span>
								</p>
	
								- 하기 경로를 통해 아이디 및 비밀번호 찾기가 가능하며, 임시 비밀번호의 경우 회원가입 시 등록한 이메일 주소로 발송 됩니다. <br>
								
								
								(PC) 컬리홈 상단 [로그인] > 화면 아래 [아이디 찾기] [비밀번호 찾기]<br>
								
								(모바일) 아래 탭에서 [마이컬리] >  로그인 화면 아래 [아이디 찾기] [비밀번호 찾기]<br>
								
								<br>
								[참고]<br>
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>▣ 가입시 기재한 메일 주소가 기억나지 않으시거나 오류가 발생하는 경우 고객센터로 문의 바랍니다.</strong></span>
								</p>
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>▣ 상담시에는 고객님의 개인정보보호를 위해 기존에 사용하시던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시비밀번호를 설정해드립니다.</strong></span>
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">5</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>이벤트/쿠폰/적립금</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>적립금은 언제 지급 되나요?</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;;"><strong>■ 적립금 지급 시점</strong></span>
								</p>
								<p>
									- 주문 결제 : 배송완료 7일 이 후, 일괄 적립금이 지급 됩니다.<br>
									- 후기 작성 : 후기 작성 이 후, 차주 첫번째 영업일에 지급 됩니다.<br>
									- 이벤트 참여 : 이벤트 참여 후, 별도 고지 된 일정에 지급 됩니다.
								</p>
								<p>▣ 참고<br>
									- 1원 단위부터 주문서에서 사용 가능 합니다.<br>
									- 일부 상품의 경우 적립금 미지급품목이므로 구매 시 참고 바랍니다.<br>
									- 지급일로 부터 6개월 내 사용 가능합니다.
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">6</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>시스템 오류</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>컬리앱이 켜지지 않아요</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■ 시스템 이상 확인 시</strong></span>
								</p>
								<p>
									① 컬리APP의 최신 업데이트 버전 여부 확인해주세요<br>
									② 업데이트 버전이 가장 최신일 경우에는 아래와 같이 점검해주세요.<br>
									<br>
									(PC) 모든 인터넷창을 종료 > 컬리 홈페이지 재접속 > 재로그인 진행<br>
									(모바일) 웹 - 사용하는 브라우저에서 탭/창 닫기 > 컬리 홈페이지 재접속 > 재로그인 진행<br>
									(모바일) 앱 - 앱 종료 > 재 로그인 진행<br>
									※ 해당 이슈들은 최근 개선되었으나 재발생 시 자체 점검하시어 고객센터로 문의 부탁드립니다.<br>
									<br>
								<p>
									<span data-tomark-pass="" style="color:  #000000;;"><strong>▣ 재로그인/재접속 이후에도 동일한 문제가 발생하시는 경우 고객센터로 하기 정보와 함께 문의 바랍니다.</strong></span>
								</p>
									- 오류 발생 플랫폼 정보: 앱 (안드로이드), 앱 (iOS), 모바일 웹, PC<br>
									- 모바일인 경우<br>
									ㄴ 기기 정보 ( PC인 경우: 윈도우 정보 )<br>
									ㄴ버전정보 ( PC인 경우: 브라우저 정보 - 예, 인터넷 익스플로러, 크롬, 파이어폭스, 사파리 등) <br>
									- 구체적 오류 내용. 어느 화면에서 어떤 부분을 눌렀을 때 어떤 현상이 발생되는지 상세한 설명과 화면 캡쳐해주시면 많은 도움이 됩니다.<br>
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">7</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>서비스 이용</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>이벤트 문자는 오는데, 배송완료 문자만 오지 않습니다.</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■ 배송완료 문자 미수신 사유</strong></span>
								</p>
								<p>
									① 보유 휴대폰 기기의 용량 초과 ( 이벤트 문자와 다르게 배송완료 문자는 사진이 포함 됨 )<br>
									② 통신사 자체 스팸처리<br>
									<br>
									[참고]<br>
									<br>
									(PC) 모든 인터넷창을 종료 > 컬리 홈페이지 재접속 > 재로그인 진행<br>
									(모바일) 웹 - 사용하는 브라우저에서 탭/창 닫기 > 컬리 홈페이지 재접속 > 재로그인 진행<br>
									(모바일) 앱 - 앱 종료 > 재 로그인 진행<br>
									※ 해당 이슈들은 최근 개선되었으나 재발생 시 자체 점검하시어 고객센터로 문의 부탁드립니다.<br>
									<br>
								<p>
									<span data-tomark-pass="" style="color:  #000000;;"><strong>▣ 스팸처리 되는 이유</strong></span>
								</p>
									고객님께서 직접 해당번호(1644-1107)를 스팸등록 하신 경우<br>
									스팸 차단 앱이 핸드폰에 저장되어 있어 자동으로 스팸처리가 되는 경우<br>
									통신사에서 자체적으로 스팸으로 지정해 버리는 경우<br>
									<br>
									▣ 위 항목에 해당하지 않음에도 문자가 발송되지 않은 경우, 컬리 고객행복센터 카카오톡으로 문의 남겨주시면 신속히 도움드리겠습니다.
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">8</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>취소/교환/환불</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>상품불량인 경우, 교환(반품) 기준이 궁금합니다.</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■  상품에 문제가 있는 경우</strong></span>
								</p>
								<p>
									- 받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터 3개월 이내, 그 사실을 알게 된 날부터 30일 이내에 교환 및 환불을 요청하실 수 있습니다. <br>
									<br>
									- 상품의 정확한 상태를 확인할 수 있도록 사진을 함께 보내주시면 더 빠른 상담이 가능합니다.<br>
								</p>
								<p>
									<span data-tomark-pass="" style="color:  #000000;;"><strong>※ 상품에 문제가 있는 것으로 확인되면 배송비는 컬리가 부담합니다.</strong></span>
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">9</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>배송</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>(샛별배송) 집 앞이 아니라 공동현관/경비실 앞에 배송되었어요.</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■ 공동현관/경비실 앞으로 배송 되는 경우</strong></span>
								</p>
								<p>
									샛별배송은 택배배송과 달리 이른 새벽에 배송이되므로, 분실/도난 등의 가능성을 최소화 하기 위해 고객님 자택 문 앞까지 배송하고 있습니다. <br>
									<br>
									그러나 아래와 같이 공동현관 출입/자택 앞으로 배송 불가 한 경우 최대한 상품을 안전히 배송해드리고자 공동현관 앞/경비실 앞으로 대응배송을 진행하고 있습니다.<br>
								</p>
								<p>사례.<br>
									(1) 카드키로만 출입이 가능한 공동현관<br>
									(2) 경비실을 통해 출입해야하는 공동현관 (경비부재시 출입불가)<br>
									(3) 새벽시간에 건물의 공동현관을 폐쇄할 경우<br>
									(4) 엘리베이터 이용이 어려운 건물의 상세 주소지가 6층 이상일 경우
								</p>
								<p>[참고]<br>
									▣ 배송에 대한 조치/배송 현황 확인이 필요하신 경우에는 컬리 고객행복센터 카카오톡으로 접수 부탁드립니다.
								</p>
							</ul>
						</td>
					</tr>
                    <tr>
						<td style=" text-align:center; font-size: 14px;  color: rgb(76, 76, 76);">10</td>
					<td style="text-align:center; font-size: 14px; color: rgb(76, 76, 76);"><a>시스템오류</a>
					</td>
						<td class="menu" style="font-size: 14px; color: rgb(76, 76, 76); padding-top: 20px;padding-left: 20px;padding-bottom: 20px;"><a>IOS 환경에서 컬리APP의 주문내역이 확인되지 않습니다.</a>
							<ul class="hide">
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>■ IOS 컬리 APP 주문 내역 확인 불가 오류</strong></span>
								</p>
								<p>
									- 우회 조회 : PC/모바일 웹 주문 내역 확인 가능 <br>
									<br>
									현재 IOS 환경에서 컬리APP의 주문내역이 간헐적으로 보였다가 안보였다가 하는 현상이 재현되고 있습니다.<br>
									위 방법으로 우회하여 조회하는 방법으로 양해 부탁드립니다.<br>
									<br>
									※ 해당 이슈들은 최근 개선되었으나 재발생 시 자체 점검하시어 고객센터로 문의 부탁드립니다.<br>

								</p>
								<p>
									<span data-tomark-pass="" style="color:  #000000;"><strong>▣ 점검 사항 <br> - 시스템 이상 확인 시, 아래와 같이 점검 부탁드립니다.</strong></span>
								</p>
								<p>사례.<br>
									① 컬리APP의 최신 업데이트 버전 여부 확인해주세요<br>
									② 업데이트 버전이 가장 최신일 경우에는 아래와 같이 점검해주세요.<br>
									<br>
									(PC) 모든 인터넷창을 종료 > 컬리 홈페이지 재접속 > 재로그인 진행<br>
									(모바일) 웹 - 사용하는 브라우저에서 탭/창 닫기 > 컬리 홈페이지 재접속 > 재로그인 진행<br>
									(모바일) 앱 - 앱 종료 > 재 로그인 진행<br>
								</p>
							</ul>
						</td>
					</tr>
                </table>
                
                <style>
					.menu a{cursor:pointer;}
					.menu .hide{display:none;}
				</style> 
				<script>
					// html dom 이 다 로딩된 후 실행된다.
				    $(document).ready(function(){
				        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
				        $(".menu>a").click(function(){
				            var submenu = $(this).next("ul");
				            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
				            if( submenu.is(":visible") ){
				                submenu.slideUp();
				            }else{
				                submenu.slideDown();
				            }
				        });
				    });
				</script>   
                   
        </div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>

</html>
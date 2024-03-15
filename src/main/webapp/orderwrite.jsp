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
<title>대량 주문 하기</title>
<link rel="stylesheet" href="/css/customercss5.css">
<link href="/css/tag.css" rel="stylesheet" type="text/css" />
<link href="/css/headView.css" rel="stylesheet" type="text/css" />
<link href="/css/loginView.css" rel="stylesheet" type="text/css" />
<link href="/css/mypageView.css" rel="stylesheet" type="text/css" />
<link href="/css/searchView.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
		$( function() {
		    $( "#datepicker" ).datepicker();
		} );
  </script>
  <style>
    
    
        #popupDiv {  /* 팝업창 css */
        top : 0px;
        position: absolute;
        background: blue;
        width: 500px;
        height: 500px;
        display: none; 
        }
        
        #popup_mask { /* 팝업 배경 css */
            position: fixed;
            width: 100%;
            height: 1000px;
            top: 0px;
            left: 0px;
            display: none; 
            background-color:#000;
            opacity: 0.8;
        }
        
  </style>
</head>
    
    <body>
    	<!-- 	상단부 -->
	<jsp:include page="/index.jsp" flush="false" />
	
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
	                    <td style="cursor:pointer;" onclick="location.href='http://localhost:8081/question.jsp'">
	                        자주하는 질문<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>
	                    </td>
	                </tr>
	                <tr>
	                    <td style="cursor:pointer; " onclick="location.href='${pageContext.request.contextPath}/inquiry/inquiryList.bo'">
	                        1:1 문의<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>
	                    </td>
	                </tr>
	                <tr>
	                    <td style="cursor:pointer; background: rgba(101, 99, 102, 0.184); color:rgb(95, 0, 128); font-weight: 600;" onclick="location.href='http://localhost:8081/orderwrite.jsp'">
	                        대량주문 문의<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>
	                    </td>
	                </tr>
                    </tbody>
                </table>
            </div>
            <div style="width: 820px;">
                    <table id="">
                        <tr >
                            <h2> 대량주문 문의
                                <h5 style="margin-top: 2px; margin-bottom: 2px;">· 최소 구매금액 100만원 이상 시 해당 서비스를 이용하실 수 있습니다. ( 기준 충족 시 다중 배송 가능 )</h5>
                                <h5 style="margin-top: 1px; margin-bottom: 2px;">· 여러 주소지에 배송 주문 시, 주소지 1곳 당 결제금액이 4만원 미만일 경우 주소지당 개별 배송비가 발생 됩니다.</h5>
                                <h5 style="margin-top: 2px;">· 문의를 남겨주시면 빠른 시간 내에 상담 전화 드립니다. ( ☎ 1644 - 1108, 메일 : <a href="mailto:aldus107@naver.com" class="css-0 e13b5ugj0">aldus107@naver.com )</a></h5>
                            </h2>
                        </tr>
                    </table>
                    <div id="noticeboardhead">
                        <!-- <form method="post" name="boardForm" action="${pageContext.request.contextPath}/board/BoardWriteOk.bo"> -->
                            <table style="border-bottom:1px solid #0000001e;">
                                <br>
                                <tr height="30px" >
                                    <th align="center" width="100px" style="width: 150px;">
                                        신청하시는분 이름
                                    </th>
                                    <td>
                                        <input id="inquiry-contents" name="boardtitle" size="30" maxlength="100" value="" placeholder="유형을 입력하세요">
                                    </td>
                                </tr>
                                <tr height="30px">
                                    <th align="center" width="100px" style="width: 150px;">
                                        신청하시는 분 연락처
                                    </th>
                                    <td>
                                        <input id="inquiry-contents" name="username" size="30" maxlength="20" value="" placeholder="이름을 입력하세요">
                                    </td>
                                </tr>
                                <tr height="30px">
                                    <th align="center" width="100px" style="width: 150px;">
                                        신청하시는 분 이메일
                                    </th>
                                    <td>
                                        <input id="inquiry-contents" name="username" size="30" maxlength="20" value="" placeholder="이름을 입력하세요">
                                    </td>
                                </tr>
                                <tr height="30px">
                                    <th align="center" width="100px" style="width: 150px;">
                                        수령 희망일
                                    </th>
                                    <td>
                                        <p><input type="text" id="datepicker" style="padding: 5px;" placeholder="날짜를 선택하세요."></p>
                                    </td>
                                </tr>
                                <tr height="100px">
                                    <th align="center" width="100px">
                                        <div style="margin-bottom: 250px;">
                                            내용
                                        </div>
                                    </th>
                                    <td>
                                        <textarea id="inquiry-contents2" name="boardcontents" style="width:500px;height:250px; resize: none;" placeholder="문의 사항을 남겨주세요."></textarea>
                                    </td>
                                </tr>
                                <tr height="30px">
                                    <th align="center" width="100px" style="width: 150px;">
                                        <div style="margin-bottom: 50px;">
                                            주의 사항
                                        </div>
                                    </th>
                                    <td>
                                        아래의 경우 배송이 불가합니다.
                                        <br>
                                        <br>
                                        <div style="font-size: 12px;">*제주도 및 도서산간, 상품에 따른 배송 이외지역의 경우</div>
                                        <div style="font-size: 12px;">*수령 배송지가 명확하지 않을 경우</div>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr >
                                    <h2 style="padding-bottom: 18px; border-bottom: 2px solid;"> 개인정보 수집 · 이용 동의 
                                    </h2>
                                </tr>
                                <tr>
                                    <input type="checkbox"> 개인정보 수집·이용 동의 <a style="color: rgb(220 22 22);">(필수)	</a> <button onclick="clicktest();" id="bogi"> 확인하기<ion-icon name="caret-forward-outline"></ion-icon></button>
                                </tr>
                            </table>
                            <table style="border : 0px;">
                                <tr align="right" valign="middle">
                                    <a id="inquirybtn" style="margin-left: 335px; margin-top: 10px; text-decoration-line: none;  padding-top: 10px;height: 30px;  box-sizing:unset;" href="javascript:document.boardForm.submit()">등록</a>                
                                </tr>
                            </table>
                        </form>
                    </div>
            </div>
        </div>
        <div id="mask"></div>
        <div style=" border-radius: 10px; background-color: #ffffff; width: 450px;height: 450px; position: absolute; top:200px; left: 500px; display: none; z-index:10001; top: 50%;left: 50%;z-index: 10001;margin-left: -225px;margin-top: -225px;"
            id="test">
            <h2 style="text-align: center; padding-top: 10px;">개인정보 수집·이용 동의(필수)</h2>
            <h4 style="text-align: center; height: 270px;">
				
			<table style="border: 1px solid #ccc; margin-left: 20px;margin-right: 20px;margin-top: 20px;">
				<caption></caption>
				<colgroup>
					<col width="30%">
					<col width="35%">
					<col width="35%">
				</colgroup>
				<thead style="text-align: center; padding: 10px 5px; background-color: #f4f4f4;">
					<tr>
						<th style="text-align: center;">수집 목적</th>
						<th style="text-align: center;">수집 항목</th>
						<th style="text-align: center;">보유 기간</th>
					</tr>
				</thead>
				<tbody style="font-size: 12px;">
					<tr>
						<td>대량 주문문의</td>
						<td>신청자 이름, 신청자 연락처, 신청자 이메일, 배송지주소</td>
						<td>문의 완료 후 30일 내</td>
					</tr>
				</tbody>
			</table>
			<p style="font-size: smaller; padding: 20px 20px 24px; color: #999; line-height: 20px; margin-left: 20px;margin-right: 20px; ">
			* 서비스 제공을 위해서 필요한 최소한의 개인정보입니다.
				동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.</p>
		</h4>
            <div>
<!--             	<input type="button" style="position: relative;" onclick="btnexit();" value="확인" /> -->
            	<a id="inquirybtn" style="cursor:pointer; margin-left: 150px; margin-top: 10px; text-decoration-line: none;  padding-top: 10px;height: 30px; " onclick="btnexit();">확인</a>
           	</div>
        </div>
        

        <script>
            function wrapWindowByMask() {
                //화면의 높이와 너비를 구한다.
                var maskHeight = $(document).height();
                var maskWidth = $(window).width();

                //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
                $('#mask').css({ 'width': maskWidth, 'height': maskHeight });
                //마스크의 투명도 처리
                $('#mask').fadeTo("slow", 0.8);
            }
            $(document).ready(function () {
                //wrapWindowByMask();
                //불투명 배경 띄우기
                $('.openMask').click(function (e) {
                    e.preventDefault();
                    wrapWindowByMask();
                });
            });

            // 팝업 , 불투명 배경 띄우기
            function clicktest() {
                $('#test').show();
                wrapWindowByMask();
            }
            function btnexit() {
                $('#test').hide();
                $('#mask').hide();
            }
        </script>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>




        

    </body>
    
    </html>
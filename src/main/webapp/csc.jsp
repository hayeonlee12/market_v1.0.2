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
<title>공지 사항</title>
<link rel="stylesheet" href="/css/customercss.css">
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
	                    <td style="cursor:pointer; background: rgba(101, 99, 102, 0.184); color:rgb(95, 0, 128); font-weight: 600;" onclick="location.href='http://localhost:8081/csc.jsp'">
	                        공지사항<span class="icon1"><ion-icon name="chevron-forward-outline"></ion-icon></span>        
	                    </td>
	                </tr>
	                <tr>
	                    <td style="cursor:pointer;" onclick="location.href='http://localhost:8081/question.jsp'">
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
	                        <h2> 공지사항<h5>컬리의 새로운 소식들과 유요한 정보들을 한곳에서 확인하세요.</h5> </h2>
	                    </tr>
	                </table>
	                <table id="noticeboard">
	                    <tr>
	                        <th style="width: 10%; font-size: 15px; text-align: center;"> 번호 </th>
	                        <th style="width: 580px; font-size: 15px; text-align: center;" > 제목 </th>
	                        <th style="width: 10%; font-size: 15px; text-align: center;"> 작성자 </th>
	                        <th style="width: 15%; font-size: 15px; text-align: center;"> 작성일 </th>
	                    </tr>
	                    <tr onclick="location.href='http://localhost:8081/cscpage/csc1.jsp'" style=" cursor:pointer; padding: 20px 0px 20px 20px; color: rgb(76, 76, 76);">
	                    	<th style="width: 10%; font-size: 13px; text-align: center;">공지</th>
	                    	<th style="width: 580px; font-size: 13px; text-align: center;" >[안내] 샛별배송 서비스 확장 안내 (2023.04.01~)</th>
	                    	<th style="width: 10%; font-size: 13px; text-align: center;">컬리</th>
	                    	<th style="width: 15%; font-size: 13px; text-align: center;">2023.03.31</th>
	                    </tr>
	                    <tr onclick="location.href='http://localhost:8081/cscpage/csc2.jsp'" style=" cursor:pointer; padding: 20px 0px 20px 20px; color: rgb(76, 76, 76);">
	                    	<th style="width: 10%; font-size: 13px; text-align: center;">공지</th>
	                    	<th style="width: 580px; font-size: 13px; text-align: center;" >[안내] 컬리 소비자 분쟁해결 기준안내</th>
	                    	<th style="width: 10%; font-size: 13px; text-align: center;">컬리</th>
	                    	<th style="width: 15%; font-size: 12px; text-align: center;">2023.02.23</th>
	                    </tr>
	                    <tr onclick="location.href='http://localhost:8081/cscpage/csc3.jsp'" style=" cursor:pointer; padding: 20px 0px 20px 20px; color: rgb(76, 76, 76);">
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">4</td>
	                    	<td style="width: 580px; font-size: 13px; text-align: center;" >[이벤트] 3월의 봄날의 펫페어 기부 이벤트 공지의건</td>
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">컬리</td>
	                    	<td style="width: 15%; font-size: 13px; text-align: center;">2023.02.13</td>
	                    </tr>
	                    <tr onclick="location.href='http://localhost:8081/cscpage/csc4.jsp'" style=" cursor:pointer; padding: 20px 0px 20px 20px; color: rgb(76, 76, 76);">
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">3</td>
	                    	<td style="width: 580px; font-size: 13px; text-align: center;" >[안내] 컬리 APP 업데이트 안내 (2023.02.02)</td>
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">컬리</td>
	                    	<td style="width: 15%; font-size: 13px; text-align: center;">2023.02.02</td>
	                    </tr>
	                    <tr onclick="location.href='http://localhost:8081/cscpage/csc5.jsp'" style=" cursor:pointer; padding: 20px 0px 20px 20px; color: rgb(76, 76, 76);">
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">2</td>
	                    	<td style="width: 580px; font-size: 13px; text-align: center;" >[이벤트] 전주 베테랑 라이브 경품 당첨자 안내</td>
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">컬리</td>
	                    	<td style="width: 15%; font-size: 13px; text-align: center;">2023.01.28</td>
	                    </tr>
	                    <tr onclick="location.href='http://localhost:8081/cscpage/csc6.jsp'" style=" cursor:pointer; padding: 20px 0px 20px 20px; color: rgb(76, 76, 76);">
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">1</td>
	                    	<td style="width: 580px; font-size: 13px; text-align: center;" >[안내] 컬리로그 커뮤니티 가이드라인 일부 변경 안내(2023.01.25)</td>
	                    	<td style="width: 10%; font-size: 13px; text-align: center;">컬리</td>
	                    	<td style="width: 15%; font-size: 13px; text-align: center;">2023.01.25</td>
	                    </tr>
	                </table>
	        </div>
	    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>

</html>
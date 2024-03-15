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
<title>문의 하기</title>
<link rel="stylesheet" href="/css/customercss3.css">
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
            	<c:set var="inquiry" value="${requestScope.inquiry }"/>
                    <table id="">
                        <tr>
                            <h2> 1:1 문의 </h2>
                        </tr>
                    </table>
                    <table id="noticeboard">
                        <tr align="center" valign="middle">
                            <th style="width: 100px; font-size: 12px; text-align: center; border-right: double #00000047"  > 제 목  </th>
                            <td style="width: 720px;"> ${inquiry.inqtitle }</td> 
                        </tr>
                        <tr align="center" valign="middle">
                      		<th style="  font-size: 12px; text-align: center; border-right: double #00000047">작성일</th>
                      		<td style="width: 80%;" >${inquiry.inqdate } </td>
                        </tr>
                        <tr align="center" valign="middle">
                        	<th style=" font-size: 12px; text-align: center; border-right: double #00000047">내용</th>
                            <td height="23px">${inquiry.inqcontent }</td>
                        </tr>
                        <tr align="center" valign="middle">
                        	<th style=" font-size: 12px; text-align: center; border-right: double #00000047">답변 상태</th>
                            <td height="23px">미답변</td>
                        </tr>
                    </table>
                    <table style="border : 0px;">
                        <tr align="right" valign="middle">
                            <a id="inquirybtn" style="cursor:pointer; margin-left: 650px; margin-top: 10px; text-decoration-line: none; padding-top: 10px; height: 30px; box-sizing:unset;" onclick="location.href='${pageContext.request.contextPath}/inquiry/inquiryList.bo'">되돌아가기</a>                
                        </tr>
                    </table>
            </div>
        </div>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </body>
    
    </html>
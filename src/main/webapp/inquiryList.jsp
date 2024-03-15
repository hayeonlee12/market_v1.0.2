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
	                    <td style="cursor:pointer; background: rgba(101, 99, 102, 0.184); color:rgb(95, 0, 128); font-weight: 600;" onclick="location.href='${pageContext.request.contextPath}/inquiry/inquiryList.bo'">
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
            
            <c:set var="inquiryList" value="${requestScope.inquiryList }"/>
			<c:set var="totalCnt" value="${requestScope.totalCnt }"/>	
				
			<c:set var="totalPage" value="${requestScope.totalPage }"/>
			<c:set var="nowPage" value="${requestScope.nowPage }"/>
			<c:set var="startPage" value="${requestScope.startPage }"/>
			<c:set var="endPage" value="${requestScope.endPage }"/>
                    <table id="">
                        <tr>
                            <h2> 1:1 문의 </h2>
                        </tr>
                    </table>
                    <table id="noticeboard">
                        <tr id="">
                            <th style="width: 600px; font-size: 14px; text-align: center; padding-top: 20px; padding-bottom: 20px;"  > 제목 </th>
                            <th style="width: 15%; font-size: 14px; text-align: center;"> 작성 시간 </th>
                            <th style="width: 15%; font-size: 14px; text-align: center;"> 답변상태 </th>
                        </tr>
                        <c:choose>
                            <c:when test="${inquiryList != null and fn:length(inquiryList) > 0 }">
                                <c:forEach var="inquiry" items="${inquiryList }">
                                    <tr align="center" valign="middle"
                                    onmouseover="this.style.background='#bbdefb'" onmouseout="this.style.background=''">
                                        <td height="23px">
                                            <a href="${pageContext.request.contextPath}/inquiry/inquiry.bo?inquiryinqid=${inquiry.inqid }">
                                                ${inquiry.inqtitle }
                                            </a>
                                        </td>
                                        <td height="23px">
                                            ${inquiry.inqdate }
                                           
                                        </td>
                                        <td height="23px">
<%--                                             ${inquiry.inqanswer } --%>
                                           미답변
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <tr style="height:50px;">
                                    <td colspan="5" style="text-align:center;">등록된 게시물이 없습니다.</td>
                                </tr>
                            </c:otherwise>
			            </c:choose>
                    </table>
                    <table>
						<tr align="center" valign="middle">
							<td style="border-bottom: 1px solid #ffffff00; width: 800px;" ><c:if test="${nowPage > 1 }">
									<a href="${pageContext.request.contextPath}/inquiry/inquiryList.bo?page=${nowPage -1 }"><ion-icon name="caret-back-outline"></ion-icon></a>
								</c:if> <c:forEach var="i" begin="${startPage }" end="${endPage }">
									<c:choose>
										<%-- 현재 보고있는 중에는 a tag 제거 --%>
										<c:when test="${i == nowPage }">
										<${i }>
									</c:when>
										<c:otherwise>
											<a href="${pageContext.request.contextPath}/inquiry/inquiryList.bo?page=${i}">${i }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach> <c:if test="${nowPage < totalPage }">
									<a href="${pageContext.request.contextPath}/inquiry/inquiryList.bo?page=${nowPage+1 }"><ion-icon name="caret-forward-outline"></ion-icon></a>
								</c:if></td>
						</tr>
					</table>
                    <table style="border : 0px;">
                        <tr align="right" valign="middle">
                            <a id="inquirybtn" style="margin-left: 650px; margin-top: 10px; text-decoration-line: none; padding-top: 10px;height: 30px;  box-sizing:unset;" onclick="location.href='${pageContext.request.contextPath }/inquiry/inquirywrite.bo'">문의하기</a>
                        </tr>
                    </table>
            </div>
        </div>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </body>
    
    </html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<title>상품 페이지</title>

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

	<!-- 	상단부 -->
	<jsp:include page="/index.jsp" flush="false" />
	
	
	
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
	
	<div>
		<br><br><br><br>
		
		<c:set var="listProduct" value="${requestScope.listProduct}"/>
		
		<c:choose>
			<c:when test="${param.categoryNum == '0' }">
				<h2><center>전체 메뉴</center></h2>	
			</c:when>
			<c:when test="${param.categoryNum == '1' }">
				<h2><center>과일/채소</center></h2>	
			</c:when>
			<c:when test="${param.categoryNum == '2' }">
				<h2><center>유제품</center></h2>	
			</c:when>
			<c:when test="${param.categoryNum == '3' }">
				<h2><center>냉동식품</center></h2>	
			</c:when>
			<c:otherwise>
				<h2><center>전체 메뉴</center></h2>	
			</c:otherwise>
		</c:choose>
		</br></br>
		<div style = "width : 1100px; margin : 0px auto;">
		<center>
            <div>
            	<c:forEach items="${listProduct }" var="product" varStatus="status">
            		<input type="button" value="${product.productid }" style="display:none;"/>
	                <div style="float: left;width: 25%;">
	                    <a href="${pageContext.request.contextPath}/product/prodDetailView.lo?productid=${product.productid }"><img src="${product.productimg }" width="250px" height = "300px">
	                        <div style="width= 250px; margin : 0px auto;">
	                            <h3 style="margin-bottom: 3px; margin-top: 7px;">${product.productname }</h3>
	                            <div style="margin-bottom: 20px;">${product.price } 원</div>
	                        </div>
	                    </a>
	                </div>
            	</c:forEach>
            </div>
        </center>	
		</br></br>
		</div>
	</div>
	
</body>
</html>
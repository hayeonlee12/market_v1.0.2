<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 관리</title>
<link href="/css/basketView.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style type="text/css">
html, button, input, select, textarea {
    font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
}

input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
}
body {
    margin: 0;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: #fff;
    -webkit-tap-highlight-color: transparent;
}
*, :after, :before {
    box-sizing: border-box;
    margin: 0;
}

div {
    display: block;
}

*, :after, :before, legend, td, th {
    padding: 0;
}

body, button, input, select, textarea {
    font-size: 14px;
    color: #333;
}
label {
    cursor: default;
}

input {
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-variant-alternates: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    font-optical-sizing: ;
    font-kerning: ;
    font-feature-settings: ;
    font-variation-settings: ;
    text-rendering: auto;
    color: fieldtext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: field;
    margin: 0em;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
</style>
</head>
<body>
<%-- 	<h1>${sessionScope.user.userid }</h1> --%>
<%-- 	<h1>${sessionScope.locbasic }</h1> --%>
	
	<c:set var="locList" value="${requestScope.locList}"/>
	
	<div id="__next" data-reactroot="">
		<div class="css-1c9gcj2 e17o7yjp8">
			<div class="css-wtivc6 e17o7yjp7">
				<h2 class="css-3ljxig e17o7yjp6">
					배송지<span class="css-1nvqzrc e17o7yjp5">배송지에 따라 상품정보 및 배송유형이
						달라질 수 있습니다.</span>
				</h2>
				<div class="css-r1km81 e17o7yjp4">
					<span>선택</span><span>배송 정보</span>
				</div>
			</div>

			<c:forEach items="${locList }" var="loc" varStatus="status">
			<div class="css-0 e17o7yjp3">
				
				
				<div class="css-c08slb egfaucj7">
					<div class="css-1g6fovq egfaucj0">
						
												<c:choose>
												<c:when test="${status.count == 1 }">
												<label class="css-1xdhyk6 e1dcessg3"
													for="kurly-address-19909965"><input
													id="kurly-address-19909965" type="checkbox"
													class="css-agvwxo e1dcessg2" value="19909965" checked="" >
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
													class="css-agvwxo e1dcessg2" value="19909965" checked="" >
													<div class="css-79hxr7 e1dcessg1" onclick="locChange('${sessionScope.user.userid }', '${loc.locationid }', '${loc.locaddr }')">
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
					<div data-testid="address-area" class="css-82a6rk egfaucj3">
						<p class="css-12stxlh egfaucj4">${loc.locaddr }</p>
						<div class="css-1gcxwpt">
							<span type="direct" class="css-z4mca9 e1jlkvf51">샛별배송</span>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			
			<!-- 
			<div class="css-m0h4tf e17o7yjp0">
				<button class="css-1bqw8am e4nu7ef3" type="button" height="60">
					<span class="css-ymwvow e4nu7ef1"><img
						src="https://res.kurly.com/pc/ico/2006/ico_add_16x16.svg" alt=""
						class="css-1m3kac1 e4nu7ef0">새 배송지 추가</span>
				</button>
			</div>
			 -->
		</div>
	</div>
</body>
<script>
// function locChangeStore(locationid) {
// 	var locname = $("#name").val();
// 	var locphone = $("#mobile").val();
		
// 	window.opener.location.href = "/mypage/LocInfoModify.lo?locationid="+locationid+"&locname="+locname+"&locphone="+locphone;
// 	window.close();
// }

function locChange(userid, locationid, locaddr) {
	var beforeURL = window.opener.location.href;
	window.opener.location.href = '/mypage/LocationChangeSwap.lo?userid='
			+userid+'&locationid='+locationid+'&locaddr='+locaddr+'&beforeURL='+beforeURL;
	window.close();
}
</script>
</html>
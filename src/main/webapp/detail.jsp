<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<style type="text/css">
.sticky{
	position:sticky;
	top:0px;
}
.td1{
	width : 100px;
}

aside {
/* 	padding-left: 250px; */
	padding-right: 50px;
	float: left;
}

section {
/* 	padding-left: 710px; */
/* 	padding-right: 150px; */
/* 	width : 1300px; */
}

*, :after, :before {
	box-sizing: border-box;
	margin: 0;
}
/*  .img_area{height:300px; font-size:0;}   */
/*   .img_area:after{display:inline-block; height:100%; content:""; vertical-align:middle;} */
/*    .img_area img{vertical-align:middle;} */
</style>
</head>
<body onload="init();">
	
	<c:set var="User" value="${sessionScope.User }"/>
    
    
	<script>
		var sell_price;
		var amount;

		function init() {
			sell_price = document.form.sell_price.value;
			amount = document.form.amount.value;
			document.form.sum.value = sell_price;
			change();
		}

		function add() {
			hm = document.form.amount;
			sum = document.form.sum;
			hm.value++;
			sum.value = parseInt(hm.value) * sell_price;
		}

		function del() {
			hm = document.form.amount;
			sum = document.form.sum;

			if (hm.value > 1) {
				hm.value--;
				sum.value = parseInt(hm.value) * sell_price;
			}
		}

		function change() {

			hm = document.form.amount;
			sum = document.form.sum;

			if (hm.value < 0) {
				hm.value = 0;
			}
			sum.value = parseInt(hm.value) * sell_price;
		}
	</script>

	<!-- 	상단부 -->
	<jsp:include page="/index.jsp" flush="false" />
	
	
	
	<br>
	<br>

	<div id='detail' style="width:900px; margin:auto;">
		<aside>
			<div>
				<img src=" " width="400px">
			</div>
		</aside>
		<div id='detailtext'>
		<section>
			<div>샛별배송</div>
				<div>
					<h1>  11111
                    </h1>
                    
				</div>
				<h1>
					
					
					<span style='line-height:200%'>11111
                    </span><span>원</span>
                 
                    
				</h1>
				<div style = "color : purple; font-size : 10px; font-weight: bold;" >
					
					<!-- -->
					적립 혜택
					<!-- -->
					이 제공됩니다.
				</div>
				<div>
				<table style="font-size: 14px; border-collapse: collapse;">
					<tr style="height: 40px; border-bottom:1px solid #00000040; height: 59px;"">
						<td class="td1"  style = "font-weight: bold; color : gray ">배송</td>
						<br>
						<td>
							<p style = "font-weight: bold">샛별배송</p>
							<p style = "font-size : 10px">23시 전 주문 시 내일 아침 7시 전 도착 <br>
							(대구·부산·울산 샛별배송 운영시간 별도 확인)</p>
						</td>
					</tr>
					
				
					<tr style="height: 40px; border-bottom:1px solid #00000040; height: 50px;"">
						<td style = "font-weight: bold; color : gray">판매자</td>
						<td>
							<p>오늘만 놀조</p>
						</td>
					</tr>
					<tr style="height: 40px; border-bottom:1px solid #00000040; height: 50px;"">
						<td style = "font-weight: bold; color : gray">포장타입</td>
						<td>
							<p>상온 (종이포장)</p>
							<p>택배배송은 에코 포장이 스티로폼으로 대체됩니다.</p>
						</td>
					</tr>
					<tr style="height: 40px; border-bottom:1px solid #00000040; height: 50px;"">
						<td style = "font-weight: bold; color : gray">판매단위</td>
						<td>
							<p>1개</p>
						</td>
					</tr>
				</div>
				<tr>
					<td style = "font-weight: bold; color : gray">상품선택</td>
					<td>
					<form name="form" method="get" style="height: 57px;">
					<p style = "font-weight: bold; font-size : 10px; text-align:right; font-size : 0px;"><br></p><br>
							<input type=hidden name="sell_price" value="42000"> <input
								type="button" value=" - " onclick="del();"> <input
								type="text" name="amount" value="1" size="3"
								onchange="change();"> <input type="button"
								value=" + " onclick="add();">
								<br>
					</td>
				</tr>
				</table>			
				<div>
							<div style="float: right" align="right">
											<h2><span>총 상품금액 :</span> <span></span><input type="text"
												name="sum" size="13" readonly style="text-align:right" ></span> <span>원</span></h2>
												<br>
											<div>
												<input type="button" value=" ♡ " style = "padding: 10px; color : purple;">
												<button type="button" aria-label="찜"></button>
												<input type="button" value=" 알림 " disabled="disabled" style = "padding: 10px">
												<button type="button" aria-label="알림설정"></button>
												<input type="button" value=" 장바구니 담기" 
												style = "padding: 10px 100px; background-color : purple; color : white; border : none;">
												<button type="button" aria-label="장바구니"></button>
											</div>
							</div>
				</form>
				</div>
			</div>
		</section>
		</div>
	</div>
		<br><br><br><br><br><br>
		<div class="sticky">
			<table border ="1px" border-color="#D8D8D8" frame="void" 
			style="text-align:center; margin-left: auto; margin-right: auto; height : 70px; width : 900px; background-color : #E6E6E6;">
			
				<colgorup>
				<col  width = "25%"/>
				<col  width = "25%"/>
				<col  width = "25%"/>
				<col  width = "25%"/>
				</colgorup>
				
				<tr>
					<td><a href = "#tag1">상품설명</a></td>
					<td><a href = "#tag2">상세정보</a></td>
					<td>후기</td>
					<td>문의</td>
				</tr>
				</table>
		</div>
		<br><br><br>
			<div style="width: 900px; margin: auto;">
				<img id ="tag1" src="/img/footer1.png" width="900px">
				<img src="/img/footer2.png" width="900px">
				<img src="/img/footer3.png" width="900px">
				<img id ="tag2" src="/img/footer4.png" width="900px">
				<img src="/img/footer5.png" width="900px">
				<img src="/img/footer6.png" width="900px">
				<img src="/img/footer7.png" width="900px">
				<img src="/img/footer8.png" width="900px">
				<img src="/img/footer9.png" width="900px">
				<img src="/img/footer10.png" width="900px">
				<img src="/img/footer12.png" width="900px">
				<img src="/img/footer13.png" width="900px">
			</div>
</body>
	

</html>
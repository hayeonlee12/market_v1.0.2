<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
<link href="/css/basketView.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<meta charset="UTF-8">
<title>장바구니</title>

</head>
<body>
	<!-- 상단부 -->
	<jsp:include page="/index.jsp" flush="false" />

	<!--  중단부 -->


	<c:set var="list" value="${requestScope.basketList }"/>
	<c:set var="sum" value="${requestScope.sum }"/>
	
	<div class="css-1pz4b76 er0tf675">
		<h2 class="css-1n2hipb er0tf674">장바구니</h2>
		<div></div>
		<div class="css-a6t9xs er0tf673">
			<div class="css-8wfj4z er0tf672">
				<div class="css-20o6z0 e149z643">
					<!-- 장바구니 테이블에 데이터 없을 경우 -->
					<div class="css-zbxehx e149z642">
						<label class="css-1vf8o8s e1dcessg3" disabled="" >
						<input disabled="" type="checkbox" class="css-agvwxo e1dcessg2" id="ll" checked style="display: none;">
							<div class="css-79hxr7" onclick="llll()">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path id="lll"
										d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
										fill="#5f0080"></path>
									<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
										stroke-width="1.5" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
							</div> <span>전체선택</span>
						</label>
							
							<span class="css-454d5e e149z641"></span>
						<button class="css-0" onclick="selectDel()">선택삭제</button>
					</div>
				</div>
				<c:choose>
					<c:when test="${fn:length(list) == 0}">
						<div class="css-2lvxh7 ej77nku0">
							<p class="css-l1lu2l eqymnpn0">장바구니에 담긴 상품이 없습니다</p>
						</div>
					</c:when>
					<c:otherwise>
						<div class="css-2lvxh7 ej77nku0">
							<div>
								<hr>
								<ul>
									<c:forEach items="${list }" var="num" varStatus="status">
										<li class="css-1d6kgf6 esoayg811">
											<label class="css-14td1km e1dcessg3"  >
												<input type="checkbox" class="css-agvwxo e1dcessg2" name="basketlist" id="input${status.count }" onclick="checkbox('input${status.count }','path${status.count }')" checked value="${num.cartid }">
												<div class="css-79hxr7 e1dcessg1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path id="path${status.count }"
															d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
															fill="#5f0080"></path>
														<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff"
															stroke-width="1.5" stroke-linecap="round"
															stroke-linejoin="round"></path></svg>
												</div>
												<span></span>
											</label>
												
											<a class="css-1u5t3pw esoayg810"><span style="background-image: url('${num.productimg }')";
											class="css-1ye1wuu esoayg89"></span></a>
											
										<div class="css-14sb0pe esoayg88">
											<a class="css-e0dnmk esoayg87"><p
													class="css-5cezqo esoayg86">${num.productname }</p></a>
											<div class="css-ar9i78 esoayg82"></div>
										</div>
										
										<div class="css-1gueo66 e1cqr3m40">
										
											<button type="button" aria-label="수량내리기" id="ddd"
												class="css-8azp8 e1hx75jb0" onclick="down('ordercount${status.count }', '${num.cartid }', '${num.price }', '${status.count }')"></button>
											<div class="count css-6m57y0 e1cqr3m41" id="ordercount${status.count }">${num.ordercount }</div>
											<button type="button" aria-label="수량올리기"
												class="css-18y6jr4 e1hx75jb0" onclick="up('ordercount${status.count }', '${num.cartid }', '${num.price }', '${status.count }')"></button>
												
										</div>
										
										<div class="css-5w3ssu esoayg84">
											<span aria-label="판매 가격" data-testid="product-price"
												class="css-zq4evb e2qzex51" id="cost${status.count }">${num.ordercount * num.price }</span>
										</div>
										<div style="display:block; width: 20px; text-align: right;">원</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
			
			
			<div class="css-1dta0ch er0tf671">
				<div class="css-snlo96 er0tf670">
					<div class="css-oft680 e15fcx0p3">
						<h3 class="css-1guaarh e15fcx0p2">배송지</h3>
						<div class="css-50yi3o e15fcx0p1">
							<p class="css-xxfxl7 e1tweaw10">
								${sessionScope.locbasic }</p>
							<div class="css-s6py67">
								<span type="direct" class="css-z4mca9 e1jlkvf51">샛별배송</span>
							</div>
							<button class="css-122i3z7 e4nu7ef3" type="button" height="36" onclick="locationChange()"
								radius="3">
								<span class="css-ymwvow e4nu7ef1">배송지 변경</span>
							</button>
						</div>
					</div>
					<div class="css-1t6so8j em21elb0">
						<div class="css-8jmoub ea1mry77">
							<span class="css-vmo0an ea1mry76">상품금액</span>
							<span class="css-iinokh" id="Pcost" style="width: 150px;">${sum }
							</span>
							<div style="display:block; width: 20px; text-align: right;">원</div>
						</div>
						
						<div class="css-t4mc5m ea1mry77">
							<span class="css-vmo0an ea1mry76">배송비</span>
							<span class="css-iinokh" id="Dcost" style="width: 150px;">3000
							</span>
							<div style="display:block; width: 20px; text-align: right;">원</div>
						</div>
						<div class="css-7ygxxm eepcpbj4">
							<span class="css-vmo0an eepcpbj3">결제예정금액</span><span
								class="css-da7gr8 eepcpbj2"><strong
								class="css-xmbce4" id="Tcost" style="width: 150px;">${sum + 3000} </strong></span>
							<div style="display:block; width: 20px; text-align: right;">원</div>
						</div>
					</div>
					<div class="css-8qz8ia e1mybczi1">
						<button class="css-fwelhw e4nu7ef3" type="button" onclick="purchase('${sessionScope.user.userid }')"
							height="56" radius="3">
							<span class="css-ymwvow e4nu7ef1">구매하기</span>
						</button>
						<ul class="css-19kxq7d">
							<li class="css-7s0nna ejr204i0">쿠폰/적립금은 주문서에서 사용 가능합니다</li>
							<li class="css-7s0nna ejr204i0">[주문완료] 상태일 경우에만 주문 취소 가능합니다.</li>
							<li class="css-7s0nna ejr204i0">[마이컬리 &gt; 주문내역 상세페이지] 에서 직접
								취소하실 수 있습니다.</li>
							<li class="css-7s0nna ejr204i0">쿠폰, 적립금 사용 금액을 제외한 실 결제 금액
								기준으로 최종 산정됩니다.</li>
							<li class="css-7s0nna ejr204i0">상품별로 적립금 지급 기준이 다를 수 있습니다.
								(상품 상세 페이지에서 확인 가능합니다)</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

<script>
function checkbox(input, path) {
	if($("#"+input).is(":checked")) {
		$("#"+input).attr("checked", true); // 체크 푼거
		$("#"+path).attr("d","M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z");
		$("#"+path).removeAttr("stroke");
		$("#"+path).attr("fill","#5f0080");
	} else {
		$("#"+input).attr("checked", false); // 치크 하는거
		$("#"+path).attr("d","M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z");
		$("#"+path).attr("stroke","#ddd");
		$("#"+path).attr("fill","#f2f2f2");
	}
}
function llll() {
	
	if($("#ll").is(":checked")) {
		$("#ll").attr("checked", false); //체크 풀기
		$("#lll").attr("d","M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z");
		$("#lll").attr("stroke","#ddd");
		$("#lll").attr("fill","#f2f2f2");
		$("input[name=basketlist]:checked").attr("checked", false);
		for(var i=1; i <= $("input[name=basketlist]").length; i++){
			$("#path"+i).attr("d","M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z");
			$("#path"+i).attr("stroke","#ddd");
			$("#path"+i).attr("fill","#f2f2f2");
		}
	} else {
		$("#ll").attr("checked", true);
		$("#lll").attr("d","M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z");
		$("#lll").removeAttr("stroke");
		$("#lll").attr("fill","#5f0080");	
		$("input[name=basketlist]:not(:checked)").attr("checked", true);
		for(var i=1; i <= $("input[name=basketlist]").length; i++){
			$("#path"+i).attr("d","M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z");
			$("#path"+i).removeAttr("stroke");
			$("#path"+i).attr("fill","#5f0080");	
		}
	}
	
	
// 	$("input[name=chk]").click(function() {
// 		var total = $("input[name=chk]").length;
// 		var checked = $("input[name=chk]:checked").length;

// 		if(total != checked) $("#cbx_chkAll").prop("checked", false);
// 		else $("#cbx_chkAll").prop("checked", true); 
// 	});
}

function selectDel() {
	
// 	$.ajax({
// 		  url : "/shop/deleteCart",
// 		  type : "post",
// 		  data : {
// 		    chbox : checkArr
// 		  },
// 		  success : function(result){
// 		    if(result == 1) {
// 		      location.href = "/shop/cartList";
// 		    } else {
// 		      alert("삭제 실패");
// 		    }
// 		  }
// 		});
	
	let arr = [];
	for(var i = 0 ; i < $("input[name=basketlist]:checked").length ; i++ ){
// 		alert($("input[name=basketlist]:checked")[i].value);
		arr[i] = $("input[name=basketlist]:checked")[i].value;		
	}
	
	location.href="/basket/DeleteBasket.lo?deleteList="+arr;
}

function up(ordercountid, cartid, price, index) {
	
	var i = parseInt($("#"+ordercountid).html()) + 1;
	$("#"+ordercountid).html(i);
	
	if(i == 2) {
		$("#ddd").attr("disabled",false);
	}
	
	let xhr = new XMLHttpRequest();
	xhr.open("POST", "/basket/BasketCntUpdate.lo", true);
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send("ordercount="+i+"&cartid="+cartid);
	xhr.onreadystatechange = function() {
		if( xhr.readyState == XMLHttpRequest.DONE
				&& xhr.status == 200 ) {
			if(xhr.responseText.trim() == "true") {
				alert("수량이 +1 추가되었습니다.");
			} else {
				alert("업데이트 실패");
			}
		}
	};
	var _price = parseInt(price) * parseInt(i);
	$("#cost"+index).html(_price);
	
	if($("#input"+index).is(":checked")) {
		$("#Pcost").html(parseInt($("#Pcost").html()) + parseInt(price));
	}
	
	$("#Tcost").html(parseInt($("#Pcost").html()) + parseInt($("#Dcost").html()));
	
}

function down(ordercountid, cartid, price, index) {
	
	if(parseInt($("#"+ordercountid).html()) == 1) {
		$("#ddd").attr("disabled",true);
		return;
	}
	var i = parseInt($("#"+ordercountid).html()) - 1;
	$("#"+ordercountid).html(i);
	
	if(i == 1) {
		$("#ddd").attr("disabled",true);
	}
	
	let xhr = new XMLHttpRequest();
	xhr.open("POST", "/basket/BasketCntUpdate.lo", true);
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send("ordercount="+i+"&cartid="+cartid);
	xhr.onreadystatechange = function() {
		if( xhr.readyState == XMLHttpRequest.DONE
				&& xhr.status == 200 ) {
			if(xhr.responseText.trim() == "true") {
				alert("수량이 -1 감소되었습니다.");
			} else {
				alert("업데이트 실패");
			}
		}
	};
	var _price = parseInt(price) * parseInt(i);
	$("#cost"+index).html(_price);
	
	if($("#input"+index).is(":checked")) {
		$("#Pcost").html(parseInt($("#Pcost").html()) - parseInt(price));
	}
	
	$("#Tcost").html(parseInt($("#Pcost").html()) + parseInt($("#Dcost").html()));
}
// $(document).ready(function() {
// 	$("input:checkbox").on('click',function(e) {
// // 		$("#cost"+e.target.id.substr(5))
// 		if(!e.target.checked){
// 			$("#Pcost").html(parseInt($("#Pcost").html()) - parseInt($("#cost"+e.target.id.substr(5)).html()));
// 		} else {
// 			$("#Pcost").html(parseInt($("#Pcost").html()) + parseInt($("#cost"+e.target.id.substr(5)).html()));
// 		}
// 	});
// });

	$("input:checkbox").on('click',function(e) {
// 		$("#cost"+e.target.id.substr(5))
		if(!e.target.checked){
			$("#Pcost").html(parseInt($("#Pcost").html()) - parseInt($("#cost"+e.target.id.substr(5)).html()));
		} else {
			$("#Pcost").html(parseInt($("#Pcost").html()) + parseInt($("#cost"+e.target.id.substr(5)).html()));
		}
		
		$("#Tcost").html(parseInt($("#Pcost").html()) + parseInt($("#Dcost").html()));
	});

function locationChange() {
	 window.open('/mypage/LocationChange.lo', 'a', 'width=500, height=600, left=100, top=50'); 
}

function purchase(userid) {
	//alert($("li input").length);
	
	var arr = [];
	for(var i=0; i < $("li input:checked").length; i++) {
		arr[i] = $("li input:checked")[i].value;
	}
	
	var payment = $("#Tcost").html();
	
	location.href="/mypage/Purchase.lo?arr="+arr+"&userid="+userid+"&payment="+payment;
}
</script>
</html>
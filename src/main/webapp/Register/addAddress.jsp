<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="/css/registerPopup.css">
<script src="/Register/jquery-3.2.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src = "/Register/Registerpop.js" charset = "utf-8"></script>
</head>
<body>
	
	<form action = "/Register/register.jsp" id = "addresspage" name = "addresspage">
	<div>
	
		<header>
			<strong>
			<span type = "direct" class = "css-1kxzrwz e11n32x22">샛별배송</span> 
			지역입니다.
			</strong>
			<p id = "#info">매일 새벽,문 앞까지 신선함을 전해드려요.</p>
			
			</header>
			
		<div style="margin-left:18px;" >
			<input type = "text" class = "css-u52dqk" id = "address1" name = "address"/>
			<br>
			<input type = "button" class = "css-1w63xsn" id = "address" src="https://res.kurly.com/pc/service/common/2006/ico_search.svg" 
			value = "재검색" onclick = "sample6_execDaumPostcode()" style="margin-left: 120px; margin-top: 10px; margin-bottom: 10px;"/>
			
			<br>
			
			<input type = "text" class = "css-u52dqk" id = "detailaddress" placeholder = "나머지 주소를 입력해 주세요">
			<p>
				<input type = "checkbox" id = "check"/> 기본 배송지로 지정 
				<input type = "hidden" name = "basic" id = "basic">
			</p>
		</div>
		
		<p class = "css-h4l6pv">저장된 배송지는 최대 7일간 임시 저장 후 자동 삭제됩니다. <br>
			로그인 할 경우, 회원님의 배송지 목록에 추가됩니다.</p>
			
		<br>
		
		<div style="text-align: center;">
			<input type = "button" class = "css-1w63xsn" value = "저장" onclick = "submit1()"/>
		</div>
		<div style="text-align: center;">
			<p class = "css-1mg1v9g">*샛별배송 지역 중 배송불가 장소 안내</p>
			<p class = "css-1lc8yec">관공서/학교/병원/시장/공단지역/산간지역/백화점 등</p>
		</div>
	</div>
	
	</form>
	
	<script>
		let address1 = opener.document.getElementById("sample6_address").value;
		document.addresspage.address1.value = address1;
		
		$(document).ready(function() {
			$("#check").change(function() {
				if ($("#check").is(":checked")) {
					document.getElementById('basic').value = "1";
 				    if(document.getElementById('basic').value == 1) {
 				    	console.log("1");
 				    }
				} else {
					document.getElementById('basic').value = "0";
	 				   if(document.getElementById('basic').value == 0) {
	 				    	console.log("0");
	 				    }
				}
			});
		});

		function submit1() {
			let detailaddress = document.getElementById("detailaddress").value;
			opener.document.register.sample6_detailAddress.value = detailaddress;

			let basic = document.getElementById("basic").value;
			opener.document.register.basicaddr.value = basic;

			window.close();
		}
	</script>

</body>
</html>
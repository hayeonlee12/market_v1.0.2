<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/css/mypageView.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<meta charset="UTF-8">
<title>배송지 관리</title>
</head>
<style>
*, :after, :before {
    box-sizing: border-box;
    margin: 0;
}
p {
    display: block;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
button {
    appearance: auto;
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
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
    overflow: visible;
    background-color: transparent;
    border: none;
}
}
</style>
<body>
	<div id="__next" data-reactroot="">
		<div class="css-sv3mbe e1u1sq1y0">
			<div class="css-ixlb9s ecqulhg2">
				<div class="css-0 e11n32x24">
					<strong class="css-1702mcg e11n32x23"><span type="direct"
						class="css-1kxzrwz e11n32x22">샛별배송</span> 지역입니다.
						<p class="css-1d1s4ku e11n32x21">매일 새벽, 문 앞까지 신선함을 전해드려요.</p></strong>
				</div>
				<div class="css-19u3hc5 e1n7pxx51">
					<p class="css-ks8pmw e1n7pxx50" id="address"><%=request.getParameter("addr") %></p>
					<button class="css-1w63xsn e4nu7ef3" type="button" width="120"
						height="44" radius="3" onclick="sample6_execDaumPostcode()">
						<span class="css-ymwvow e4nu7ef1"><img
							src="https://res.kurly.com/pc/service/common/2006/ico_search.svg"
							alt="" class="css-1m3kac1 e4nu7ef0">재검색</span>
					</button>
				</div>
				<div class="css-1hxvx8x e1uzxhvi6">
					<div height="44" class="css-t7kbxx e1uzxhvi3">
						<input data-testid="input-box" id="addressDetail"
							name="addressDetail" placeholder="나머지 주소를 입력해 주세요" type="text"
							height="44" class="css-1quw3ub e1uzxhvi2" value="">
					</div>
				</div>
				<button class="css-10voksq e4nu7ef3" type="button" height="44" radius="3" onclick="submit1('${sessionScope.user.userid }')">
					<span class="css-ymwvow e4nu7ef1">저장</span>
				</button>
				<div class="css-nyfv7e ep04gzj5">
					<strong class="css-1mg1v9g ep04gzj4">샛별배송 지역 중 배송불가 장소 안내</strong>
					<p class="css-1lc8yec ep04gzj3">
						<span>관공서 / 학교 / 병원 / 시장 / 공단지역 / 산간지역 / 백화점 등</span>
						<button class="css-1pd0f46 ep04gzj2">
							자세히 보기 <span class="css-177n2ml ep04gzj1"></span>
						</button>
					</p>
				</div>
			</div>
		</div>
	</div>
	<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/address/shipping-address","query":{},"buildId":"xTjcgILhyJqNcGJbIr7va","assetPrefix":"https://res.kurly.com","nextExport":true,"autoExport":true,"isFallback":false,"scriptLoader":[]}</script>
	<next-route-announcer>
	<p aria-live="assertive" id="__next-route-announcer__" role="alert"
		style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px; white-space: nowrap; overflow-wrap: normal;">컬리
		- 마켓컬리/뷰티컬리</p>
	</next-route-announcer>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
		id="daum_postcode_script"></script>
	<script src="https://www.googletagmanager.com/gtag/js?id=G-BJ5N3PD9QG"
		id="google-tag-manager" data-nscript="afterInteractive"></script>
	<script id="google-analytics" data-nscript="afterInteractive">
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			window.dataLayer.push(arguments);
		}
		gtag('js', new Date());
		gtag('config', 'G-BJ5N3PD9QG', {
			'user_id' : '989c4c9d-e0a5-5926-ad2c-0ebcf52ed262',
			'debug_mode' : true
		});
	</script>
	<script
		src="https://res.kurly.com/_next/static/chunks/63659-1427e448cc6157b9.js"></script>
	<script
		src="https://res.kurly.com/_next/static/chunks/48178-9729fad62d262e40.js"></script>
	<script
		src="https://res.kurly.com/_next/static/chunks/55260-4155b553bad455a7.js"></script>
	<script
		src="https://res.kurly.com/_next/static/chunks/45916-a622d6ea91420a5a.js"></script>
	<script
		src="https://res.kurly.com/_next/static/chunks/pages/address/shipping-address/result-1215b159c03d20b6.js"></script>
</body>
<script>
function sample6_execDaumPostcode() {
	
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

           window.open('/mypage/newlocation_nologin.jsp?addr='+addr, 'a', 'width=500, height=600, left=100, top=50'); 

        }
    }).open();
}

function submit1(userid) {
	var str = $('#address').html() + ' , '+$('#addressDetail').val() ;
	alert(str);
// 	sessionStorage.setItem('location', str);
// 	alert(sessionStorage.getItem('location');
	window.opener.location.href="/?location="+str;
	window.close();
}


</script>
</html>
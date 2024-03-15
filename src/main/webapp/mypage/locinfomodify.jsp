<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link href="${pageContext.request.contextPath }/css/mypageView.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>배송지 관리</title>
</head>
<body>
		<div id="__next" data-reactroot="">
			<div class="css-y8vf74 e1k348234">
				<h2 class="css-3ljxig e1k348233">배송지 수정</h2>
				<div class="css-1ghu3wd e1k348232">
					<span class="css-ob9vzc e1k348231">기본 배송지</span>
					<div class="css-1n57dna e1uzxhvi6">
						<label for="addressDetail" class="css-c3g9of e1uzxhvi4">${param.locaddr }</label>
					</div>
					<div class="css-s480k4 e1uzxhvi6">
						<label for="name" class="css-c3g9of e1uzxhvi4"></label>
						<div height="44" class="css-t7kbxx e1uzxhvi3">
							<input data-testid="input-box" id="name" name="locname"
								placeholder="이름을 입력해 주세요" type="text" height="44"
								class="css-1quw3ub e1uzxhvi2" value="<%= request.getParameter("locname") %>"></input>
						</div>
					</div>
					<div class="css-s480k4 e1uzxhvi6">
						<label for="mobile" class="css-c3g9of e1uzxhvi4"></label>
						<div height="44" class="css-t7kbxx e1uzxhvi3">
							<input data-testid="input-box" id="mobile" name="locphone"
								placeholder="번호를 입력해 주세요" type="tel" height="44"
								class="css-1quw3ub e1uzxhvi2" value="<%= request.getParameter("locphone") %>"></input>
						</div>
					</div>
				</div>
				<div type="default" class="css-fkdfsr e1k348230">
					<button class="css-10voksq e4nu7ef3" type="button" height="44"
						radius="3" onclick="store('${param.locationid }')">
						<span class="css-ymwvow e4nu7ef1">저장</span>
					</button>
					<span style="padding:10px;"></span>
					<button class="css-d85pyu e4nu7ef3" type="button" height="44"
						radius="3" onclick="delete1('${param.locationid }')">
						<span class="css-ymwvow e4nu7ef1">삭제</span>
					</button>
				</div>
			</div>
		</div>
	
</body>
<script type="text/javascript">
function store(locationid) {
	var locname = $("#name").val();
	var locphone = $("#mobile").val();
		
	window.opener.location.href = "/mypage/LocInfoModify.lo?locationid="+locationid+"&locname="+locname+"&locphone="+locphone;
	window.close();
}

function delete1(locationid) {
		
	window.opener.location.href = "/mypage/LocInfoDel.lo?locationid="+locationid;
	window.close();
}
</script>
</html>
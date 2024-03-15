<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의 하기</title>
<link rel="stylesheet" href="/css/customercss4.css">
<link href="/css/tag.css" rel="stylesheet" type="text/css" />
<link href="/css/headView.css" rel="stylesheet" type="text/css" />
<link href="/css/loginView.css" rel="stylesheet" type="text/css" />
<link href="/css/mypageView.css" rel="stylesheet" type="text/css" />
<link href="/css/searchView.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
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
                    <table id="">
                        <tr>
                            <h2 style="border-bottom: 1px solid #000000; padding-bottom: 20px; width: 750px;"> 1:1 문의 </h2>
                        </tr>
                    </table>
                    <div id="inquirywritetable">
                        <form method="post" name="inquiryForm" action="${pageContext.request.contextPath}/inquiry/inquiryWriteOk.bo">
                            <table>
                                <tr height="30px" >
                                    <th align="center" width="100px">
                                        유형
                                    </th>
                                    <td>
                                        <select name="inqcategory">
                                        	<option value="배송관련문의">배송관련문의</option>
                                        	<option value="상품관련문의">상품관련문의</option>
                                        	<option value="주소관련문의">주소관련문의</option>
                                        	<option value="기타관련문의">기타관련문의</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr height="30px">
                                    <th align="center" width="100px">
                                        제목
                                    </th>
                                    <td>
                                        <input id="inquiry-contents" name="inqtitle" size="20" maxlength="20" value="" placeholder="이름을 입력하세요">
                                    </td>
                                </tr>
                                <tr height="300px">
                                    <th align="center" width="100px">
                                        <div style="margin-bottom: 380px;">
                                            내용
                                        </div>
                                    </th>
                                    <td>
                                        <textarea id="inquiry-contents2" name="inqcontent" style="width:500px;height:250px; resize: none;" placeholder="1:1 문의 작성전 확인해주세요
                                        &#10;반품 / 환불
                                        &#10;* 제품 하자 혹은 이상으로 반품(환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요."></textarea> <br>
                                        <br>
<!--                                         <label className="input-file-button" for="img_btn" style="width: 20px; height: 20px; border-style: groove; padding-top: 10px;padding-right: 10px;padding-bottom: 10px;padding-left: 10px;" > -->
<!--                                        	 <ion-icon name="image-outline"></ion-icon> -->
<!--                                         </label> -->
<!-- 										이미지올리기위한 enctype -->
										
										<form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
	                                        <input type="file" onchange="readURL(this);" class="btm_image" id="img_btn" value="이미지 첨부" style="width: 100%;"></input>
	                                        <img id="preview" style="width: 280px;" />
                                        </form>
<!--                                         <input type="file" name="file" class="btm_image" id="img_btn" style="display:none;" accept="image/gif,image/jpeg,image/png"/> -->
                                        <br>
                                        <li style="font-size: 13px; color: rgb(153, 153, 153); padding-top: 20px;">
                                            30MB 이하의 이미지만 업로드 가능합니다.
                                        </li>
                                        <li style="font-size: 13px; color: rgb(153, 153, 153);">
                                            상품과 무관한 내용이거나 음란 및 불법적인 내용은 통보없이 삭제 될 수 있습니다.
                                        </li>
                                        <li style="font-size: 13px; color: rgb(153, 153, 153);">
                                            사진은 최대 8장까지 등록가능합니다.
                                        </li>			
                                    </td>
                                </tr>
                                
                            </table>
                            <table style="border : 0px;">
                                <tr align="right" valign="middle">
                                    <a id="inquirybtn" style="margin-left: 335px; margin-top: 10px; text-decoration-line: none; padding-top: 10px;height: 30px; box-sizing:unset;" href="javascript:document.inquiryForm.submit()">등록</a>                
                                </tr>
                            </table>
                        </form>
                    </div>
            </div>
        </div>

    </body>
    <script>
	    function readURL(input) {
	    	  if (input.files && input.files[0]) {
	    	    var reader = new FileReader();
	    	    reader.onload = function(e) {
	    	      document.getElementById('preview').src = e.target.result;
	    	      
	    	    };
	    	    reader.readAsDataURL(input.files[0]);
	    	  } else {
	    	    document.getElementById('preview').src = "";
	    	  }
	    	}
    </script>
    
    </html>
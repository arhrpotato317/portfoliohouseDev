<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>관리자</title>
	<script src="/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">admin</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>admin</h2>
						<p class="dot"></p>
					</div>

					<!-- 디자인 작업 필요 -->
					<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
						<input type="hidden" name="brdNum" value="${board.brdNum}">
						<label>1차 카테고리</label>
						<select class="category1">
							<option value="">전체</option>
						</select>
						
						<label>2차 카테고리</label>
						<select class="category2" name="cateCode">
							<option value="">전체</option>
						</select>
						
						<div class="input_box">
							<label for="brdName">게시물 제목</label>
							<input type="text" id="brdName" name="brdName" value="${board.brdName}">
						</div>
						<div class="input_box">
							<label for="brdLink">게시물 링크</label>
							<input type="text" id="brdLink" name="brdLink" value="${board.brdLink}">
						</div>
						<div class="input_box">
							<label for="brdDes1">상세 설명</label>
							<textarea rows="10" cols="50" id="brdDes1" name="brdDes1">${board.brdDes1}</textarea>
							<script>
								// Json형태의 변수인 ckeditor_config를 선언및 설정
								var ckeditor_config = {
									resize_enable : false,
									enterMode : CKEDITOR.ENTER_BR,
									shiftEnterMode : CKEDITOR.ENTER_P,
									filebrowserUploadUrl : "/admin/board/ckUpload" //파일을 업로드할 경우, 해당 부분에서 설정한 URL로 전송
								};
								// 텍스트에어리어를 CK에디터로 교체
								CKEDITOR.replace("brdDes1", ckeditor_config);
							</script>
						</div>
						<div class="input_box">
							<label for="brdDes2">제작 설명</label>
							<textarea rows="10" cols="50" id="brdDes2" name="brdDes2">${board.brdDes2}</textarea>
							<script>
								// Json형태의 변수인 ckeditor_config를 선언및 설정
								var ckeditor_config = {
									resize_enable : false,
									enterMode : CKEDITOR.ENTER_BR,
									shiftEnterMode : CKEDITOR.ENTER_P,
									filebrowserUploadUrl : "/admin/board/ckUpload" //파일을 업로드할 경우, 해당 부분에서 설정한 URL로 전송
								};
								// 텍스트에어리어를 CK에디터로 교체
								CKEDITOR.replace("brdDes2", ckeditor_config);
							</script>
						</div>
						<div class="input_box">
							<label for="brdImg">이미지 등록</label>
							<input type="file" id="brdImg" name="file">
							<div class="select_img">
								<img src="${board.brdImg}">
								<input type="hidden" name="brdImg" value="${board.brdImg}">
								<input type="hidden" name="brdThumb" value="${board.brdThumb}">
							</div>
							
							<script>
								$("#brdImg").change(function() {
									if(this.files && this.files[0]) {
										var reader = new FileReader;
										reader.onload = function(data) {
											$(".select_img img").attr("src", data.target.result).width(500);
										}
										reader.readAsDataURL(this.files[0]);
									}
								});
							</script>
							<%=request.getRealPath("/") %>
						</div>
						
						<button type="submit" id="update_btn">수정완료</button>
						<button type="submit" id="back_btn">취소</button>
						
						<script>
							$("#back_btn").click(function() {
								// history.back();
								location.href = "/admin/board/view?n="+${board.brdNum};
							});
						</script>
					</form>
					<!-- //디자인 작업 필요 -->
					
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
	<!-- //footer -->
	
<script>
// ******************** 카테고리 설정하기 

//컨트롤러에서 데이터 받기
var jsonData = JSON.parse('${category}');

var cate1Arr = new Array();
var cate1Obj = new Object();

// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
for(var i = 0; i < jsonData.length; i++) {
 
	if(jsonData[i].level == "1") {
		cate1Obj = new Object();  //초기화
		cate1Obj.cateCode = jsonData[i].cateCode;
		cate1Obj.cateName = jsonData[i].cateName;
		cate1Arr.push(cate1Obj);
	}
}

// 1차 분류 셀렉트 박스에 데이터 삽입
var cate1Select = $("select.category1")

for(var i = 0; i < cate1Arr.length; i++) {
	cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>" + cate1Arr[i].cateName + "</option>"); 
}

// 2차 분류 데이터 추가하기
$(document).on("change", "select.category1", function(){
	var cate2Arr = new Array();
	var cate2Obj = new Object();
	 
	// 2차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {
	  
		if(jsonData[i].level == "2") {
			cate2Obj = new Object();  //초기화
			cate2Obj.cateCode = jsonData[i].cateCode;
			cate2Obj.cateName = jsonData[i].cateName;
			cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
			   
			cate2Arr.push(cate2Obj);
		}
	}
	 
	var cate2Select = $("select.category2");
	
	/*for(var i = 0; i < cate2Arr.length; i++) {
		cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>" + cate2Arr[i].cateName + "</option>");
	}*/
	
	cate2Select.children().remove();
	
	$("option:selected", this).each(function(){
		var selectVal = $(this).val();  
		cate2Select.append("<option value='" + selectVal + "'>전체</option>");
		  
		for(var i = 0; i < cate2Arr.length; i++) {
			if(selectVal == cate2Arr[i].cateCodeRef) {
				cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>" + cate2Arr[i].cateName + "</option>");
			}
		}
	});

});

//******************** select box에 카테고리 추가
var select_cateCode = '${board.cateCode}';
var select_cateCodeRef = '${board.cateCodeRef}';
var select_cateName = '${board.cateName}';

if(select_cateCodeRef != null && select_cateCodeRef != '') {
	$(".category1").val(select_cateCodeRef);
	$(".category2").val(select_cateCode);
	$(".category2").children().remove();
	$(".category2").append("<option value='" + select_cateCode + "'>" + select_cateName + "</option>");
} else {
	
$(".category1").val(select_cateCode);
	//$(".category2").val(select_cateCode);
	// select_cateCod가 부여되지 않는 현상이 있어서 아래 코드로 대체
	$(".category2").append("<option value='" + select_cateCode + "' selected='selected'>전체</option>");
}
</script>

</body>
</html>















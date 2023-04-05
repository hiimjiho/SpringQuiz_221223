<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<%--AJAX를 사용하려면 jquery원본 필요 --%>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
			<div>
				<label for="name"><b>이름</b></label>
				<input type="text" id="name" class="col-12">
			</div>	
			<div>
				<label for="url"><b>주소</b></label>
				<div class="d-flex">
					<input type="text" id="url" class="col-10">
					<button type="button" class="btn btn-primary ml-2" id="nameCheck">중복확인</button>
				</div>
				<small id="nameStatusArea"></small>
			</div>
			<input type="button" id="addBtn" value="추가" class="btn btn-success col-12 mt-3">
	</div>
</body>
<script>
	$(document).ready(function(){
		$("#addBtn").on("click", function(){
			let name = $("#name").val().trim();
			let url = $("#url").val().trim();
			
			if(!name){
				alert("이름을 입력하세요");
				return;
			}
			
			if(!url){
				alert("주소를 입력하세요");
				return;
			}
			
			// http도 아니고 https도 아닐때 잘못된 주소
			if(url.startsWith('http://') == false && url.startsWith("https://") == false){
				alert("http 혹은 https 프로토콜을 입력해주세요");
				return;
			}
			
			console.log(name);
			console.log(url);
			
			$.ajax({
				// request
				type:"POST"
				, url:"/lesson06/quiz01/add_site"
				, data:{"name":name, "url":url}
				
				// response
				, success:function(data){	// data: response 결과 응답 request의 data와 관계 없음	jquery ajax함수가 json String을 object로 파싱해줌
					//alert(data.code);
					//alert(data.result);
					if(data.result == "성공"){
						location.href="/lesson06/quiz01/site_view";
					} else {
						alert(data.errorMessage);
					}
			}
				, error:function(request, status, error){
					alert("요청에 실패했습니다.");
				}
				
			});
		});
			$("#nameCheck").on("click", function(){
			
			$("#nameStatusArea").empty();
			let url = $("#url").val().trim();
			
			$.ajax({
				type:"get"
				, url:"/lesson06/quiz01/is_duplication"
				, data:{"url":url}
			
				, success:function(data){
					if(data.isDuplication){
						$("#nameStatusArea").append('<span class="text-danger">주소가 중복되었습니다.</span>');
					} else{
						$("#nameStatusArea").append('<span class="text-success">사용가능한 주소입니다.</span>');
					}
				}
			});
		});
	});
</script>
</html>
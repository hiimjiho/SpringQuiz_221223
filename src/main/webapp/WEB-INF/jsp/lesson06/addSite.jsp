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
			<div class="form-group">
				<label for="name"><b>이름</b></label>
				<input type="text" id="name" name="name" class="col-12">
			</div>	
			<div class="form-group">
				<label for="url"><b>주소</b></label>
				<input type="text" id="url" name="url" class="col-12">
			</div>
			<input type="button" id="addBtn" value="추가" class="btn btn-success col-12">
	</div>
</body>
<script>
	$(document).ready(function(){
		$("#addBtn").click(function(){
			let name = $("#name").val().trim();
			let url = $("#url").val().trim();
			
			if(!name){
				alert("이름을 입력하세요");
			}
			if(!url){
				alert("주소를 입력하세요");
			}
			
			console.log(name);
			console.log(url);
			
			$.ajax({
				// request
				type:"POST"
				, url:"/lesson06/quiz01/add_site"
				, data:{name:"name", url:"url"}
				, success:function(data){
					if(data == "성공"){
						location.href="/lesson06/quiz01/site_view";
					}
				}
			});
		});
	});
</script>
</html>
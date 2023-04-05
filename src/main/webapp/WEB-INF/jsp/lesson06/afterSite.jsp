<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 사이트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<%--AJAX를 사용하려면 jquery원본 필요 --%>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	a{color:black;}
</style>
</head>
<body>
	<div class="container">
	<h1>즐겨찾기 목록</h1>
		<table class="table text-center">
			<tr>
				<th>No</th>
				<th>이름</th>
				<th>주소</th>
				<th>삭제</th>
			</tr>
		<c:forEach items="${favorite}" var="site" varStatus="status">
			<tr>
				<td>${site.id}</td>
				<td>${site.name}</td>
				<td><a href="${site.url}">${site.url}</a></td>
				<td>
					<%-- <button type="button" class="del-btn btn btn-danger" value="${site.id}">삭제</button> --%>
					<button type="button" class="del-btn btn btn-danger" data-site-id="${site.id}">삭제</button>
				</td>
			</tr>
		</c:forEach>
		</table>
	</div>
<script>
	$(document).ready(function(){
		//(1)
		/*
		$('.del-btn').on("click", function(e){
			let id = e.target.value
			// let id = $(this).val();
		});
		*/
		
		
		//(2) data 활용
		// data-site-id 태그에 값을 심어 놓는다.		data- 그 뒤부터는 이름을 직접 짓는다.(대문자가 들어가면 안됨)
		// 스크립트: $(this).data('site-id');
		$('.del-btn').on("click", function(){
			let id = $(this).data('site-id');
			// alert(id);
			
			ajax({
				// request
				type:"post"
				, url:"/lesson06/quiz01/delete_site"
				, data:{"id":id}
			
				// response
				, success:function(data){
					if(data.code == 1){
						location.reload(true);	// 새로고침
					} else{
						alert(data.errorMessage);
					}
				}
				, error:function(request, status, error){
					alert("삭제하는데 실패했습니다 관리자에게 문의해주세요.");
				}
			});
		});
	});
</script>
</body>
</html>
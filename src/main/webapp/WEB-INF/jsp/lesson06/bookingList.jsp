<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<%--AJAX를 사용하려면 jquery원본 필요 --%>
<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="/css/lesson06/pension_style.css">
</head>
<body>
	<div id="wrap" class="container">
		<header class="text-center">
			<h1>통나무 펜션</h1>
		</header>
		<nav class="menu bg-warning">
			<ul class="nav nav-fill menu-bg">
				<!-- nav nav-fill 세트. 메뉴를 nav에 가득 채운다. -->
				<li class="nav-item"><a href="#"
					class="nav-link menu-link-text text-white">팬션소개</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link menu-link-text text-white">객실보기</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link menu-link-text text-white">예약하기</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link menu-link-text text-white">예약목록</a></li>
			</ul>
		</nav>

		<section>
			<h2 class="text-center">예약 목록 보기</h2>
			<table class="table text-center">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${bookingList}" var="booking">
					<tr>
						<td>${booking.name}</td>
						<td><fmt:formatDate value="${booking.date}" pattern=""/></td>
						<td>${booking.day}</td>
						<td>${booking.headcount}</td>
						<td>${booking.phoneNumber}</td>
						<td>
							<c:choose>
								<c:when test="${booking.state eq '대기중'}">
									<span class="text-info">${booking.state}</span>
								</c:when>
								<c:when test="${booking.state eq '확정'}">
									<span class="text-success">${booking.state}</span>
								</c:when>
								<c:when test="${booking.state eq '취소'}">
									<span class="text-danger">${booking.state}</span>
								</c:when>
								<c:otherwise>
									<span>${booking.state}</span>
								</c:otherwise>
							</c:choose>
						</td>
						<td><button type="button" class="del-btn btn btn-danger" data-booking-id="${booking.id}">삭제</button></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</section>
		<footer>
			<div class="text-secondary"> 
				<div><small>제주특별자치도 제주시 애월읍</small></div>
				<div><small>사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목</small></div> 
				<div><small>Copyright 2025 tongnamu. All right reserved.</small></div>
			</div>
		</footer>
	</div>
<script>
	$(document).ready(function(){
		$('.del-btn').on("click", function(){
			let id = $(this).data('booking-id');
			//alert(id);
			
			$.ajax({
				// request
				type="delete"	// POST 계열, 브라우저로 직접 치고 못들어감
				, url="/lesson06/quiz03/delete_booking"
				, date={"id":id}
				
				// response
				, success:function(data){
					if(data.code == 1){
						alert("삭제 되었습니다");
						location.reload(true);
					}
				}
				. error:function(request, status, error){
					alert("삭제하는데 실패했습니다.");
				}
			});
		});
	});
</script>
</body>
</html>
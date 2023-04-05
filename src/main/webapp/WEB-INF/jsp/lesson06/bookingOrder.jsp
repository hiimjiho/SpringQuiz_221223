<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
</head>
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
			<div class="d-flex justify-content-center">
				<div class="reservation-box">
					<div class="subject-text my-2 font-weight-bold">이름</div>
					<input type="text" class="form-control" name="name">

					<div class="subject-text my-2 font-weight-bold">예약날짜</div>
					<input type="text" class="form-control" name="date">

					<div class="subject-text my-2 font-weight-bold ">숙박일수</div>
					<input type="text" class="form-control" name="day">

					<div class="subject-text my-2 font-weight-bold">숙박인원</div>
					<input type="text" class="form-control" name="headcount">

					<div class="subject-text my-2 font-weight-bold">전화번호</div>
					<input type="text" class="form-control" name="phoneNumber">

					<button type="button" id="reservationBtn"
						class="btn btn-warning w-100 mt-3">예약하기</button>
				</div>
			</div>
		</section>
		<footer>
			<div class="text-secondary">
				<div>
					<small>제주특별자치도 제주시 애월읍</small>
				</div>
				<div>
					<small>사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목</small>
				</div>
				<div>
					<small>Copyright 2025 tongnamu. All right reserved.</small>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>
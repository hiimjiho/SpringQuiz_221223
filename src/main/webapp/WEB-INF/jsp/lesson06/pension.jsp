<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 펜션</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<%--AJAX를 사용하려면 jquery원본 필요 --%>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/lesson06/pension_style.css">
</head>
<body>
	<div id="wrap"class="container">
		<header class="text-center"><h1>통나무 펜션</h1></header>
		  <nav class="menu bg-warning"> 
                <ul class="nav nav-fill menu-bg"> <!-- nav nav-fill 세트. 메뉴를 nav에 가득 채운다. -->
                    <li class="nav-item"><a href="#" class="nav-link menu-link-text">팬션소개</a></li>
                    <li class="nav-item"><a href="#" class="nav-link menu-link-text">객실보기</a></li>
                    <li class="nav-item"><a href="#" class="nav-link menu-link-text">예약하기</a></li>
                    <li class="nav-item"><a href="/lesson06/" class="nav-link menu-link-text">예약목록</a></li>
                </ul>
            </nav>
		<section class="bg-danger">
			<div>
				<img src="/img/test06_banner1.jpg" alt="배경사진" width="1100">
			</div>
			<div class="contents d-flex bg-info">
				<div class="atricel1 col-4 bg-success">
					<div class="order-font text-center">실시간 예약하기</div>
				</div>
				<div class="atricel2 col-4 bg-dark">
					<div class="order-font">예약확인</div>
					이름:<input type="text"><br>
					전화번호:<input type="text"><br>
					<button class="btn btn-success">예약확인</button>
				</div>
				<div class="atricel3 col-4 bg-success">
					<div class="order-font">예약문의: 010-0000-1111</div>
				</div>
			</div>
		</section>
		<footer class="bg-warning">
			<small class="footer-font">제주특별자치도 제주시 애월읍</small><br>
			<small class="footer-font">사업자등록번호 111-22-2553232/농어촌민박사업사지정/대표:김동욱</small><br>
			<small class="footer-font">Copyright © marondal 2021</small>
		</footer>
	</div>
</body>
</html>
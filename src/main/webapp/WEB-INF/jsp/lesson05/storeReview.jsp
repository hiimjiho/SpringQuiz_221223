<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족 리뷰</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/lesson05/store_style.css">
</head>
<body>
	<div id="wrap" class="container">
		<header class="bg-info"><span class="headerfont ml-3">배탈의 민족</span></header>
		<section class="">
		<h1></h1>
			<c:forEach items="${review}" var="reviews">
				<c:forEach items="${stores}" var="store">
					<div class="border border-info p-3 mt-3">
						<span class="storeName"><b>${store.name}</b></span><br>
						<span>전화 번호:${reviews.userName}</span><br>
						<span>주소: ${reviews.point}</span>
					</div>
					</c:forEach>
			</c:forEach>
		</section>
		<footer class="">
			<b>(주)우와한 형제</b><br>
			<span class="helpcall">고객 센터: 1500-1500</span>
		</footer>
	</div>
</body>
</html>
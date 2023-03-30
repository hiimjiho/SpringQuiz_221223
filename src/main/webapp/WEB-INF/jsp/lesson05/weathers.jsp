<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	#wrap{height:1000px;}
	header{height:100px;}
	section{height:850px;}
	footer{height:50px;}
	nav{height:1000px; width:200px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="bg-warning">
			<h1>과거 날씨</h1>
		</header>
		<section class="bg-danger">
			<table class="table text-center">
				<thead>
					<tr>
						<th>날짜</th>
						<th>날씨</th>
						<th>기온</th>
						<th>강수량</th>
						<th>미세먼지</th>
						<th>풍속</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${weathers}" var="weather" >
						<tr>
							<fmt:formatDate value="${weahter.date}" pattern="yyy년 MM월 dd일" var="weatherDate"/><td>${weatherDate}</td>
						<c:choose>
							<c:when test="${weather.weather == '맑음'}">
								<td><img src="/img/sunny.jpg" alt="맑음"></td>
							</c:when>
							<c:when test="${weather.weather == '구름조금'}">
								<td><img src="/img/partlyCloudy.jpg" alt="구름조금"></td>
							</c:when>
							<c:when test="${weather.weather == '흐림'}">
								<td><img src="/img/cloudy.jpg" alt="흐림"></td>
							</c:when>
							<c:when test="${weather.weather == '비'}">
								<td><img src="/img/rainy.jpg" alt="비"></td>
							</c:when>
						</c:choose>
							<td>${weather.temperatures}</td>
							<td>${weather.precipitation}</td>
							<td>${weather.microDust}</td>
							<td>${weather.windSpeed}</td>
						
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
		<footer class="bg-success d-flex">
			<img src="/img/logo.jpg" alt="기상청 로고"> (07062) 서울시 동작구 여의대방로16길 61
		</footer>
	</div>
</body>
</html>
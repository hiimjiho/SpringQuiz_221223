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
					<c:forEach items="${weathers}" var="${weather}" >
						<tr>
							<td>${weather.date}</td>
							<td>${weather.weather}</td>
							<td>${weather.temperatures}</td>
							<td>${weather.precipitation}</td>
							<td>${weather.microDust}</td>
							<td>${weather.windSpeed}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
		<footer class="bg-success"></footer>
	</div>
</body>
</html>
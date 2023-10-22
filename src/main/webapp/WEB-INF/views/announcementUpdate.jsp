<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>공지사항</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/css/style.css" type="text/css">
</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->
	
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>공지사항 수정</h2>
					</div>
				</div>
			</div>
		</div>		
	</section>
	<!-- Contact Form Begin -->
	<c:if test="${memberId == 'admin'}">
	<div class="contact-form spad">
		<div class="container">
			<form action="/announcement/modify/${announcementNum}" method="POST">
				<input type="hidden" name="_method" value="PUT" />
				<div class="row">
					<div class="col-lg-12 col-md-6">
						<input type="text" placeholder="제목을 입력하세요" name="announcementTitle"
							id="announcementTitle" value="${announcement.announcementTitle}">
					</div>
					<div class="col-lg-12 text-center">
						<textarea placeholder="내용을 입력하세요" name="announcementBody"
							id="announcementBody">${announcement.announcementBody}</textarea>
						<input type="submit" value="수정완료" style="color:white; width:100%;" class="charles_btn">
					</div>

					<div class="col-lg-12 text-center"></div>
					<div class="col-lg-12 text-center">
						<input type="reset" value="다시작성"> <input type="button"
							value="목록" onclick="location.href='/announcement'">
					</div>

				</div>
			</form>
		</div>
	</div>
	</c:if>
	<c:if test="${memberId != 'admin'}">
   		<p align="center"><b><span style="font-size:12pt;">관리자 전용 서비스입니다.</span></b></p>
	</c:if>
	<!-- Contact Form End -->

	<!-- Footer Section Begin -->
	<%@ include file="footer.jsp"%>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.nice-select.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/mixitup.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/main.js"></script>
</body>
</html>
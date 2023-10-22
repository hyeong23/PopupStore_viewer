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
<title>스토어 신청</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap"
	rel="stylesheet">

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
						<h2>스토어 정보</h2>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- content Begin -->
	<br>
	<br>
	<!-- Page content-->
	<form action="/storeList/${store.storeNum}"
		method="GET" name="detailForm" id="detailForm"">
		<div class="container mt-5">
			<div class="row">
				<div class="col-lg-8">
					<article>
						<!-- Post title-->
						<div class="text-muted fst-italic mb-2">
							<span id="storeNum">${store.storeNum}
							</span>
						</div>
						<h2 class="fw-bolder mb-1">
							<div class="section-title product__discount__title">
								<h2>${store.storeTitle}</h2>
							</div>
						</h2>
						<!-- Post meta content-->
						<div class="text-muted fst-italic mb-2">
								 <div class="left">작성자 : 
								<c:if test="${store.memberCompanyName eq null}">
									${store.memberNickname}
								</c:if>
								<c:if test="${store.memberCompanyName ne null}">
									${store.memberCompanyName}
								</c:if>
							</div>
							<div class="right">조회수 : ${store.storeCount}</div>
						</div>
						<hr>
						<!-- Post content-->
						<section class="mb-5">
							<div class="scrollBody" data-mdb-perfect-scrollbar="true"
								style="position: relative; height: 500px">
								<h3>
								
								</h3>
							</div>
						</section>
					</article>

				</div>

			</div>
		</div>
	</form>
	<div align=center>

		<span style="font-size: 12pt;"> <input type="button" value="목록"
			onclick="location.href='/storeList'" class="charles_btn">
		</span>
		<c:if test="${memberId == 'admin'}">
			<span style="font-size: 12pt;"> <input type="button"
				value="수정 및 재신청 "
				onclick="location.href='/storeUpdate/${storeNum}'"
				class="charles_btn">
			</span>
			<span style="font-size: 12pt;"> <input type="button"
				value="삭제" onclick="deleteStore()" class="charles_btn">
			</span>
		</c:if>
	</div>

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

	<script type="text/javascript">
		function deleteStore() {
			let detailForm = document.getElementById("detailForm");
			let storeNum = document.getElementById("storeNum").innerText;

			let input = document.createElement('input');
			input.type = 'hidden';
			input.name = '_method';
			input.value = 'DELETE';
			detailForm.appendChild(input);

			detailForm.action = '/storeList/' + storeNum;
			detailForm.method = 'POST';
			detailForm.submit();
		}
	</script>

</body>
</html>
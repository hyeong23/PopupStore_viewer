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
<title>Ogani | Template</title>

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
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<style>
#bbsList_list {
	display: flex;
}

#bbsList_list dl {
	display: flex;
	flex-direction: row;
}

#bbsList_list dd {
	flex: 1;
}
</style>




</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<!-- 맨위 배너 -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>등록 신청 목록</h2>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- 맨위 배너 End-->

	
	<br>
	<%-- 	${sessionScope.memberType} --%>
	<br>
	<c:if test="${memberType == 2 || memberType == 0}">

		<div class="container">
			<div class="table-responsive table-scroll"
				data-mdb-perfect-scrollbar="true"
				style="position: relative; height: 500px; border: 2px solid #dee2e6;">
				<table class="table table-striped mb-0"
					style="font-family: 'Noto Sans KR', sans-serif; font-size: 13pt;">
					<form name="detailForm" id="detailForm">
						<thead
							style="background-color: #ff80c0; text-align: center; color: white">
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">조회수</th>
								<th scope="col">승인/거부</th>
								<th scope="col">스토어 삭제</th>
							</tr>
						</thead>
						<tbody style="text-align: center;">
							<c:if test="${empty requestScope.store}">
								<tr>
									<td colspan="6">
										<p align="center">
											<b><span style="font-size: 12pt;">등록된 글이 존재하지
													않습니다.</span></b>
										</p>
									</td>
								</tr>
							</c:if>
							<c:forEach items="${requestScope.store}" var="store">
								<tr>
									<td>
										<p align="center">
											<b><span id="storeNum" style="font-size: 12pt;">
													${store.storeNum}</span></b>
										</p>
									</td>

									<td>
										<p align="center">
											<b><span style="font-size: 12pt;"><a
													href="/storeUpdate/${store.storeNum}">${store.storeTitle}</a></span></b>

										</p>
									</td>
									<td><c:if test="${store.memberCompanyName eq null}">
											<p align="center">
												<b><span style="font-size: 12pt;">
														${store.memberNickname}</span></b>
											</p>
										</c:if> <c:if test="${store.memberCompanyName ne null}">
											<p align="center">
												<b><span style="font-size: 12pt;">
														${store.memberCompanyName}</span></b>
											</p>
										</c:if></td>

									<td>
										<p align="center">
											<b><span style="font-size: 12pt;">${store.storeCount}</span></b>
										</p>
									</td>
									<td>
										<p align="center">
			
											<c:if test="${store.storeStatus == 0}">
												<span style="font-size: 12pt;"> <!-- 부서위치 --> <b>승인 전</b></span>
											</c:if>
											<c:if test="${store.storeStatus == 1}">
												<span style="font-size: 12pt;"> <!-- 부서위치 --> <b>승인
												</b></span>
											</c:if>
											<c:if test="${store.storeStatus == 2}">
												<span style="font-size: 12pt;"> <!-- 부서위치 --> <b>거부
												</b></span>
											</c:if>
											
										</p>
									</td>
									<td><span style="font-size: 12pt;"> <input
											type="button" value="삭제" onclick="deleteStore()"
											class="charles_btn">
									</span></td>
								</tr>
							</c:forEach>

						</tbody>
					</form>
				</table>
			</div>

		</div>


		<div align=center>

			<span style="font-size: 12pt;"> <input type="button"
				value="메인으로" onclick="location.href='/calendar'" class="charles_btn">
			</span> <span style="font-size: 12pt;"> <input type="button"
				value="스토어등록" onclick="location.href='/storeRegister'"
				class="charles_btn">
			</span>

		</div>

	</c:if>
	<c:if test="${memberType == 1 }">

		<p align="center">
			<b><span style="font-size: 12pt;">권한이 없습니다.</span></b>
		</p>


	</c:if>

	<!-- Footer Section Begin -->
	<%@ include file="footer.jsp"%>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>

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
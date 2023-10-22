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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
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
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>공지사항</h2>
					</div>
				</div>
			</div>
		</div>
		
	</section>
	<!-- Breadcrumb Section End -->

	<!-- content Begin -->
	<br><br>
	<section class="intro">
		<div class="bg-image h-100";">
			<div class="mask d-flex align-items-center h-100">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-12" style="display: flex; justify-content: center;">
							<div class="card" style="display: flex; justify-content: center;">
								<div class="card-body p-0">
									<div class="table-responsive table-scroll"
										data-mdb-perfect-scrollbar="true"
										style="position: relative; height: 500px;">
										<table class="table table-striped mb-0" style="font-family: 'Noto Sans KR', sans-serif; font-size: 13pt;" >
											<thead
												style="background-color: #ff80c0; text-align: center; color: white">
												<tr>
													<th scope="col">번호</th>
													<th scope="col">제목</th>
													<th scope="col">등록 날짜</th>
													<th scope="col">조회수</th>
												</tr>
											</thead>
											<tbody style="text-align: center;">
												<!-- 부서 객체 유무 검증 -->
												<c:if test="${empty requestScope.list}">
													<tr>
														<td colspan="5">
															<p align="center">
																<p><span style="font-size: 12pt;">등록된 글이 존재하지
																		않습니다.</span></p>												
														</td>
													</tr>
												</c:if>
												<!-- 반복 출력 -->
												<c:forEach items="${requestScope.list}" var="announcement" >
													<tr>
														<td bgcolor="">
															<p align="center">
																<span style="font-size: 12pt;"> <!-- 글번호 --> <b>${announcement.announcementNum}</b>
																</span>
															</p>
														</td>
														<td bgcolor="">
															<p align="center">
																<a href="/announcement/${announcement.announcementNum}">
																	<span style="font-size: 12pt;"> <!-- 제목 --> <b>${announcement.announcementTitle}</b>
																</span>
																</a>
															</p>
														</td>
														<td bgcolor="">
															<p align="center">
																<span style="font-size: 12pt;"> <!-- 작성일 --> <b>${announcement.announcementUpdate}</b>
																</span>
															</p>
														</td>
														<td bgcolor="">
															<p align="center">
																<span style="font-size: 12pt;"> <!-- 조회수 --> <b>${announcement.announcementCount}</b>
																</span>
															</p>
														</td>
													</tr>
												</c:forEach>


											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div align=center>

		<span style="font-size: 12pt;"> <input type="button"
			value="메인으로" onclick="location.href='/calendar'" class="charles_btn">
		</span>
		<!-- 관리자 로그인 상태일때만 활성화  -->
		<c:if test="${memberId == 'admin'}">
			<span style="font-size: 12pt;"> <input type="button"
				value="업로드" onclick="location.href='/announcement/insert'" class="charles_btn">
			</span>
		</c:if>
	</div>

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

</body>
</html>
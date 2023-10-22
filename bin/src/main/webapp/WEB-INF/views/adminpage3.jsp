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
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
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
<link rel="stylesheet" href="css/mypage.css" type="text/css">
<link rel="stylesheet" href="css/modal.css" type="text/css">

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.nice-select.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script src="/js/jquery.slicknav.js"></script>
<script src="/js/mixitup.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/main.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
</style>

</head>
<body>
	<!-- Page Preloder -->
	<!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<section class="breadcrumb-section set-bg"
		data-setbg="/static/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>마이페이지</h2>
					</div>
				</div>
			</div>
		</div>
	</section>


	<div class="container" style="padding: 0; width:1200px;">
		<div class="row">
			<div class="col-lg-12">
				<div style="display: flex; justify-content: center; align-items: center; margin-left:10px;">
					<div class="mypage-box" style="height: 700px;">
						<div class="mypage-item">
							<h3>문의 사항</h3>
							<!-- 내 정보 내용 추가 -->
							<a href="/adminpage1">문의사항 관리</a>
						</div>
						<div class="mypage-item">
							<h3>회원가입 신청</h3>
							<a href="/adminpage2">비즈니스 회원가입 신청 관리</a>
						</div>
						<div class="mypage-item">
							<h3>팝업스토어</h3>
							<a href="/adminpage3">팝업스토어 신청 페이지</a>
						</div>
					</div>
					<div class="card" style="display: flex; margin-left: 20px; max-height: 700px; overflow-x: hidden; width: 830px;">
						<table class="admintable table-striped mb-0"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 13pt;">
							<tr>
								<td bgcolor="#ff80c0" style="width:50px;" >
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">번호</span></b></font>
									</p>
								</td>
								<td bgcolor="#ff80c0"  style="width:260px;" >
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">작성자</span></b></font>
									</p>
								</td>
								<td bgcolor="#ff80c0"  style="width:150px;">
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">제목</span></b></font>
									</p>
								</td>

								<td bgcolor="#ff80c0" >
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">상태</span></b></font>
									</p>
								</td>
								<td bgcolor="#ff80c0"   style="width:200px;">
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;margin-left:-10px;">처리</span></b></font>
									</p>
								</td>
							</tr>
						</table>
						<table class="admintable table-striped mb-0 " style="max-height: 700px; overflow: auto;">
							<!-- 부서 객체 유무 검증 -->
							<c:if test="${empty requestScope.store}">
								<tr>
									<td colspan="5">
										<p align="center">
											<b><span style="font-size: 12pt;">문의가 존재하지 않습니다.</span></b>
										</p>
									</td>
								</tr>
							</c:if>
							<!-- 반복 출력 -->
							<c:forEach items="${store}" var="store">
								<tr>
									<td bgcolor="" style=" width:45px;">
										<p align="center">
											<span style="font-size: 12pt;"> <b>${store.storeNum}</b>
											</span>
										</p>
									</td>

									<td bgcolor="" style=" width:270px;">
										<p align="center">
											<span style="font-size: 12pt;">
												<b> ${store.memberCompanyName} </b>
											</span>
										</p>
									</td>
									<td bgcolor="" style=" width:150px;">
										<p align="center">
											<span style="font-size: 12pt; margin-right:10px;"> <a
												href="/storeManagement/${store.storeNum}"> <b>${store.storeTitle}</b></a>
											</span>
										</p>
									</td>


									<td bgcolor="" style="text-align: center;" >

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
									<td bgcolor="" style=" width:210px;">
										<p align="center">
											<span style="font-size: 12pt;"> <!-- 부서위치 -->
												<button data-user-id="${store.storeNum}" type="button"
													value="승인" class="appro">승인</button>
												<button data-user-id="${store.storeNum}" type="button"
													value="거부" class="deni">거부</button>
											</span>
										</p>
									</td>
								</tr>

							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>

  $(document).ready(function() {
    $('.appro').click(function() {
      const dropId = $(this).data("userId");
      console.log(dropId);
      const clickedButton = $(this); // 클릭한 버튼을 변수에 저장


      $.ajax({
        type: 'post',
        url: '<c:url value="storeApprove" />',
        data: {
          id: dropId,
        },
        success: function(data) {
          const row = clickedButton.closest('tr'); // 클릭한 버튼이 속한 행을 선택
          row.find('td:eq(3)').html('<span style="font-size: 12pt;"><b>승인</b></span>'); // 해당 행의 4번째 열에 "check"를 표시
        },
        error: function(status, error) {
          console.log(status, error);
        }
      });
    });

    $('.deni').click(function() {
      const dropId = $(this).data("userId");
      console.log(dropId);
      const clickedButton = $(this); // 클릭한 버튼을 변수에 저장

      $.ajax({
        type: 'post',
        url: '<c:url value="/storeDeny" />',
        data: {
          id: dropId,
        },
        success: function(data) {
        	 const row = clickedButton.closest('tr'); // 클릭한 버튼이 속한 행을 선택
             row.find('td:eq(3)').html('<span style="font-size: 12pt;"><b>거부</b></span>'); // 해당 행의 4번째 열에 "check"를 표시
        },
        error: function(status, error) {
          console.log(status, error);
        }
      });
    });
  });
</script>
</body>
</html>
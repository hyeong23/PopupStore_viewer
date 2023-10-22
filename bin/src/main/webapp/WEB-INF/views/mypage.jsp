<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="popup.dto.Member"%>
<!-- Member 객체 가져오기 -->
<%
	Member member = (Member) request.getAttribute("member");
%>

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
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">


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


</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container" >
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>마이페이지</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- content Begin -->
	<div class="col-lg-9" style="margin: 0 auto; padding: 0; margin-top:40px;">
		<div class="row">
			<div class="col-lg-12">
				<div
					style="display: flex; justify-content: center; align-items: center; margin-left: 20px;">
					
					<!-- Side bar -->
					<div class="mypage-box" style="background-color: #fff4fd; height: 600px; ">
						<div class="mypage-item" style="width: 200;" >
							<h3>My page</h3>
							<!-- 내 정보 내용 추가 -->
							<a href="/mypage" style="font-size : 10pt">내 정보 보기</a>
						</div>
						<div class="mypage-item" style="width: 200;" >
							<h3>My page more</h3>
							<!-- 내 정보 내용 추가 -->
							<a href="/mypageUpdate" style="font-size : 10pt">회원정보 수정 및 탈퇴</a>
						</div>
						<div class="mypage-item" style="width: 200;" >
							<h3>Like list</h3>
							<a href="/heart" style="font-size : 10pt">좋아요 목록 보기</a>
						</div>
					</div>

					<!-- Contents -->
					<div class="card" style="margin-left: 80px; width: 700px;">					
						<table class="table table-striped mb-0" style="text-align: center;">
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;"><b>ID</b></td>
								<td style="text-align: center;"width="500">${member.memberId }</td>
							</tr>
							<tr id="nicknameRow">
								<td style="background-color: #ff80c0; color: white"><b>닉네임</b></td>
								<td style="text-align: center;">${member.memberNickname}</td>
							</tr>
							<tr id="companyNameRow">
								<td style="background-color: #ff80c0; color: white"><b>업체명</b></td>
								<td style="text-align: center;">${member.memberCompanyName}</td>
							</tr>
							<tr id="companyNumRow">
								<td style="background-color: #ff80c0; color: white"><b>사업자
										번호</b></td>
								<td style="text-align: center;">${member.memberCompanyNum}</td>
							</tr>
							<tr >
								<td style="background-color: #ff80c0; color: white"><b>e-mail</b></td>
								<td style="text-align: center;">${member.memberEmail}</td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white"><b>유저타입</b></td>
								<td style="text-align: center;">
									<%-- memberType 값을 문자열로 변환 후 출력 --%> <%
 	String memberTypeString;
 switch (member.getMemberType()) {
 	case 0 :
 		memberTypeString = "관리자";
 		break;
 	case 1 :
 		memberTypeString = "일반";
 		break;
 	case 2 :
 		memberTypeString = "비즈니스";
 		break;
 	default :
 		memberTypeString = "";
 }
 out.println(memberTypeString);
 %> <input type="hidden" name="memberType"
									value="<%=member.getMemberType()%>">
								</td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white"><b>가입
										날짜</b></td>
								<td style="text-align: center;">${member.memberCreate}</td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white"><b>프로필
										최종 수정</b></td>
								<td style="text-align: center;">${member.memberUpdate}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
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

      <script>
		 // 비즈니스(2)로 로그인 시 닉네임 창 X, 관리자(0)및 일반회원(1)으로 로그인 시 사업자번호와 업체명 행 삭제
                    window.onload = function() {
                        var memberType = <%=member.getMemberType()%>;

                        if (memberType === 2) {
                            var nicknameRow = document.getElementById("nicknameRow");
                            nicknameRow.style.display = "none";
                        }

                        if (memberType === 0 || memberType === 1) {
                            var companyNumRow = document.getElementById("companyNumRow");
                            var companyNameRow = document.getElementById("companyNameRow");
                            companyNumRow.style.display = "none";
                            companyNameRow.style.display = "none";
                        }
                                               
                        
                    };
     </script>

</body>
</html>
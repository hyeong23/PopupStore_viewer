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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/css/style.css" type="text/css">
<link rel="stylesheet" href="css/mypage.css" type="text/css">
<link rel="stylesheet" href="css/mypageUpdate.css" type="text/css">


</head>
<body >
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



		<div class="row" style="display: flex; flex-direction: row; justify-content: center; width: 100%;margin:40px;">
			<div class="col-lg-12" >
				<div
					style="display: flex; justify-content: center; align-items: center;">
					<!-- Side bar -->
					<div class="mypage-box"
						style="background-color: #fff4fd;; height: 600px;">
						<div class="mypage-item" style="width: 200;">
							<h3>My page</h3>
							<!-- 내 정보 내용 추가 -->
							<a href="/mypage" style="font-size : 10pt">내 정보 보기</a>
						</div>
						<div class="mypage-item" style="width: 200;">
							<h3>My page more</h3>
							<!-- 내 정보 내용 추가 -->
							<a href="/mypageUpdate" style="font-size : 10pt">회원정보 수정 및 탈퇴</a>
						</div>
						<div class="mypage-item" style="width: 200;">
							<h3>Like list</h3>
							<a href="/heart" style="font-size : 10pt">좋아요 목록 보기</a>
						</div>
					</div>
					<div style="display: flex; flex-direction: column; margin-left:120px;">
					<form id="mypageUpdateForm" action="/mypageUpdate" method="POST" onsubmit="return confirmModification()">
						<table id="mypageUpdateTable" class="table mb-0" style="border-radius: 10px; border:2px solid #ececec">
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;">* 아이디</td>
								<td style="text-align: left;">${member.memberId }</td>
								<td>
								<input type="hidden" name="memberId" value="${member.memberId}">
								</td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;">* 새 비밀번호</td>
								<td style="text-align: left;">
								<input type="password"	name="memberPw" id="memberPw" value="" required style="width:200px;">
								</td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;">* 새 비밀번호 확인</td>
								<td style="text-align: left;">
								<input type="password"name="memberPwCheck" id="memberPwCheck" value="" required style="width:200px;"></td>
								<td id="errorMessage" style="color: red;">
								</td>
							</tr>

							<tr id="nicknameRow">
								<td style="background-color: #ff80c0; color: white; width:200px;">* 닉네임</td>
								<td style="text-align: left;">
								<input type="text" id="memberNickname" name="memberNickname" value="${member.memberNickname}" style="width:200px;">
								</td>
							</tr>
							<tr id="companyNameRow">
								<td style="background-color: #ff80c0; color: white; width:200px;">* 업체명</td>
								<td style="text-align: left;">
								<input type="text" id="memberCompanyName" name="memberCompanyName" value="${member.memberCompanyName}" readonly style="width:200px;">
								</td>
							</tr>
							<tr id="companyNumRow">
								<td style="background-color: #ff80c0; color: white; width:200px;">* 사업자번호</td>
								<td style="text-align: left;">
								<input type="text" id="memberCompanyNum" name="memberCompanyNum" value="${member.memberCompanyNum}" style="width:200px;">
								</td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;">* 이메일</td>
								<td style="text-align: left;padding-right:25px;" >
								<input type="text" name="memberEmail" value="${member.memberEmail}" style="width:200px;">
								</td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;">* 유저타입</td>
								<td style="text-align: left;">
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
 %>
								</td>
								<td><input type="hidden" name="memberType"
									value="<%=member.getMemberType()%>"></td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;">* 생성일</td>
								<td style="text-align: left;">${member.memberCreate}</td>
								<td><input type="hidden" name="memberCreate"
									value="${member.memberCreate}"></td>
							</tr>
							<tr>
								<td style="background-color: #ff80c0; color: white; width:200px;">* 수정일</td>
								<td style="text-align: left;">${member.memberUpdate}</td>
								<td><input type="hidden" name="memberUpdate"
									value="${member.memberUpdate}"></td>
							</tr>
							<tr>
								<td colspan="2" align="right">
									<div>
										<button type="submit" class="charles_btn" style="height: 47px; margin-top:5px;">정보수정</button>
										<button type="button" onclick="removeMember()" class="charles_btn2" style="height: 45px; margin-top:5px;">회원탈퇴</button>
									</div>
								</td>
							</tr>
						</table>
					</form>
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
                    
		function confirmModification() {
			var oldPassword = '<%=member.getMemberPw()%>';
		    var newPassword = document.getElementById('memberPw').value;

		    if (window.confirm("수정하시겠습니까?")) {
		        if (newPassword.trim() === '') {
		            alert('비밀번호를 입력해주세요.');
		            return false;
		        }
		        if (!checkPassword()) {
		            alert('비밀번호가 일치하지 않습니다.');
		            goToMyPage();
		            return false;
		        }
		        if (oldPassword === newPassword) {
		            alert('새 비밀번호가 기존 비밀번호와 동일합니다.');
		            return false;
		        }
		        if (newPassword.length < 8) {
		            alert('비밀번호는 최소 8자 이상이어야 합니다.');
		            return false;
		        }
		        document.getElementById("mypageUpdateForm").submit();
		        showCompletionMessage();
		    }
		}

		function showCompletionMessage() {
		    alert("수정이 완료되었습니다.");
		   window.location.href = "/mypage";
		}

		function checkPassword() {
		    var password = document.getElementById('memberPw').value;
		    var passwordCheck = document.getElementById('memberPwCheck').value;
		    var errorMessage = document.getElementById('errorMessage');

		    if (password !== passwordCheck) {
		        errorMessage.textContent = '비밀번호가 일치하지 않습니다.';
		        return false;
		    } else {
		        errorMessage.textContent = '';
		        return true;
		    }
		}

		function goToMyPage() {
		    location.assign("/mypageUpdate");
		}

                    function removeMember() {
                        if (window.confirm("탈퇴하시겠습니까?")) {
                            // 서버로 회원 탈퇴 요청
                            fetch('/deleteMember', {
                                method: 'POST',
                                credentials: 'same-origin' // 쿠키 정보를 함께 보냄
                            })
                            .then(response => {
                                if (response.ok) {
                                    // 탈퇴 성공 시 메인 페이지로 이동
                                    location.href = "/main";
                                } else {
                                    // 탈퇴 실패 시 에러 메시지 표시
                                    alert("회원 탈퇴 중 오류가 발생했습니다.");
                                }
                            })
                            .catch(error => {
                                console.error(error);
                                alert("회원 탈퇴 중 오류가 발생했습니다.");
                            });
                        }
                    }

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
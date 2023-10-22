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
<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/css/style.css" type="text/css">
<link rel="stylesheet" href="/css/list.css" type="text/css">
<link rel="stylesheet" href="/css/mypage.css" type="text/css">


</head>

<body>

	<!-- 검색 -->
	<div id="bbsList_header">


		<div class="filter-box"
			style="margin-top: -10px; margin-left: -30px; padding-bottom: 0px">
			<p>통합검색</p>
			<form action="/card/search" method="GET" name="searchForm">
				<div style="display:flex; flex-direction:row; padding-top: 20px; margin-top:-10px; margin-bottom:-5px;">	
		<input type="text" name="search" class="filter-input" style="width:140px; "> 
					<input type="submit" value="검색" class="filter-input" style="width:55px; margin-left:5px;">
		</div>
			</form>

		</div>


		<div id="filterBox">
			<form action="/card/filter" method="GET" id="filterForm">

				<div class="filter-box"
					style="margin-top: -10px; margin-left: -30px;">
					<ul>
						<li>
							<input type="checkbox" id = "allCheck" onclick = "allClick">
							<label>전체 선택</label>
						</li>
					</ul>
					
					<br>
					
					<div>
						<p>제목</p>
						<div class="filter-item" style="padding-top: 5px;overflow-x: hidden;
       									 text-overflow: ellipsis;
     								     white-space: nowrap;">
							<ul>
								<c:forEach items="${openStoreList}" var="openStoreList">
									<li><input type="checkbox" class="checkSub"
										id="storeTitle${openStoreList.storeNum}" name="storeTitle"
										value="${openStoreList.storeTitle}" checked="checked">
										<label for="storeTitle${openStoreList.storeNum}">${openStoreList.storeTitle}</label>
									</li>
								</c:forEach>
							</ul>
						</div>

					<%-- 	<p>브랜드</p>
						<div class="filter-item" style="padding-top: 5px;">
							<ul>
								<c:forEach items="${getBussinessMember}" var="member">
									<li style="list-style-type: none;"><input type="checkbox"
										id="memberCompanyName${member}" class="checkSub" name="memberCompanyName"
										value="${member}" checked="checked"> <label
										for="memberCompanyName${member}">${member}</label></li>
								</c:forEach>
							</ul>
						</div> --%>
					</div>



					<div>
						<select name="category" id="category" class="filter-item-select">
							<option value="select">카테고리 선택</option>
							<option value="character">캐릭터</option>
							<option value="media">미디어</option>
							<option value="food">식음료</option>
							<option value="fashion">패션</option>
							<option value="others">기타</option>
						</select>
					</div>

					<p>Loc</p>
					<div>
						<select name="storeLoc" id="storeLoc" class="filter-item-select">
							<c:forEach items="${location}" var="location">
								<option id="storeLoc" value="${location}">${location}</option>
							</c:forEach>
						</select>

					</div>

					<p>좋아요</p>
					<div id="store_stc" class="filter-item">

						<div id="store_chk">
							<input type="radio"  id="like0" name="heart" value=0
								checked="checked">전체
						</div>
						<div id="store_chk">
							<input type="radio" id="like1" name="heart" value=1>좋아요만
						</div>
					</div>

					<p>오픈 상태</p>
					<div id="store_stc" class="filter-item"
						style="flex-direction: column;">
						<div id="store_chk">
							<input type="radio" id="startDate0" name="startDate" value=0
								checked="checked">전체
						</div>
						<div id="store_chk">
							<input type="radio" id="startDate1" name="startDate" value=1>진행중
						</div>
						<div id="store_chk">
							<input type="radio" id="startDate2" name="startDate" value=2>진행
							예정
						</div>

					</div>

					<input type="submit" value="적용" class="filter-item"
						style="height: 35px; padding-left: 8px; padding-bottom: 5px;">
				</div>


			</form>
		</div>


	</div>
	<br />


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
$('#allCheck').click(function (){
	if($(this).is(":checked")){
		$(".checkSub").attr("checked", true);
	}else{
		$(".checkSub").attr("checked", false);
	}
});
</script>

</body>

</html>
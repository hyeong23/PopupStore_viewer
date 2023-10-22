<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/openStoreList[0].css" type="text/css">
    <link rel="stylesheet" href="/css/modal.css" type="text/css">
    
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/mixitup.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
	<!-- Modal -->
  		<div class="modal-container">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h2 class="modal-title" id="exampleModalCenterTitle">${openStoreList[0].storeTitle}</h2>
<!-- 	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button> -->
	      </div>
	      
<!-- 	      <div> <img src="images/singleimage.jpg" alt="about us" class="single-image"> </div> -->
	      <div class="modal-body">
	      
				<div class="slider">
				    <div class="bullets" id = "bullets${openStoreList[0].storeNum}">
				    
				    </div>
				    <ul id="imgholder${openStoreList[0].storeNum}" class="imgs">
				    
				    </ul>
				    
				    
	
				</div>	
		
				<div>
						<hr>
			        	<p> 작성자 : <c:if test="${empty openStoreList[0].memberCompanyName}">
			        	관리자
			        	</c:if>
			        	${openStoreList[0].memberCompanyName} <p>
			        	<p> 개최 기간: ${openStoreList[0].storeStart} ~ ${openStoreList[0].storeEnd} </p>
			        	<p> 개최 장소: ${openStoreList[0].storeLoc} </p>
						<hr>
			        	<p> ${openStoreList[0].storeIntro} </p>
						<hr>
			        	<div class="modal_bodytext">
					    	${openStoreList[0].storeBody}
						</div>
						<hr>
						<p> 조회수 : ${openStoreList[0].storeCount} </p>
			        	<p> <a href="${openStoreList[0].storeSite}" target="_blank" class="link">${openStoreList[0].storeSite} 홈페이지</a></p>
			        	<hr>
			        	<p> 작성일 : ${openStoreList[0].storeCreate} </p>
			        	<p> 마지막 수정일 : ${openStoreList[0].storeUpdate} </p>
				</div>
	      	 
	      
	      
            </div>
            </div>
			<div class="modal-replywindow">
            <div class="title">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	        <h2>댓글</h2>
                

      <form  method="POST" id="replyForm" name="replyInsertForm">  			 
                <div class="reply-send">
						<!-- hidden 영역 -->
  					      <input type="hidden" name="storeNum" value="${openStoreList[0].storeNum}">
   					      <input type="hidden" name="memberNum" value="${sessionScope.memberNum}">
     				   <!-- 입력 영역 -->    				
                      <div class="reply_textarea"><textarea placeholder="Your Reply" id="replyBody" name=replyBody></textarea></div> 
                      <div class="reply_sendBtn">
                      	<input type="submit" value="Send" class="reply-send-btn" id="send_message" name="replyInsertBtn"/>
                      </div>
                        
                    </div>
                    </form>
            </div>
<!--             <div class="close-area">X</div> -->
	    	</div>
	  
	  </div>
	
</body>
</html>
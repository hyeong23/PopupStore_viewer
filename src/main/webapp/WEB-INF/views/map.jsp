<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
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
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/map.css" type="text/css">
    <link rel="stylesheet" href="/css/modal.css" type="text/css">
    
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    
      <style>
   div.replyModal { position:relative; z-index:1; display:none}
   div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
   div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
   div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px; height:200px; }
   div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
   div.modalContent button.modal_cancel { margin-left:20px; }
</style> 
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   

    <!-- Header Section Begin -->
   <%@ include file="header.jsp" %>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>팝업스토어 지도</h2>
					</div>
				</div>
			</div>
		</div>
		
	</section>
    <!-- Hero Section End -->
    <div class="content" style="display:flex; justify-content:center; height: 800px;">
    <div style="display: flex; margin-top:20px; margin-left:-10px;">
    <%@ include file="mapFilter.jsp" %>
    </div>

  <div id="map" style="width:1245px;height:700px; margin-left: 45px; margin-top:20px; "></div>

  
</div>
<br><br><br><br><br>
    <!-- Footer Section Begin -->
    <div>
    	<%@ include file="footer.jsp" %>
    	</div>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/mixitup.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	
<%-- <div style="width: 500px; height: 500px; background-color: #a191a5">
	댓글리스트 
	<c:forEach items="${getReplyList}" var="reply" varStatus="vs">
		<p> ${reply.replyBody} </p>
	</c:forEach>
</div> --%>
<script>getList()</script>
	<!-- Modal -->
<div class="modal fade bd-example-modal-lg" id="exampleModalCenter" tabindex="-10" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		<div class="modal-dialog modal-lg" style="left:-150px;">
  		
  			<div class="modal-container">
  			
	    <div class="modal-content">
	      <div class="modal-header">
	        <h2 class="modal-title" id="exampleModalCenterTitle">${filterStoreList[2].storeTitle}</h2>

	      </div>
	      
	      <div class="modal-body">
	      
				<div class="slider">
				    <div class="bullets" id = "bullets${filterStoreList[2].storeNum}">
				    
				    </div>
				    <ul id="imgholder${filterStoreList[2].storeNum}" class="imgs">
				    
				    </ul>
				    
				    
	
				</div>	
		
				<div>
						<hr>
			        	<p class="body1"> 작성자 : <c:if test="${empty filterStoreList[2].memberCompanyName}">
			        	관리자
			        	</c:if>
			        	${filterStoreList[2].memberCompanyName} </p>
			        	<p class="body2"> 개최 기간: ${filterStoreList[2].storeStart} ~ ${filterStoreList[2].storeEnd} </p>
			        	<p class="body3"> 개최 장소: ${filterStoreList[2].storeLoc} </p>
						<hr>
			        	<p class="body4"> ${filterStoreList[2].storeIntro} </p>
						<hr>
			        	<div class="modal_bodytext">
					    	${filterStoreList[2].storeBody}
						</div>
						<hr>
						<p class="body5"> 조회수 : ${filterStoreList[2].storeCount} </p>
			        	<p class="body6"> <a href="${filterStoreList[2].storeSite}" target="_blank" class="link">${filterStoreList[2].storeSite} 홈페이지</a></p>
			        	<hr>
			        	<p class="body7"> 작성일 : ${filterStoreList[2].storeCreate} </p>
			        	<p class="body8"> 마지막 수정일 : ${filterStoreList[2].storeUpdate} </p>
						<div class="body9">
						<c:choose>
                                    	<%-- 로그인 했을때 --%>
                                    	<c:when test="${not empty sessionScope.memberNum}">     
                                    	 	<!-- 알람 -->
                          				<c:if test="${getStoreByAlarm.contains(filterStoreList[2].storeNum)}">
                                    		<img id="yellow${filterStoreList[2].storeNum}" alt="#"  src="/img/yellow.png"  onclick="deleteAlarm('${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt; position:absolute; right : 80px" >
                                    		<img id="bell${filterStoreList[2].storeNum}" alt="#" src="/img/bell.png" onclick="insertAlarm('${filterStoreList[2].storeNum}','${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt; display: none; position:absolute; right : 80px" >
										</c:if>
										<c:if test="${not getStoreByAlarm.contains(filterStoreList[2].storeNum)}">
                     						<img id="yellow${filterStoreList[2].storeNum}" alt="#"  src="/img/yellow.png"  onclick="deleteAlarm('${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt; display: none; position:absolute; right : 80px" >
                                    		<img id="bell${filterStoreList[2].storeNum}" alt="#" src="/img/bell.png" onclick="insertAlarm('${filterStoreList[2].storeNum}','${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt; position:absolute; right : 80px" >
                  						</c:if>
                                 			<!-- 좋아요 -->
										<c:if test="${getStoreByHeart.contains(filterStoreList[2].storeNum)}">
                                    		 <img id = "heart${filterStoreList[2].storeNum}" alt="#" src="/img/heart.png" onclick = "clickHeart('${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt;  display: none; position:absolute; right : 45px">	
             								 <img  id = "heartRed${filterStoreList[2].storeNum}" alt="#" src="/img/heartRed.png" onclick = "clickHeart('${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt; position:absolute; right : 45px">	
										</c:if>
										<c:if test="${not getStoreByHeart.contains(filterStoreList[2].storeNum)}">
                     						<img id = "heart${filterStoreList[2].storeNum}" alt="#" src="/img/heart.png" onclick = "clickHeart('${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt; position:absolute; right : 45px">	
             							 	 <img  id = "heartRed${filterStoreList[2].storeNum}" alt="#" src="/img/heartRed.png" onclick = "clickHeart('${filterStoreList[2].storeNum}')" style="width: 23pt; height: 23pt; display: none; position:absolute; right : 45px">	
                  						</c:if>	
                                    	</c:when>
                                    	<%-- 로그인 안했을때 --%>
                                    	<c:otherwise>
                                    		<img class = "bell" id = "bell" alt="#" src="/img/bell.png" onclick = "notLogin()"   style="width: 23pt; position:absolute; height: 23pt; right : 80px">
                                    		<img class = "heart" id = "heart" alt="#" src="/img/heart.png" onclick = "notLogin()"  style="width: 23pt; position:absolute; height: 23pt;  right : 45px">	   
                                  	    </c:otherwise>

                		</c:choose>
			        	</div>
			        	
				</div>

	      	 
	      
	      
            </div>
           </div>
            
		<div class="modal-replywindow">
		            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
            <div class="title">

                
                <div  class="reply-list" style="padding:10px;">
		      
		      <script> 
		        //location.reload();
		      	replyView();
				</script>
      
      </div>
			<form role="form" method="POST" id="replyForm" autocomplete="off"> 
               <div class="reply-send">
               		<input type="hidden" name="storeNum" id="storeNum" value="">
                	<c:if test="${empty sessionScope.memberId}">
					  <p><br><br><br>댓글을 작성하려면 <a href="/login">로그인</a>해주세요</p>
					</c:if>
               		<c:if test="${not empty sessionScope.memberId}">
  
						<!-- hidden 영역 -->
   					    <input type="hidden" name="memberNum" id="memberNum2" value="${sessionScope.memberNum}">
     				   <!-- 입력 영역 -->    				
                      <div class="reply_textarea" style="margin-top:-1px; margin-left:-1px; height: 102px;"><textarea placeholder="내용을 입력하세요" name="reply" id="reply"></textarea></div> 
                      <div class="reply_sendBtn"><button type="button" class="reply-send-btn" id="send_message">댓글 입력</button></div>
                    </c:if>
  
                    </div>
                      </form>  
            </div>
<!--             <div class="close-area">X</div> -->
	    	</div>
	    	
	    	
	    	<div class="replyModal">

   <div class="modalContent">
      <h2>수정</h2>
    <div>
     <textarea class="modal_repCon" name="modal_repCon"></textarea>
    </div>
    
    <div>
     <button type="button" class="modal_modify_btn">수정</button>
     <button type="button" class="modal_cancel">취소</button>
    </div>
    
   </div>

   <div class="modalBackground"></div>
   
</div>
	  
	  </div>
		</div>
	</div>

</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=690096255b88e30ead8c02ac790dd149&libraries=services">
	</script>
	
	
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	<c:forEach items="${filterStoreList}" var="map" varStatus="vs">

	var address = '${map.storeLoc}';
	
	var geocoder = new kakao.maps.services.Geocoder();
	
	var callback = function(result, status) {
	if (status === kakao.maps.services.Status.OK) {
	    console.log(result);
	    
	    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	    
	    // 결과값으로 받은 위치를 마커로 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: coords
	    });
	    
	    
	 	// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	    map.setCenter(coords);
	}
	
	
	
	var content = '<div class="wrap">' + 
	'    <div class="info">' + 
	//'		<a href="#" onclick = "startModal(' + ${vs.index} + ", " + ${map.storeNum} + ')">' +
	'		<a href="javascript:void(0);" onclick="startModal(' + ${vs.index} + ", " + ${map.storeNum} + ')">' +
	'        <div class="title">' + 
	'			<div class="storeTitle">'	+
	'				${map.storeTitle}' + 
	'			</div>'				+
	'		</a>				' +
	'            <div class="close" id="${map.storeNum}" title="닫기"></div>' + 
	'        </div>' + 
	'        <div class="body">' + 
	'            <div class="img">' +
	'                <img src="/project_image/${map.pictureName}" width="73" height="70" alt = "img">' +
	'        </div>' + 
	'        <div class="desc">' + 
	'                <div class="ellipsis">' + '${map.storeLoc}' + '</div>' + 
	'                <div class="ellipsis">' + '${map.storeLocDetail}' + '</div>' + 
	'                	<div class="jibun ellipsis">' + '${map.storeStart}' + "~" + '${map.storeEnd}' + '</div>' + 
	'                <div><a href="${map.storeSite}" target="_blank" class="link">${map.storeTitle} 홈페이지</a></div>' + 
	'        </div>' + 
	'        </div>' + 
	'    </div>' +    
	'</div>';

		
		
	var overlay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: marker.getPosition()       
	});
	
	
	var close = document.getElementById('${map.storeNum}')
	console.log(close);
	close.addEventListener('click', function() {
		console.log(close.id);
		overlay.setMap(null);  
	});
	
	kakao.maps.event.addListener(marker, 'click', function() {
	    overlay.setMap(map);
	});
	 	
	function closeOverlay() {
	    overlay.setMap(null);     
	}
	
	};
	
	
	
	geocoder.addressSearch(address, callback);
	
	

	

	</c:forEach>
</script>
 
<script>
var item;
var myModal = new bootstrap.Modal(document.getElementById('exampleModalCenter'), {
	  keyboard: false
	});
function startModal(index, sNumber){
	
	indexupdate(index);
  	modalClick(sNumber);
  	replyView(sNumber);
  	myModal.show();
}
function getList(){
	item = Array();
	<c:forEach items="${filterStoreList}" var="store">
		item.push({memberNum:"${store.memberNum}",
			memberCompanyName:"${store.memberCompanyName}",
			memberNickname:"${store.memberNickname}",
							storeNum:"${store.storeNum}",
							storeTitle:"${store.storeTitle}",
							storeIntro:"${store.storeIntro}",
							storeBody: `<c:out value="${store.storeBody}" />`,
							storeStart:"${store.storeStart}",
							storeEnd:"${store.storeEnd}",
							storeFavorite:"${store.storeFavorite}",
							storeLoc:"${store.storeLoc}",
							storeLocDetail:"${store.storeLocDetail}",
							storeSite:"${store.storeSite}",
							storeCount:"${store.storeCount}",
							storeStatus:"${store.storeStatus}",
							storeCreate:"${store.storeCreate}",
							storeUpdate:"${store.storeUpdate}",
							pictureNum:"${store.pictureNum}",
							pictureName:"${store.pictureName}"})
	</c:forEach>
}
function indexupdate(indexNum){
	var picturecon = "";
	//console.log(item[indexNum].storeNum)
	//document.getElementById("exampleModalCenterTitle").innerHTML = item[indexNum].storeTitle;
	$(".modal-title").html(item[indexNum].storeTitle);
	//$(".bullets").attr("id", "bullets" + item[indexNum].storeNum);
	//$(".imgs").attr("id", "imgholder" + item[indexNum].storeNum);
	$("#storeNum").attr("value", item[indexNum].storeNum);
	//$("#storeNum2").val("value2");
	//<input type="hidden" name="storeNum" id="storeNum" value="num">
	$(".body1").html("작성자 : <c:if test='${ empty " + item[indexNum].memberCompanyName + "}'> 관리자 </c:if>" + item[indexNum].memberCompanyName);
	$(".body2").html("개최 기간:  " + item[indexNum].storeStart + " ~ " + item[indexNum].storeEnd);
	$(".body3").html("개최 장소:  " + item[indexNum].storeLoc);
	$(".body4").html(item[indexNum].storeIntro);
	$(".modal_bodytext").html(item[indexNum].storeBody);
	$(".body6").html("<a href='" + item[indexNum].storeSite +"' target='_blank' class='link'>" + item[indexNum].storeSite + "홈페이지</a>");
	$(".body7").html("작성일 :  " + item[indexNum].storeCreate);
	$(".body8").html("마지막 수정일 : " + item[indexNum].storeUpdate); 
	picturecon += "<div class='bullets' id = 'bullets" + item[indexNum].storeNum + "'>"
    + "</div>"
    + "<ul id='imgholder" + item[indexNum].storeNum + "' class='imgs'>"
    + "</ul>"
    +  "</div>";
     $(".slider").html(picturecon);
	

     
     
}
function modalClick(storeNum){
	// 현재 map의 storeNum의 번호가 안바뀜
	// 클릭 시 해당 storeNum
      //alert('작동확인');
	// 1을 우선 예시로 사용하는 중
	axios.get('http://localhost:8081/api/map/' + storeNum)
	.then(response => {
		var pictureData = response.data;
		console.log(pictureData);
		for(var i = 0; i < pictureData.length; i++){
			var getPictureName = pictureData[i].pictureName;
			var showPicture = document.querySelector('#imgholder' + pictureData[i].storeNum);
			console.log(getPictureName);
			var li = document.createElement("li");
			var picture = document.createElement("img");
			picture.src = "/project_image/" + getPictureName;
			
			if (showPicture.children.length < pictureData.length) {
		        
				li.appendChild(picture);
				showPicture.appendChild(li);
				
				// 추가는 되는데 1번 위치에서만 추가됨
			 	var slideId = "slide" + (showPicture.children.length);
		        var bulletLabel = document.createElement("label");
		        bulletLabel.htmlFor = slideId;
		        bulletLabel.innerHTML = "&nbsp;";

		        var bullets = document.querySelector('#bullets' + pictureData[i].storeNum);
/* 				        bullets.appendChild(bulletLabel); */

		        var slideInput = document.createElement("input");
		        slideInput.type = "radio";
		        slideInput.name = "slide" + storeNum.toString();
		        slideInput.id = slideId;
		        if(i == 0){
			        slideInput.checked = true;	        	
		        }
		        bullets.parentNode.insertBefore(slideInput, bullets);

		        
			}
			
		};
		
	})
	
	
	
}
function replyView(snum){
	 $.getJSON("/getreply" + "?number=" + snum, function(data){
	  var str = "";
	  
	  
	  $(data).each(function(){
	   
	   console.log(data);
	   
	   var repDate = new Date(this.replyUpdate);
	   repDate = repDate.toLocaleDateString("ko-US");
	   var memberName = this.memberNickname ? this.memberNickname : this.memberCompanyName;
	   str += "<div class='reply-each'>"
		     + "<div style='display:flex; flex-direction:column;'>"
		     + "<div>"
			 + "<input type='hidden' name='memberNum' id='memberNum' value='" + this.memberNum + "''>"
			 + "<div style='display:flex; flex-direction:row;  justify-content: space-between; margin-top:10px;'>"
		     + "<p>" + memberName + "<p>"
		     + "<p>" + repDate + "<p>"
		     + "</div>"
		     + "<p class='reply-text' style='width:255px; height:auto; '>" + this.reply + "<p>"	     
		     + "</div>"
		     + "<c:if test='${not empty sessionScope.memberId}'>"
		     + "<div class='replyFooter' style='display:flex; flex-direction:row; justify-content:flex-end; margin-top:5px;'>"
		     + "<button type='button' class='modify' style='width:50px;' data-replyNum='" + this.replyNum + "' data-memberNum='" + this.memberNum + "'>수정</button>"
		     + "<button type='button' class='delete'style='width:50px;' data-replyNum='" + this.replyNum + "'>삭제</button>"
		     + "</div>"
		     + "</div>"
		 	 + "</c:if>";
		  });
	  
	  $(".reply-list").html(str);
	 });
}
 $(document).on("click", ".delete", function(){
	    var deletConfirm = confirm("정말로 삭제할건가요?");
	    if(deletConfirm) {
		    var data = {replyNum : $(this).attr("data-replyNum")};
		     
		    $.ajax({
		     url : "/deletereply",
		     type : "post",
		     data : data,
		     success : function(result){
		    	   
		    	   if(result == 1) {
		    	    replyView($('#storeNum').attr('value'));
		    	   }
		    	   else if(${empty sessionScope.memberId}){
		    		   alert("로그인을 하셔야합니다.");  
		    	   }
		    	   else {
		    	    alert("작성자 본인만 할 수 있습니다.");       
		    	   }
		    	},
		    	error : function(){
		    	  alert("로그인을 하셔야합니다.");
		    	}
		    });
	    }
	   });
//var memberNum;
   $(document).on("click", ".modify", function(){
	   //$(".replyModal").attr("style", "display:block;");
	   $(".replyModal").fadeIn(200);
	   
	   var replyNum = $(this).attr("data-replyNum");
	   var reply = $(this).parent().parent().children(".reply-text").text();
	   //var reply2 = $(this).parent().parent().children("#memberNum").val();
	   var memberNum = $(this).attr("data-memberNum");

	   
	   $(".modal_repCon").val(reply);
	   $(".modal_modify_btn").attr("data-memberNum", memberNum);
	   $(".modal_modify_btn").attr("data-replyNum", replyNum);
	   
	});
   $(document).on("click", "#send_message", function(){
   //$("#send_message").click(function(){
	    
	    var formObj = $("#reply-send");
	    var storeNum = $("#storeNum").val();
	    var memberNum = $("#memberNum2").val();
	    var reply = $("#reply").val();
	    
	    var data = {
	      storeNum : storeNum,
	      reply : reply,
	      memberNum : memberNum
	      };
	    
	    $.ajax({
	     url : "/insertreply",
	     type : "post",
	     data : data,
	     success : function(){
	      replyView($('#storeNum').attr('value'));
	      $("#reply").val("");
	     }
	    });
	   });
   $(document).on("click", ".modal_modify_btn", function(){
		   var modifyConfirm = confirm("정말로 수정하시겠습니까?");
		   
		   if(modifyConfirm) {
		    var data = {
		       replyNum : $(this).attr("data-replyNum"),	
		       memberNum : $(this).attr("data-memberNum"),
		       reply : $(".modal_repCon").val()
		      };  // ReplyVO 형태로 데이터 생성
		    
		    $.ajax({
		     url : "/modifyreply",
		     type : "post",
		     data : data,
		     success : function(result){
		      
		      if(result == 1) {
		       replyView($('#storeNum').attr('value'));
		       $(".replyModal").fadeOut();
		      }
   		   	else if(${empty sessionScope.memberId}){
	    		   alert("로그인을 하셔야합니다.");  
	    	   }
		      else {
		       alert("작성자 본인만 할 수 있습니다.");         
		      }
		     },
		     error : function(){
		      alert("로그인하셔야합니다.")
		     }
		    });
		   }
		   
		});
   $(document).on("click", ".modal_cancel", function(){
   //$("#modal_can").click(function(){
	     //$(".replyModal").attr("style", "display:none;");
	     $(".replyModal").fadeOut();
	  });
 
	  getList();
</script>

<script>
	function insertAlarm(storeNum, storeTitle) {
	    // AJAX 요청을 사용하여 컨트롤러 실행
	    alert("insertAlarm")
	    $.ajax({
	        url: '/api/insertAlarm',
	        type: 'POST',
	        data: {
	            storeNum: storeNum,
	            storeTitle: storeTitle
	        },
	        success: function(response) {
	        	alert("삽입")
	            // 이미지 속성 변경
	            	const bellId = "bell" + storeNum.toString();
	            	const yellowId = "yellow" + storeNum.toString();
	            	document.getElementById(bellId).style.display = "none";
	            	document.getElementById(yellowId).style.display = "block";
              
	        },
	        error: function() {
	            alert("error");
	        }
	    });
	}
	function deleteAlarm(storeNum) {
	    // AJAX 요청을 사용하여 컨트롤러 실행
	    $.ajax({
	        url: '/api/deleteAlarm',
	        type: 'POST',
	        data: {
	            storeNum: storeNum
	        },
	        success: function(response) {
	        	alert("삭제")
	           const bellId = "bell" + storeNum.toString();
	           const yellowId = "yellow" + storeNum.toString();
	          document.getElementById(bellId).style.display = "block";
	          document.getElementById(yellowId).style.display = "none";
	          
	        },
	        error: function() {
	            alert("error");
	        }
	    });
	}
 </script>
<script>
function clickHeart(storeNum){
	alert(storeNum);
	$.ajax({
		url : "/api/like",
		type : 'post',
		data : {
			storeNum : storeNum,
		},
		success : function(response) {
			if(response == true){
				alert("삽입")
				const heartId = "heart" + storeNum.toString();
				const heartRedId = "heartRed" + storeNum.toString();
				document.getElementById(heartId).style.display = "none";
				document.getElementById(heartRedId).style.display = "block";
			}else{
				alert("삭제")
				const heartId = "heart" + storeNum.toString();
				const heartRedId = "heartRed" + storeNum.toString();
				document.getElementById(heartId).style.display = "block";
				document.getElementById(heartRedId).style.display = "none";
			}
	     },
		error : function(data) {
			alert("error");
		}
	});
}
	function notLogin(){
					alert("로그인 후 이용바랍니다.")
}
</script>




</html>
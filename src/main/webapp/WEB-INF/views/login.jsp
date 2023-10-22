<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
        <!-- Font online-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      
<!--        Animate.css-->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
                
                                
       
        
        <!-- Google JQuery CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
       <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
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
    <link rel="stylesheet" href="css/main.css" type="text/css" >

    </head>
    <body>
    <!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->
        <div>
           <div class="panel shadow1">
                <form action="/login" class="login-form" method="POST">
                    
                    <h1 class="animated fadeInUp animate1" id="title-login"  style="margin-block: 100px">Welcome</h1>
                    
                    <fieldset id="login-fieldset">
                        <input class="login animated fadeInUp animate2" name="memberId" id="username" type="text"  required   placeholder="Username" value="" >
                        <input class="login animated fadeInUp animate3" name="memberPw" id="password" type="password" required placeholder="Password" value="">
                    </fieldset>
                    
                    <input type="submit" id="login-form-submit" class="login_form button animated fadeInUp animate4" value="Log in" style=" margin-top: 70px;">
                     
                   
                    <p><br><a id="register-link" href="/register" class="animated fadeIn animate5" style="color:white;">register</a></p>
                    
                </form>
            </div>
        </div>
      
      
      
      
      
      <script>
  $(document).ready(function() {
    // 로그인 폼이 제출되었을 때의 이벤트 핸들러
    $('.login-form').submit(function(event) {
      // 기본 제출 동작 막기
      event.preventDefault();

      // 폼 데이터 가져오기
      const formData = {
        memberId: $('#username').val(),
        memberPw: $('#password').val()
      };

      // AJAX 요청 보내기
      $.ajax({
        type: 'GET',
        url: '/api/login', // 로그인 요청 URL (서버에 맞게 변경해주세요)
        data: formData,
        success: function(response) {
          // 서버의 응답 처리
          if (response === true) {
        	  $('.login-form').unbind('submit').submit();
          } else {
            // 로그인 실패 시, 아이디나 비밀번호가 틀렸음을 알리는 alert 출력
            alert('아이디 또는 비밀번호가 잘못되었습니다.');
          }
        },
        error: function() {
          // AJAX 요청 실패 시 에러 처리
        	 alert('아이디 또는 비밀번호가 잘못되었습니다.');
        }
      });
    });
  });
</script>
      
      
      
      
    </body>
</html>
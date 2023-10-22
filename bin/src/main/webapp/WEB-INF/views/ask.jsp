<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    
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
   <%@ include file="header.jsp" %>
    <!-- Header Section End -->
    
  <section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg"  style="margin-bottom:30px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>문의하기</h2>
					</div>
				</div>
			</div>
		</div>
		
	</section>

    <!-- Contact Form Begin -->
    <div class="contact-form spad" style="margin-bottom:-50px;">
        <div class="container">
            
            <form action="/ask" method="POST">
                <div class="row">
                    <div class="col-lg-12 col-md-6">
                        <input type="text" placeholder="답신받을 이메일을 입력하세요" name="askEmail" id="askEmail">
                    </div>
                    <div class="col-lg-12 col-md-6">
                        <input type="text" placeholder="문의 제목을 입력하세요" name="askTitle" id="askTitle" >
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea placeholder="문의 내용을 입력하세요" name="askBody" id="askBody" ></textarea>
                        <div id="ask_stc">
                        	<div id="ask_stc1">개인정보 수집 및 이용 약관에 동의합니다</div>
                        	<div id="ask_chk"><input type="checkbox" id="check1"> </div>                    
                          </div>
                        <input type="submit" value="문의 보내기" class="charles_btn" id="send_message" style="color:white; width: 100%;"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->

    <!-- Footer Section Begin -->
    <%@ include file="footer.jsp" %>
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
    <script>
  $(document).ready(function() {
    // 버튼 클릭 이벤트 처리
    $('#send_message').on('click', function(event) {
      if (!$('#check1').is(':checked')) {
        // 체크되지 않은 상태에서 버튼 클릭 시 동작
        alert('이용 약관에 동의해주세요');
        event.preventDefault(); // submit 동작 막기
      }
    });
  });
</script>



</body>

</html>
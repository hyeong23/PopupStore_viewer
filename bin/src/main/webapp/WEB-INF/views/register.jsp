<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
        <!-- Font online-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
        
      
<!--        Animate.css-->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
                
                                
        <link rel="stylesheet" href="css/main.css" >
        
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

    </head>
    <body>
    <!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->
        <div>
           <div class="panel shadow1">
                <form  class="login-form" >
                    
                    <h1 class="animated fadeInUp animate1" id="title-login" style="margin-block: 70px">Register</h1>
                    
                   
                    
                    <input type="button" id="register-form-submit" class="login_form button animated fadeInUp animate2" value="general" onclick="location.href='/general'" style=" margin-top: 70px;"> 
                    
                    
                    <input type="button" id="register-form-submit" class="login_form button animated fadeInUp animate2" value="business" onclick="location.href='/business'" style=" margin-top: 70px;">
					
					 <p><br><br><a id="login-link" href="/login" class="animated fadeIn animate5" style="color:white;'">back to login</a></p>
					
                </form>
            </div>
        </div>
      
    </body>
</html>
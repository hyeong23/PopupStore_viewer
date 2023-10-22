<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
        <!-- Font online-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      
<!--        Animate.css-->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
                
                                
        <link rel="stylesheet" href="css/main.css" >
        <link rel="stylesheet" href="css/axios.css">
        
        <!-- Google JQuery CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
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
                <form action="/general" class="login-form" method="POST" onsubmit = "return formChecking()" style="height: 750px;">
                    
                   <h1 class="animated fadeInUp animate1" id="title-login">General</h1>
                    
                    <fieldset id="login-fieldset">
                        <input class="login animated fadeInUp animate1" name="memberId" id="memberid" type="text"  required   placeholder="ID" value="" >
                        	<br/>
                        		<span class=login_id id = "memberIdMsg" style="font-size:8pt"></span>
                        	<br/>
                        <input class="login animated fadeInUp animate2" name="memberPw" id="password" type="password" required placeholder="Password" value="">
	                        <br/>
	                        	<span class=login_pw id = "memberPwMsg" style="font-size:8pt"></span>
	                        <br/>
                        <input class="login animated fadeInUp animate3" name="memberEmail" id="memberEmail" type="text"  required   placeholder="Email" value="" >
	                        <br/>
	                        	<span class=login_email id = "memberEmailMsg" style="font-size:8pt"></span>
	                        <br/>
                        <input class="login animated fadeInUp animate4" name="memberNickname" id="memberNickname" type="text"  required   placeholder="Nickname" value="" >
	                    	<br/>
	                    		<span class=login_nick_name id = "memberNicknameMsg" style="font-size:8pt"></span>
	                    	<br/>
	                      <input class="login animated fadeInUp animate5" name="memberPhoneNum" id="memberPhoneNum" type="number"  required   placeholder="Phone Number" >
                   			<br/>
                   				<div class="login animated fadeInUp animate5">
	                        		<span class=login_phone_input_num id = "memberPhoneNumMsg2" style="font-size:8pt"></span>                    			
                   				</div>
                        		<span class=login_phone_num id = "memberPhoneNumMsg" style="font-size:8pt"></span>
                    </fieldset>
                    
                    <input type="submit" id="login-form-submit" class="login_form button animated fadeInUp animate4" value="SIGN UP" style="margin-top: 20px;">
                     
                    <p><br><a id="login-link" href="/register" class="animated fadeIn animate5" style="color: white;">back to register</a></p>
                    
                </form>
            </div>
        </div>
      
   
    <script type="text/javascript">
	
    var checkId = 0;
    var checkEmail = 0;
    var checkNickname = 0;
    var checkPhoneNum = 0;
    
 	const inputMemberId = document.getElementById('memberid'); //객체생성
	const memberIdMsg = document.getElementById("memberIdMsg");
	inputMemberId.addEventListener('blur', () => {
		if(inputMemberId.value == "" || inputMemberId.value == null){
			checkId = 0;
			memberIdMsg.innerHTML = '';
		}else{
			axios.get('http://localhost:8081/api/member/' + inputMemberId.value)
				.then(response => {
					console.log(response.data);
					if(response.data == true){
						checkId = 0;
						memberIdMsg.innerHTML = '중복된 아이디입니다.';
					}else{
						checkId = 1;
						memberIdMsg.innerHTML = '사용가능한 아이디입니다.';
					}
				
			})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
			.catch(error => {
				memberIdMsg.innerHTML = error.response.data;
			})
		}});
	
	const inputPassword = document.getElementById('password'); //객체생성
	const memberPwMsg = document.getElementById("memberPwMsg");
	
	inputPassword.addEventListener('blur', () => {
		if(inputPassword.value == "" || inputPassword.value == null){
			checkPw = 0;
			memberPwMsg.innerHTML = '';	
		}else if(inputPassword.value.length < 8){
			checkPw = 0;
			memberPwMsg.innerHTML = '8자리 이상의 비밀번호를 적어주십시오.';
		}else if(inputPassword.value.length >= 8){
			checkPw = 1;
			memberPwMsg.innerHTML = '';
		}
	});
	
	const inputMemberEmail = document.getElementById('memberEmail'); //객체생성
	const memberEmailMsg = document.getElementById("memberEmailMsg"); 
	inputMemberEmail.addEventListener('blur', () => {
		if(inputMemberEmail.value == "" || inputMemberEmail.value == null){
			checkEmail = 0;
			memberEmailMsg.innerHTML = '';	
		}else if(inputMemberEmail.value.indexOf("@") == -1 && inputMemberEmail.value.indexOf(".com") == -1){
			checkEmail = 2;
			memberEmailMsg.innerHTML = '이메일 양식에 맞춰서 적어주십시오.'
		}else{axios.get('http://localhost:8081/api/email/' + inputMemberEmail.value)
			.then(response => {
				console.log(response.data);
				if(response.data == true){
					checkEmail = 0;
					memberEmailMsg.innerHTML = '중복된 이메일입니다.';
				}else{
					checkEmail = 1;
					memberEmailMsg.innerHTML = '사용가능한 이메일입니다.';
				}
		})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
		.catch(error => {
			memberEmailMsg.innerHTML = error.response.data;
		})
		}});
	
	const inputMemberNickname = document.getElementById('memberNickname'); //객체생성
	const memberNicknameMsg = document.getElementById("memberNicknameMsg"); 
	inputMemberNickname.addEventListener('blur', () => {
		if(inputMemberNickname.value == "" || inputMemberNickname.value == null){
			checkNickname = 0;
			memberNicknameMsg.innerHTML = '';
		}else{
		axios.get('http://localhost:8081/api/nickname/' + inputMemberNickname.value)
			.then(response => {
				console.log(response.data);
				if(response.data == true){
					checkNickname = 0;
					memberNicknameMsg.innerHTML = '중복된 닉네임입니다.';
				}else{
					checkNickname = 1;
					memberNicknameMsg.innerHTML = '사용가능한 닉네임입니다.';
				}
		})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
		.catch(error => {
			memberNicknameMsg.innerHTML = error.response.data;
		})
		}});
	
	
	const inputMemberPhoneNum = document.getElementById('memberPhoneNum'); //객체생성
	const memberPhoneNumMsg = document.getElementById("memberPhoneNumMsg"); 
	const memberPhoneNumMsg2 = document.getElementById("memberPhoneNumMsg2");
	memberPhoneNumMsg2.innerHTML = '숫자로 입력해주십시오.';
	inputMemberPhoneNum.addEventListener('blur', () => {
		if(inputMemberPhoneNum.value == "" || inputMemberPhoneNum.value == null){
			checkPhoneNum = 0;
			memberPhoneNumMsg.innerHTML = '';	
		}else{axios.get('http://localhost:8081/api/phoneNum/' + inputMemberPhoneNum.value)
			.then(response => {
				console.log(response.data);
				if(response.data == true){
					checkPhoneNum = 0;
					memberPhoneNumMsg.innerHTML = '이미 존재하는 전화번호 입니다.';
					memberPhoneNumMsg2.innerHTML = '';
				}else{
					checkPhoneNum = 1;
					memberPhoneNumMsg.innerHTML = '사용가능합니다.';
					memberPhoneNumMsg2.innerHTML = '';
				}
		})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
		.catch(error => {
			memberPhoneNumMsg.innerHTML = error.response.data;
		})
		}});	
	
	
	
	
	function formChecking(){
		if(checkId == 0){
			alert("중복된 아이디입니다. 다시 입력해주십시오.")
			return false;		
		}
		if(checkEmail == 0){
			alert("중복된 이메일입니다. 다시 입력해주십시오.")
			return false;		
		}else if(checkEmail == 2){
			alert("이메일의 양식에 맞춰서 입력해주십시오.")
			return false;
		}if(checkNickname == 0){
			alert("중복된 닉네임입니다. 다시 입력해주십시오.")
			return false;		
		}if(checkPhoneNum == 0 ){
			alert("중복된 전화번호입니다. 다시 입력해주십시오.")
			return false;		
		}if(checkPw == 0){
			alert("비밀번호를 8자리 이상 입력해주십시오.")
			return false;
		}		
		
		return true;
	};
	
	
	
	
	
	</script>




	
    </body>
    
    
    
</html>
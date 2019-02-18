<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<style>
    /*회원가입박스 모듈*/
	#registerbox{
		border: #D4D4D4 1px solid;
		background: #FBFBFB;
	}
    /*박스모듈 내 잠금장치 이미지*/
	.box-logo{
		width: 100px;
		height: 100px;
		margin-top: 40px;
		margin-bottom: 50px;
	}
	
    /*아이콘포함인풋박스*/
	.inputWithIcon{
		position: relative;
	}
    /*아이콘포함인풋박스 내부 input태그 속성*/
	.inputWithIcon input[type=text], input[type=password]{
		padding-left: 40px;
	}
    /*아이콘포함인풋박스 내부 input태그 포커싱*/
	.inputWithIcon input[type=text]:focus, input[type=password]:focus{
		border-color: dodgerBlue;
		box-shadow: 0 0 8px 0 dodgerBlue;
	}
    /*아이콘포함인풋박스 내부 input태그 포커싱 상태일때 아이콘*/
	.inputWithIcon input[type=text]:focus + i, input[type=password]:focus + i{
		color:dodgerBlue;
	}
	/*아이콘포함인풋박스 placeholder*/
	.inputWithIcon input::placeholder {
	  color: #aaa;
	}
	/*아이콘포함인풋박스 아이콘 속성*/
	.inputWithIcon i{
		position: absolute;
		top: 0px;
		font-size: 20px;
		padding: 9px 8px;
		color: #aaa;
	}
    /*아이콘포함인풋박스 내 아이콘 백그라운드*/
    .inputWithIcon.inputIconBg i{
        background-color: #aaa;
        color: #fff;
        padding: 9px 10px;
        border-radius: 5px 0 0 5px;
    }
    /*아이콘포함인풋박스 내 아이콘 백그라운드 포커싱*/
    .inputWithIcon.inputIconBg input[type=text]:focus + i, input[type=password]:focus + i{
        color: #fff;
        background-color: dodgerblue;
    }
    
    /*reCAPTCHA*/
    .recaptcha-wrapper {
        min-height: 108px;
        padding-top: 10px;
        width: 310px;
        margin: auto;
    }

    /*구글버튼*/
    .btn.btn-google-plus{
        font-size: 17px;width:100%;color: #fff;margin-bottom: 1em;
        background-color: #be3b26; border-color: #be3b26; -webkit-box-shadow: 0 3px 0 #842719; box-shadow: 0 3px 0 #842719;
    }
    /*페이스북버튼*/
    .btn.btn-facebook{
        font-size: 17px;width:100%;color: #fff;margin-bottom: 1em;
        background-color: #2479b6; border-color: #2479b6; -webkit-box-shadow: 0 3px 0 #1c6394; box-shadow: 0 3px 0 #1c6394;
    }
    
    /*인풋박스 호버/포커싱 상태일때 나타나는 화살표상자*/
    .arrow_box {
		display: none;
		position: absolute;
		padding: 5px 10px 5px 10px;
		margin: 10px 0 0 20px;
		-webkit-border-radius: 8px;
		-moz-border-radius: 8px;  
		border-radius: 8px;
		background: #333;
		color: #fff;
		z-index: 2;
	}
	.arrow_box:after {
		position: absolute;
		bottom: 100%;
		left: 35%;
		margin-left: -10px;
		border: solid transparent;
		border-color: rgba(51, 51, 51, 0);
		border-bottom-color: #333;
		border-width: 8px;
		pointer-events: none;
		content: " ";
	}
	input.form-control:hover + i + p.arrow_box{
		display: block;
	}
	
	
</style>

<body>

	<%@ include file="../include/header.jsp" %>
 	
    <br><br>
	<div class="container">
		<div class="row">
			<div id="registerbox" class="col-md-6 col-centered"  style="margin-right: 10px;">
                <!-- 잠금장치 이미지 -->
				<div class="row">
					<div class="col-md-0 col-centered">
						<img class="box-logo" src="../../dist/imgs/register-icon.png" alt="잠금장치 이미지">
					</div>
				</div>
                
                <!-- 일반 회원가입 폼 -->
				<form method="post" action="${path}/userregister.do" accept-charset="UTF-8" role="form">
					<fieldset>
                        <!-- 이메일 -->
						<div class="form-group inputWithIcon inputIconBg">
							<input class="form-control" placeholder="이메일 주소" id="reg-email" name="email" type="text">
							<i class="fa fa-envelope" style="font-size: 18px; padding: 10px 7px 10px 7px;"></i>
							<p id="reg-email-msg" class="arrow_box">이메일 형식에 맞게 작성해주세요.</p>
						</div>
                        
                        <!-- 비밀번호 -->
						<div class="form-group inputWithIcon inputIconBg">
							<input class="form-control" placeholder="비밀번호" id="reg-pw" name="password" type="password" value="">
							<i class="fa fa-lock"></i>
							<p id="reg-pw-msg" class="arrow_box">6~14자의 영문,숫자를 조합하여 사용해 주세요.</p>
						</div>
                        
                        <!-- 비밀번호 확인 -->
                        <div class="form-group inputWithIcon inputIconBg">
							<input class="form-control" placeholder="비밀번호 확인" id="reg-pwc" name="password_con" type="password" value="">
							<i class="fa fa-unlock-alt"></i>
							<p id="reg-pwc-msg" class="arrow_box">작성한 비밀번호를 다시 입력해 주세요.</p>
						</div>
                        
                        <!-- 이름 -->
                        <div class="form-group inputWithIcon inputIconBg">
							<input class="form-control" placeholder="이름" id="reg-name" name="name" type="text">
							<i class="fa fa-user"></i>
							<p id="reg-name-msg" class="arrow_box">이름을 입력해 주세요.</p>
						</div>
                        
                        <!-- 닉네임 -->
                        <div class="form-group inputWithIcon inputIconBg">
							<input class="form-control" placeholder="닉네임" id="reg-nick" name="nickname" type="text">
							<i class="fa fa-id-badge"></i>
							<p id="reg-nick-msg" class="arrow_box">커뮤니티에 사용되는 닉네임을 입력해 주세요.</p>
						</div>
					</fieldset>
                    
                    <div class="recaptcha-wrapper">
                        <div class="g-recaptcha" data-sitekey="6LeHSF0UAAAAAFHXoZs9jp8vonF7EaRFbFaELz3m"></div>
                    </div>
                    
                    <input class="btn btn-primary btn-block" style="height: 50px;margin-bottom: 20px;" type="submit" value="가입하기">
				</form>
			</div>
            
            <!-- 소셜 회원가입 폼 -->
            <div id="registerbox" class="col-md-4 col-centered" style="height: 330px; margin-left: 30px;">
                <!-- 잠금장치 이미지 -->
				<div class="row">
					<div class="col-md-0 col-centered">
						<img class="box-logo"  src="../../dist/imgs/social-icon.png" alt="잠금장치 이미지">
					</div>
				</div>
                
                <div class="row">
                    <div class="col">
                        <a href="#" class="btn btn-google-plus"><i class="fa fa-google-plus"></i>&nbsp;&nbsp;Google+ 로 가입하기</a>	
                    </div>
                    
                    <div class="col">
                        <a href="#" class="btn btn-facebook"><i class="fa fa-facebook"></i>&nbsp;&nbsp;Facebook 으로 가입하기</a>	
                    </div>
                </div>
			</div> 
		</div>
	</div>
    
    <br><br>
    
    <%@ include file="../include/plugin_js.jsp" %>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script src="https://www.google.com/recaptcha/api.js"></script>
	
	<script type="text/javascript">

		$(document).ready(function(){
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			var emailchk = false;
			var pwdchk = false;
			var nickchk = false;
			
			//form태그가 데이터를 보내기 전에 확인한다.
			$("form").submit(function (event){
				if(!re.test($("#reg-email").val())){
					alert("올바른 이메일 주소를 입력하세요.")
					event.preventDefault();	
				}
				else if(emailchk == false){
					alert("이메일이 중복되거나 비어있습니다.")
					event.preventDefault();	
				}
				else if(pwdchk == false){
					alert("비밀번호 일치여부를 확인해 주십시오.")
					event.preventDefault();	
				}
				else if($("#reg-name").val() == ''){
					alert("이름이 공백입니다.")
					event.preventDefault();
				}
				else if(nickchk == false){
					alert("닉네임이 중복되거나 비어있습니다.")
					event.preventDefault();
				}
				return;
			});
			
			//이메일 중복확인
			$("#reg-email").keyup(function(){
				if($(this).val() == '' || !re.test($("#reg-email").val())){
					$('#reg-email-msg').text("이메일 형식에 맞게 작성해주세요.");
					emailchk = false;
					return;
				}
				var data = {}
				data["email"] = $(this).val();
				$.ajax({
			        url:'${path}/confirm-userinfo.ajax',
			        type:'POST',
			        data: JSON.stringify(data),
			        contentType: "application/json",
			        dataType : "json",

			        success:function(response){
			        	if(response.message == 'T'){
			        		$('#reg-email-msg').text("사용가능한 이메일 입니다.");
			        		emailchk = true;
			        	}else{
			        		$('#reg-email-msg').text("이미 존재하는 이메일 입니다.");
			        		emailchk = false;
			        	}
			        },
			        error: function (request, status, error){
			        	alert('서버와의 통신이 원할하지 않습니다.\n다시 시도 해 주십시오.' );
			        	console.log("[AJAX ERROR]"+"\nCode:"+request.status+"\nMessage:"+request.responseText+"\nError:"+error);
		        	}
			    });
			});
			
			//닉네임 중복확인
			$("#reg-nick").keyup(function(){
				if($(this).val() == ''){
					$('#reg-nick-msg').text("커뮤니티에 사용되는 닉네임을 입력해 주세요.");
					nickchk = false;
					return;
				}
				var data = {}
				data["nickname"] = $(this).val();
				$.ajax({
			        url:'${path}/confirm-userinfo.ajax',
			        type:'POST',
			        data: JSON.stringify(data),
			        contentType: "application/json",
			        dataType : "json",

			        success:function(response){
			        	if(response.message == 'T'){
			        		$('#reg-nick-msg').text("사용가능한 닉네임 입니다.");
			        		nickchk = true;
			        	}else{
			        		$('#reg-nick-msg').text("이미 존재하는 닉네임 입니다.");
			        		nickchk = false;
			        	}
			        },
			        error: function (request, status, error){
			        	alert('서버와의 통신이 원할하지 않습니다.\n다시 시도 해 주십시오.' );
			        	console.log("[AJAX ERROR]"+"\nCode:"+request.status+"\nMessage:"+request.responseText+"\nError:"+error);
		        	}
			    });
			});
			
			//비밀번호 일치 확인
			$("#reg-pw, #reg-pwc").keyup(function(){
				var pw = $("#reg-pw").val();
				var pwc = $("#reg-pwc").val();
				if(pw != '' && pwc != ''){
					if(pw != pwc){
						$('#reg-pw-msg').text("비밀번호가 서로 일치하지 않습니다.");
						$('#reg-pwc-msg').text("비밀번호가 서로 일치하지 않습니다.");
						pwdchk = false;
					} else{
						$('#reg-pw-msg').text("비밀번호가 정상적으로 입력되었습니다.");//비밀번호 일치
						$('#reg-pwc-msg').text("비밀번호 확인이 완료되었습니다.");//비밀번호 일치
						pwdchk = true;
					}
				} else{
					$('#reg-pw-msg').text("6~14자의 영문,숫자를 조합하여 사용해 주세요.");
					$('#reg-pwc-msg').text("작성한 비밀번호를 다시 입력해 주세요.");
					pwdchk = false;
				}
	        });
	    });
	</script>
	
</body>
  
</html>


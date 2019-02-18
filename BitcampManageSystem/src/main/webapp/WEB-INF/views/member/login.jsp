<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<style>
    /*로그인박스 모듈*/
	#loginbox{
		border: #D4D4D4 1px solid;
		height: 480px;
		background: #FBFBFB;
	}
	
    /*로그인 박스모듈 내 잠금장치 이미지*/
	#loginbox img{
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
		left: 4px;
		top: 0px;
		font-size:20px;
		padding: 9px 8px;
		color: #aaa;
	}
	
    /*이메일저장 체크박스 속성*/
    .checkbox{
        margin-left: 6px;
        margin-top: -5px;
        margin-bottom: 20px;
    }
    /*이메일저장 체크박스 내부 라벨 속성*/
	.checkbox label{
		font-size: 12px;
        font-weight: 600;
        padding-left: 7px;
	}
    /*Attribute(value)가 "해당값" 인것을 찾아 적용한다.*/
    [value~="로그인"], [value~="회원가입"], [value~="아이디·비밀번호찾기"]{
        font-weight: bold;
    }
</style>


<body>

	<%@ include file="../include/header.jsp" %>
 	
	<br><br>
	<div class="container">
		<div class="row">
			<div id="loginbox" class="col-md-4 col-centered">
                <!-- 잠금장치 이미지 -->
				<div class="row">
					<div class="col-md-0 col-centered">
						<img src="../../dist/imgs/lock-open-blue.png" alt="잠금장치 이미지">
					</div>
				</div>
                <!-- 로그인 폼 -->
				<form method="post" action="${path}/memberlogin.do" accept-charset="UTF-8" role="form">
					<fieldset>
                        <!-- 이메일 박스 -->
						<div class="form-group inputWithIcon">
							<input class="form-control" id="login-email" placeholder="이메일 주소" name="email" type="text">
							<i class="fa fa-user"></i>
						</div>
                        <!-- 비밀번호 박스 -->
						<div class="form-group inputWithIcon">
							<input class="form-control" id="login-pwd" placeholder="비밀번호" name="password" type="password" value="">
							<i class="fa fa-unlock-alt"></i>
						</div>
                        <!-- 체크박스 -->
						<div class="checkbox">
							<input name="remember" id="login-rm" type="checkbox" value="Remember"><label>이메일 저장</label>
			    	    </div>
                        <input class="btn btn-outline-info btn-block" type="submit" value="로그인">
                        <input class="btn btn-outline-success btn-block" onclick="location.href='${path}/register'" type="button" value="회원가입">
					</fieldset>
				</form>
			</div> 
		</div>
	</div>
    
    <br><br>
    
    <%@ include file="../include/plugin_js.jsp" %>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			//form태그가 데이터를 보내기 전에 확인한다.
			$("form").submit(function (event){
				if($("#login-email").val() == '' || !re.test($("#login-email").val())){
					alert("올바른 이메일 주소를 입력하세요.")
					event.preventDefault();	
				}
				else if($("#login-pwd").val() == ''){
					alert("비밀번호를 입력해 주세요.")
					event.preventDefault();	
				}
				return;
			});
			//쿠키여부를 판단하여 쿠키가 존재하면 이메일을 입력하고 체크박스를 체크해놓는다.
			if($.cookie("remember") != null){
				$("#login-email").attr("value", $.cookie("remember"));
				$("#login-rm").prop("checked", true);
			}
		});
		
	</script>
	
</body>
  
</html>


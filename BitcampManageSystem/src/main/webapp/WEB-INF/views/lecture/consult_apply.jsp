<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<!--css-->
<link rel="stylesheet" href="/css/lecture/lecture_nav.css">
<style>
	.jumbotron{
	    background: url('${path}/imgs/top_consult.jpg') no-repeat center;
	    background-color: #1B1C1D;
	    height: 350px;
	    margin-bottom: 0;
	}
	/*상담신청 약식테이블*/
	.consult-apply{
	    width: 100%;
	    font-size: .9rem;
	}
	.consult-apply tr th{
	    width: 100px;
	    text-align: right;
	    padding-right: 5px;
	    font-weight: 600;
	}
	.consult-apply tr td{
	    padding: 7px 5px 7px 10px;
	}
	#down-apply{
	    padding: 15px 0 25px 150px;
	}
	#down-apply span:nth-child(2){
		padding-left: 15px;
	    font-size: 1.1rem;
	    font-weight: bold;
	}
</style>

<body>

	<%@ include file="../include/header.jsp" %>
 	
    <!--중앙 점보트론-->
    <div class="jumbotron"></div>
    <%@ include file="../include/sticky_navbar.jsp" %>
    
    <br>
    
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-centered">
            	<div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/t_sub07_01.jpg">
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12" style="border: #DBDBDB 1px solid;box-shadow: 1px 1px 1px 1px #DBDBDB;padding: 20px 10px 20px 10px;">
                        <form method="post" action="${path}/lecture/addConsultation.do" accept-charset="UTF-8" role="form">
                            <table class="consult-apply">
                                <tr>
                                    <th>제목</th>
                                    <td colspan="3"><input id="apply-subject" type="text" class="form-control" name="subject"></td>
                                </tr>
                                <tr>
                                    <th>이름</th>
                                    <td colspan="3"><input id="apply-name" type="text" class="form-control" name="name"></td>
                                </tr>
                                <tr>
                                    <th>성별</th>
                                    <td>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="male" name="gender" class="custom-control-input" value="male" checked>
                                            <label class="custom-control-label" for="male">남성</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="female" name="gender" class="custom-control-input" value="female">
                                            <label class="custom-control-label" for="female">여성</label>
                                        </div>
                                    </td>
                                    <th>이메일</th>
                                    <td><input type="text" id="apply-email" class="form-control" name="email"></td>
                                </tr>
                                <tr>
                                    <th>구분</th>
                                    <td>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="cost" name="needs" class="custom-control-input" value="cost" checked>
                                            <label class="custom-control-label" for="cost">수강료문의</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="visit" name="needs" class="custom-control-input" value="visit">
                                            <label class="custom-control-label" for="visit">방문상담</label>
                                        </div>
                                    </td>
                                    <th>휴대폰</th>
                                    <td><input type="text" id="apply-num" class="form-control" name="phone_num"></td>
                                </tr>
                                <tr>
                                    <th>수강 목적</th>
                                    <td colspan="3">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="job" name="purpose" class="custom-control-input" value="job" checked>
                                            <label class="custom-control-label" for="job">취업희망</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="transfer" name="purpose" class="custom-control-input" value="transfer">
                                            <label class="custom-control-label" for="transfer">이직희망</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="worker" name="purpose" class="custom-control-input" value="worker">
                                            <label class="custom-control-label" for="worker">재직자</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="vacation" name="purpose" class="custom-control-input" value="vacation">
                                            <label class="custom-control-label" for="vacation">방학특강</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>캠퍼스 선택</th>
                                    <td colspan="3">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="sch" name="campus" class="custom-control-input" value="sch" checked>
                                            <label class="custom-control-label" for="sch">서초센터(본점)</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="sc" name="campus" class="custom-control-input" value="sc">
                                            <label class="custom-control-label" for="sc">신촌센터</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="gn" name="campus" class="custom-control-input" value="gn">
                                            <label class="custom-control-label" for="gn">강남센터</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="cr" name="campus" class="custom-control-input" value="cr">
                                            <label class="custom-control-label" for="cr">종로센터</label>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <hr>
                            <div id="down-apply">
                                <span><button class="btn btn-info btn-lg" type="button" onclick="hello()">고급과정지원서 다운받기</button></span>
                                <span>(bit@bitacademy.net로 메일접수 받습니다.)</span>
                            </div>
                            
                            <div>
                                <textarea name="comment" id="comment" class="ckeditor"></textarea>
                            </div>
                            
                            <br><br>
                            <button class="btn btn-success btn-lg" type="submit" style="position: sticky; left: 100%;">
                            	<i class="fa fa-check" style="color:white;margin-right: 5px;"></i>저장
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <br><br><br><br>

    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script src="${path}/plugins/ckeditor/ckeditor.js"></script>
	
	<script>
		function hello(){
			alert("none");
		}
	
        CKEDITOR.replace( 'comment', {
            //filebrowserUploadUrl: 'upload_ck.php'
        });
        CKEDITOR.config.toolbar = [
            ['Styles','Format','Font','FontSize'],
            ['Bold','Italic','Underline','StrikeThrough','-','Undo','Redo','-','Cut','Copy','Paste', 'Replace','-','Outdent','Indent','-','Print'],
            ['NumberedList','BulletedList','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
            ['Image','Table','-','Link', 'Smiley','TextColor','BGColor','Source']
        ] ;
        
        $(document).ready(function(){
        	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        	//form태그가 데이터를 보내기 전에 확인한다.
			$("form").submit(function (event){
				if($("#apply-subject").val() == ''){
					alert("제목을 입력하세요.")
					event.preventDefault();	
				}
				else if($("#apply-name").val() == ''){
					alert("이름을 입력하세요.")
					event.preventDefault();	
				}
				else if($("#apply-email").val() == '' || !re.test($("#apply-email").val())){
					alert("올바른 이메일 주소를 입력하세요.")
					event.preventDefault();	
				}
				else if($("#apply-num").val() == ''){
					alert("휴대폰 번호를 입력하세요.")
					event.preventDefault();	
				}
				return;
			});

        });
    </script>
</body>
  
</html>


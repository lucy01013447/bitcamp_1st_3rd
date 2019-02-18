<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<!--css-->
<link rel="stylesheet" href="/css/lecture/lecture_nav.css">
<style>
	.jumbotron{
	    background: url('${path}/imgs/joblecture.jpg') no-repeat center;
	    background-color: #1B1C1D;
	    height: 350px;
	    margin-bottom: 0;
    }
	/*교육정보테이블*/
	.lec-apply{
	    width: 100%;
	    font-size: .9rem;
	    border-top: 2px #DDDDDD solid;
	    border-bottom: 2px #DDDDDD solid;
	}
	.lec-apply tr th{
	    width: 140px;
	    text-align: left;
	    background-color: #F5F5F5;
	    border-bottom: 1px #DDDDDD solid;
	    padding-left: 10px;
	    font-weight: 600;
	}
	.lec-apply tr td{
	    text-align: left;
	    border-bottom: 1px #DDDDDD solid;
	    padding: 7px 5px 7px 10px;
	}
	.lec-apply caption{
	    caption-side: top;
	    text-align: center;
	    font-weight: bold;
	    color: black;
	    font-size: 1.4rem;
	    padding-bottom: 20px;
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
            <!--사이드 내비게이션-->
            <div class="col-md-3">
                <div style="margin: 0 0 -10px 35px;">
                    <img src="${path}/imgs/left_sub01.jpg" alt="사이드내비">
                </div>
                <!--과정선택 사이드 내비게이션-->
                <!--각 버튼은 radio버튼화되어 1개만 선택되어 활성화된다.
                <!--(label:for와 input:id가 일치해야하며 다른 버튼과 중복되면 안된다.)-->
                <nav class="vertical">
                <ul>
                    <li>
                        <label for="getjob">서초센터(본점)</label>
                        <input type="radio" name="verticalMenu" id="getjob"/>
                        <div class="vertical-sub">
                            <ul>
                            <li>
                                <label for="getjob-internal">국비무료과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="getjob-internal" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=sch&ty=1&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'sch' and nav.type eq 1}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <label for="getjob-external">해외취업연수과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="getjob-external" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=sch&ty=2&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'sch' and nav.type eq 2}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <label for="sinchon">신촌점</label>
                        <input type="radio" name="verticalMenu" id="sinchon" />
                        <div class="vertical-sub">
                            <ul>
                            <li>
                                <label for="sinchon-internal">국비무료과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="sinchon-internal" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=sc&ty=1&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'sc' and nav.type eq 1}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>

                            <li>
                                <label for="sinchon-external">해외취업연수과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="sinchon-external" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=sc&ty=2&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'sc' and nav.type eq 2}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <label for="gangnam">강남점</label>
                        <input type="radio" name="verticalMenu" id="gangnam" />
                        <div class="vertical-sub">
                            <ul>
                            <li>
                                <label for="gangnam-internal">국비무료과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="gangnam-internal" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=gn&ty=1&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'gn' and nav.type eq 1}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>

                            <li>
                                <label for="gangnam-external">해외취업연수과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="gangnam-external" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=gn&ty=2&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'gn' and nav.type eq 2}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <label for="jongno">종로점</label>
                        <input type="radio" name="verticalMenu" id="jongno" />
                        <div class="vertical-sub">
                            <ul>
                            <li>
                                <label for="jongno-internal">국비무료과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="jongno-internal" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=cr&ty=1&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'cr' and nav.type eq 1}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>

                            <li>
                                <label for="jongno-external">해외취업연수과정</label>
                                <input type="checkbox" name="verticalMenu-sub" id="jongno-external" />
                                <div class="vertical-inner">
                                    <ul>
                                    	<li><a href="${path}/lecture/list?cen=cr&ty=2&page=1">과정목록보기</a></li>
                                    <c:forEach var="nav" items="${navList}">
	                                	<c:if test="${nav.center eq 'cr' and nav.type eq 2}">
                                		<li><a href="${path}/lecture/view?id=${nav.lec_id}">${nav.title}</a></li>
	                                	</c:if>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${path}/lecture/list?cen=all&page=1">전체과정목록보기</a>
                    </li>
                </ul>
                </nav>
            </div>
            
        	<div class="col-md-9">
                <div class="row">
                    <div class="col-md-12">
                    
                    	<form method="post" action="${path}/lecture/addApplicant.do" accept-charset="UTF-8" role="form">
                        	<input type="hidden" name="lec_id" value="${lec.lec_id}">
                            <table class="lec-apply">
                                <tr>
                                    <th>지원과정</th>
                                    <td><b>${lec.title}</b></td>
                                </tr>
                                <tr>
                                    <th>캠퍼스</th>
                                    <td>${lec.center}</td>
                                </tr>
                                <tr>
                                    <th>이름</th>
                                    <td><input type="text" class="form-control" id="apply-name" name="name" style="width: 200px;"></td>
                                </tr>
                                <tr>
                                    <th>생년월일</th>
                                    <td><input type="date" class="form-control" name="birth" style="width: 200px;"></td>
                                </tr>
                                <tr>
                                    <th>이메일</th>
                                    <td><input type="email" class="form-control" id="apply-email" name="email" style="width: 350px;"></td>
                                </tr>
                                <tr>
                                    <th>연락처</th>
                                    <td><input type="number" class="form-control" id="apply-num" name="phone_num" style="width: 350px;"></td>
                                </tr>
                                <tr>
                                    <th>성별</th>
                                    <td>
                                        <div class="form-check-inline">
                                            <input type="radio" class="form-check-input" name="gender" value="male">남성
                                        </div>
                                        <div class="form-check-inline">
                                            <input type="radio" class="form-check-input" name="gender" value="female">여성
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td><input type="text" class="form-control" name="address" style="width: 450px;"></td>
                                </tr>
                                <caption>수강신청하기</caption>
                            </table>
                            <br>
                            <table class="lec-apply">
                                <tr>
                                    <th>지원 동기 및 취업에대한 의지</th>
                                    <td><textarea name="comment" id="comment" class="ckeditor"></textarea></td>
                                </tr>
                                <tr>
                                    <th>비밀번호</th>
                                    <td><input type="password" class="form-control" id="apply-pwd" name="password" style="width: 100px;"></td>
                                </tr>
                            </table>
                            
                            <br>
                            <button class="btn btn-primary" type="button" onclick="history_back()">목록</button>
                            <button class="btn btn-info btn-lg" type="submit" style="position: sticky; left: 100%;">신청하기</button>
                    	</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script src="${path}/plugins/ckeditor/ckeditor.js"></script>
	
	<script>
		function history_back(){
			window.history.back();
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
				if($("#apply-name").val() == ''){
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
				else if($("#apply-pwd").val() == ''){
					alert("비밀번호를 입력하세요.")
					event.preventDefault();
				}
				return;
			});
			
        	//사이드 내비게이션
            $("input[name=verticalMenu]").change(function() {
                $("input[name=verticalMenu-sub]").next().slideUp(300, function(){
                    $("input[name=verticalMenu-sub]").prop("checked", false);    
                });
                $(".vertical-sub").slideUp(300);
                $(this).next().slideDown(300);
            });
            $("input[name=verticalMenu-sub]").change(function() {
                if($(this).is(":checked")){
                    $(this).next().slideDown(300);
                }
                else{
                    $(this).next().slideUp(300);
                }
            });
        });
    </script>
</body>
  
</html>


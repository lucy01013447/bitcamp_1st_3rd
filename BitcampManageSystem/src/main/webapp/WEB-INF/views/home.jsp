<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--<%@ page session="false" %>--%>
<!DOCTYPE html>
<html>

<%@ include file="include/head.jsp" %>

<style type="text/css">
    /*슬라이드 이미지*/
    .carousel-inner > .carousel-item > img {
        top: 0;
        left: 0;
        min-width: 100%;
        height: 450px;
    }
    
    /*교육종류 및 교육과정 선택바*/
    #edu-type-bar{
        background-color: #474749
    }
    #lecture-kind-bar{
        background-color: #898788;
        height: 50px;
        padding-top: 10px;
    }
    #lecture-kind-bar span{
        margin: 13px;
    }
    #lecture-kind-bar a{
        text-decoration: none;
        color: white;
        font-size: 1rem;
        font-weight: bold;
    }
    
    /*메인 강의목록 모듈*/
    .lecture-module img{
        margin: -5px;
        width: 260px;
        height: 180px;
    }
    .lecture-info{
        padding-top: 8px;
    }
    .lecture-info p{
        margin: 0px;
        font-size: 14px;
    }
    
    /*강의정보 게시판 모듈*/
    .index-bb .row{
        margin: -5px;
    }
    .index-bb .col-md-4{
        padding: 5px;
    }
    .index-bb-module{
        border: #CBCBCB 1px solid;
    }
    .index-bb-title img{
        width: 100%;
        margin-bottom: 5px;
    }
    .index-bb-content p{
        text-align: left;
        font-size: 13px;
        margin-bottom: 20px;
    }
    .index-bb-content p>img{
        padding-bottom: 5px;
    }
    .index-bb-content p>a{
        text-decoration: none;
        color: black;
    }
    .index-bb-content p>a:hover{
        color: #0040FF;
    }
    
</style>

<body>

	<%@ include file="include/header.jsp" %>
 	
    <!--메인배너 슬라이딩 뷰어-->
    <div id="main-carousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#main-carousel" data-slide-to="1"></li>
            <li data-target="#main-carousel" data-slide-to="2"></li>
            <li data-target="#main-carousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <img class="d-block img-fluid" src="${path}/imgs/1.png" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="${path}/imgs/2.png" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="${path}/imgs/3.png" alt="Third slide">
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="${path}/imgs/4.png" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#main-carousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#main-carousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    
    <!--교육과정 선택바-->     <!--추후 교육과정게시판 개발하면 적용--> 
    <div class="container-fluid">
        <div class="row" id="edu-type-bar">
            <div class="col-xs col-centered">
                <div class="row">
                    <div class="col-xs-4">
                        <a href="${path}/lecture"><img src="${path}/imgs/tab01_off.jpg"></a>
                    </div>
                    <div class="col-xs-4">
                        <a href="https://pf.kakao.com/_VDAHxl" target="_blank"><img src="${path}/imgs/contact_us.jpg"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="lecture-kind-bar">
            <div class="col-md-5 col-centered">
                <span><a href="${path}/lecture/list?cen=sch&ty=1&page=1">국비 무료과정</a></span>
                <span><a href="${path}/lecture/list?cen=sch&ty=2&page=1">해외취업 연수과정</a></span>
            </div>
        </div>
    </div>
    
    <br>
    
    <!--교육과정 간소화보기 모듈-->    <!--교육과정 게시판 완성되면 개발-->
    <div class="container">
        <div class="row" id="gov-module">
        	<c:forEach var="gov" items="${govLecList}">
         	<div class="col-md-3">
                <div class="lecture-module">
                    <div class="lecture-img">
                        <a href="${path}/lecture/view?id=${gov.lec_id}">
                        	<img src="${path}/imgs/lecture/${gov.thumbnail_img_path}" alt="교육과정이미지">
                        </a>
                    </div>
                    <div class="lecture-info">
                        <p>교육기간 | ${gov.start_date} ~ ${gov.end_date}</p>
                        <p>교육장소 | ${gov.center}</p>
                        <p>교육문의 | ${gov.phone_num}</p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    
    <br><br>
    
    <!--간소 게시판 모듈-->    <!--게시판들 완성되면 최종적으로 개발-->
    <div class="container">
        <div class="index-bb">
            <div class="row">
                <div class="col-md-4">
                    <div class="index-bb-module">
                        <div class="index-bb-title">
                            <a href="${path}/notice/newtec"><img src="${path}/imgs/t_info.jpg" alt="기술정보"></a>
                        </div>
                        <div class="index-bb-content">
                        	<c:forEach var="list" items="${newtechList}">
				         	<p><img src="${path}/imgs/spot.jpg"><a href="${path}/notice/view?num=${list.article_num}">${list.subject}</a></p>
				            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="index-bb-module">
                        <div class="index-bb-title">
                            <a href="${path}/comm/project"><img src="${path}/imgs/t_project.jpg" alt="프로젝트"></a>
                        </div>
                        <div class="index-bb-content">
                        	<c:forEach var="pro" items="${projectList}">
                            <p><img src="${path}/imgs/spot.jpg"><a href="${path}/comm/project/one?seq=${pro.seq}">${pro.lectitle}&#91;${pro.protitle}&#93;</a></p>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="index-bb-module">
                        <div class="index-bb-title">
                            <a href="${path}/comm/notice"><img src="${path}/imgs/t_notice.jpg" alt="공지사항"></a>
                        </div>
                        <div class="index-bb-content">
                        	<c:forEach var="notice" items="${noticeList}">
                            <p><img src="${path}/imgs/spot.jpg"><a href="${path}/comm/notice/one?seq=${notice.seq}">${notice.title}</a></p>
                           	</c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <br><br>
    
    <!--센터홈페이지 링크-->
    <div class="container">
        <div>
            <div>
                <img src="${path}/imgs/center.jpg" class="width-full" alt="센터링크바">
            </div>
            <div>
                <div class="row fitting">
                    <div class="col-md-3 fitting">
                        <a href="http://bitcamp.co.kr/index.php?main_page=home" target="_blank">
                            <img src="${path}/imgs/center_1.jpg" class="width-full" alt="서초본점">
                        </a>
                    </div>
                    <div class="col-md-3 fitting">
                        <a href="http://gn.bitcamp.co.kr/index.php?main_page=home" target="_blank">
                            <img src="${path}/imgs/center_2.jpg" class="width-full" alt="강남센터">
                        </a>
                    </div>
                    <div class="col-md-3 fitting">
                        <a href="http://sc.bitcamp.co.kr/index.php?main_page=home" target="_blank">
                            <img src="${path}/imgs/center_3.jpg" class="width-full" alt="신촌센터">
                        </a>
                    </div>
                    <div class="col-md-3 fitting">
                        <a href="http://jn.bitcamp.co.kr/index.php?main_page=home" target="_blank">
                            <img src="${path}/imgs/center_4.jpg" class="width-full" alt="종로센터">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <br><br>
    
    <!--국비지원 혜택 이미지-->
    <div class="container">
        <img src="${path}/imgs/con_benefit.jpg" alt="교육혜택" class="width-full">
    </div>
    
    <br><br>
    
    <!--취업지원센터 링크-->   <!--취업지원센터페이지 만들면 링크연결-->
    <div class="container">
        <img src="${path}/imgs/job2.jpg" alt="취업지원" class="width-full">
    </div>
    
    <%@ include file="include/plugin_js.jsp" %>
    
	<%@ include file="include/footer.jsp" %>
	
	
</body>
  
</html>


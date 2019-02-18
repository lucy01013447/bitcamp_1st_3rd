<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<style type="text/css">
    .jumbotron{
            background: url('${path}/imgs/joblecture.jpg') no-repeat center;
            background-color: #1B1C1D;
            height: 350px;
            margin-bottom: 0;
    }
</style>

<body>
	
	<%@ include file="../include/header.jsp" %>	
	
    <!--중앙 점보트론-->
    <div class="jumbotron"></div>
    <%@ include file="../include/sticky_navbar.jsp" %>
    
    <!--비트캠프 플래너-->
    <div class="container">
        <img src="${path}/imgs/joblecture2.jpg">
    </div>
    
    <br><br>
    
    <!--비트캠프 취업교육과정-->
    <div class="container-fluid">
        <div class="row" style="background-color: #F0F0F0;">
            <div class="col-md-0 col-centered">
                <img src="${path}/imgs/joblecture3.jpg">
            </div>
        </div>
    </div>
    
    <!--국가기간전략산업직종훈련-->
    <div class="container">
        <img src="${path}/imgs/joblecture4.jpg">
    </div>
    
    <!--국가기간전략산업직종훈련과정 목록-->
    <div class="container">
        <img src="${path}/imgs/joblecture5.jpg">
    </div>
    
    <br><br>
    
    <!--교육센터 과정선택 테이블-->
    <div class="container">
        <div class="row fitting" style="background-color: #5F676A;">
            <div class="col col-table">
                <table class="center-lecture">
                    <caption>
                        <span class="center-choice-btn-active">서초본점</span>
                        <span class="center-choice-btn">신촌점</span>
                        <span class="center-choice-btn">강남점</span>
                        <span class="center-choice-btn">종로점</span>
                    </caption>
                    <thead>
                        <tr>
                            <th>순번</th>
                            <th>과정명</th>
                            <th>교육기간</th>
                            <th>교육장소</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><a href="#">UI/UX기반의 자바개발자 양성과정 - 18년 4월</a></td>
                            <td>2018.04.30 ~ 2018.11.01</td>
                            <td>서초본점</td>
                            <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a href="#">R과 Python을 활용한 빅데이터 분석 전문가 양성과정</a></td>
                            <td>2018.05.23-2018.11.30</td>
                            <td>서초본점</td>
                            <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><a href="#">Network AR VR 설계 개발자 양성과정</a></td>
                            <td>2018.05.23~2018.11.30</td>
                            <td>서초본점</td>
                            <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><a href="#">스마트 웹앱 자바 SW엔지니어 양성과정 - 18년 5월</a></td>
                            <td>2018.05.29 ~ 2018.11.22</td>
                            <td>서초본점</td>
                            <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
    <br><br><br>
    
    <!--해외취업연수과정-->
    <div class="container-fluid">
        <div class="row" style="background-color: #5F676A;">
            <div class="col-md-0 col-centered">
                <img src="${path}/imgs/joblecture6.jpg">
            </div>
        </div>
    </div>
    
    <!--해외취업연수과정 목록-->
    <div class="container-fluid" style="background-color: #5F676A; padding-bottom: 40px">
        <div class="row" >
            <div class="col-md-0 col-centered" style="padding-bottom: 30px">
                <img src="${path}/imgs/joblecture7.jpg">
            </div>
        </div>
        <!--교육센터 과정선택 테이블-->
        <div class="container">
            <div class="row fitting" style="background-color: #5F676A;">
                <div class="col col-table">
                    <table class="center-lecture">
                        <caption>
                            <span class="center-choice-btn-active">서초본점</span>
                            <span class="center-choice-btn">신촌점</span>
                            <span class="center-choice-btn">강남점</span>
                            <span class="center-choice-btn">종로점</span>
                        </caption>
                        <thead>
                            <tr>
                                <th>순번</th>
                                <th>과정명</th>
                                <th>교육기간</th>
                                <th>교육장소</th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><a href="#">UI/UX기반의 자바개발자 양성과정 - 18년 4월</a></td>
                                <td>2018.04.30 ~ 2018.11.01</td>
                                <td>서초본점</td>
                                <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="#">R과 Python을 활용한 빅데이터 분석 전문가 양성과정</a></td>
                                <td>2018.05.23-2018.11.30</td>
                                <td>서초본점</td>
                                <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="#">Network AR VR 설계 개발자 양성과정</a></td>
                                <td>2018.05.23~2018.11.30</td>
                                <td>서초본점</td>
                                <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="#">스마트 웹앱 자바 SW엔지니어 양성과정 - 18년 5월</a></td>
                                <td>2018.05.29 ~ 2018.11.22</td>
                                <td>서초본점</td>
                                <td><button type="button" class="btn btn-dark btn-sm">자세히보기</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="../include/plugin_js.jsp" %>
    
	<%@ include file="../include/footer.jsp" %>
	
</body>
  
</html>


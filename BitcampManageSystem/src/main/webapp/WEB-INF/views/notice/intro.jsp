<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<style>
    .jumbotron{
	    background: url('${path}/imgs/top_intro.jpg') no-repeat center;
	    background-color: #1B1C1D;
	    height: 350px;
	    margin-bottom: 0;
    }
    
    /*포트폴리오 소개테이블*/
    .intro-table{
        width: 100%;
        font-size: .9rem;
    }
    .intro-table tr th{
        padding: 5px 10px 5px 10px;
        border: 1px #DDDDDD solid;
        background-color: #F5F5F5;
        text-align: center;
        font-weight: 600;
    }
    .intro-table tr td{
        padding: 7px 0 7px 10px;
        border: 1px #DDDDDD solid;
        font-weight: bold;
    }
    .intro-table tr td a{
        text-decoration: none;
    }
</style>

<body>

	<%@ include file="../include/header.jsp" %>
 	
    <!--중앙 점보트론-->
    <div class="jumbotron"></div>
    <%@ include file="../include/sticky_navbar.jsp" %>
    
    <br><br><br>
    
    <div class="container">
        <div class="row">
            <div class="col-centered">
                <h1>포트폴리오 소개</h1>
            </div>
        </div>
    </div>
    
    <br><br>
    
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-12">
                    <h5>1.프로젝트 사양</h5>
                </div>
                <table class="intro-table">
                    <tr>
                        <th>프로젝트 명</th>
                        <td>비트캠프 웹페이지 모방작</td>
                        <td><a href='http://bitcamp.co.kr/index.php?main_page=home' target="_blank">http://bitcamp.co.kr</a></td>
                    </tr>
                    <tr>
                        <th>참여 인원</th>
                        <td>2명</td>
                        <td>오승세(팀장), 조부광</td>
                    </tr>
                    <tr>
                        <th>개발 기간</th>
                        <td>2018.06.01~2018.06.28</td>
                        <td>3주</td>
                    </tr>
                    <tr>
                        <th rowspan='6'>개발 환경</th>
                        <td>프로그래밍 언어</td>
                        <td>Java(Servlet), JSP, HTML5/CSS, JavaScript, MySQL</td>
                    </tr>
                    <tr>
                        <td>프레임 워크</td>
                        <td>Spring Framework, MyBatis, Bootstrap</td>
                    </tr>
                    <tr>
                        <td>웹 라이브러리 및 기술</td>
                        <td>JQuery, Ajax</td>
                    </tr>
                    <tr>
                        <td>개발 툴</td>
                        <td>Eclipse(STS), MySQL Workbench, Brackets, Git</td>
                    </tr>
                    <tr>
                        <td>서버 및 DB</td>
                        <td>MySQL, ApacheTomcat, 
                            <a href="https://hosting.cafe24.com/?controller=product_page&type=special&page=tomcat" target="_blank">Cafe24TomcatJSP광호스팅</a>
                        </td>
                    </tr>
                    <tr>
                        <td>외부 시스템</td>
                        <td>GitHub, FileZilla, ColorCop</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    
    <br><br>
    
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-12">
                    <h5>2.프로젝트 개발 분담</h5>
                </div>
                <table class="intro-table">
                    <tr>
                        <th>조원/분류</th>
                        <th>개발단위</th>
                        <th>핵심기술</th>
                    </tr>
                    <tr>
                        <th rowspan='7'>오승세</th>
                        <td>▶ 프로젝트 아키텍처 설계</td>            
                        <td>프로젝트 내부구조 설계, 필요기술 파악, UI인터페이스 구성, 템플릿작성</td>
                    </tr>
                    <tr>
                        <td>▶ 프로젝트 실서버 배포</td>
                        <td>프로젝트 빌드, .war File 실서버 배포&#40;Filezilla&#41;</td>
                    </tr>
                    <tr>
                        <td>▶ 프로젝트 버전관리</td>
                        <td>GitBash 커맨드를 통한 버전관리&#40;브랜치관리, Merge, Conflict해결&#41;
                            	▷<a href="https://github.com/SeungseOh/Bitcamp3rdProject" target="_blank">Git 페이지 링크</a>
                        </td>
                    </tr>
                    <tr>
                        <td>▶ 로그인/회원가입 페이지</td>
                        <td>Ajax활용 JSON데이터 비동기 통신&#40;중복확인&#41;, JavaMail API	
                            &#38;SHA-256&#40;이메일인증&#41;, reCAPTCHA&#40;자동가입방지&#41;</td>
                    </tr>
                    <tr>
                        <td>▶ 취업교육과정 페이지</td>
                        <td>Jquery&#38;CSS&#40;사이드 토글 내비게이션&#41;, CKEditor&#40;교육신청&#41;, 게시판 페이징 처리</td>
                    </tr>
                    <tr>
                        <td>▶ 최신기술 및 IT정보 페이지</td>
                        <td>Ajax활용 JSON 배열 데이터 비동기 통신을 하여 실시간 동적&#40;DynamicQuery&#41;검색 및 실시간 페이징 처리</td>
                    </tr>
                    <tr>
                        <td>▶온라인 상담 페이지</td>
                        <td>CKEditor</td>
                    </tr>
                    
                    <tr>
                    	<th rowspan='5'>조부광</th>
                    	<td>▶ 프로젝트 버전관리</td>
                    	<td>GitBash 커맨드를 통한 버전관리(브랜치관리)</td>
                    </tr>
                    <tr>
                        <td rowspan='2'> ▶ 커뮤니티 페이지</td>            
                        <td>CKEditor&#40;자유게시판 글작성&#41;, CSS&#40;사이드 내비게이션 및 게시판 디자인&#41;, 게시판 페이징 처리 </td>
                    </tr>
                    <tr>
                    	<td>Ajax활용 JSON데이터 비동기 통신&#40;댓글업로드 및 수정삭제&#41;, 외부 응용프로그램 삽입&#40;프로젝트동영상&#41;</td>
                    </tr>
                    <tr>
                        <td>▶ 공지사항 페이지</td>
                        <td>CKEditor, Ajax활용 JSON데이터 비동기 통신&#40;댓글업로드 및 수정삭제&#41;, 게시판 페이징 처리 </td>
                    </tr>
                    <tr>
                        <td>▶ 키워드 검색 페이지</td>
                        <td>Ajax활용 JSON데이터 비동기 통신 &#40;인기검색어 로드&#41;, 검색결과 데이터 추출</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <br><br><br>
    
    <%@ include file="../include/plugin_js.jsp" %>
    
	<%@ include file="../include/footer.jsp" %>
</body>
  
</html>


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
    .lec-intro{
        border-top: 2px #DDDDDD solid;
        border-bottom: 2px #DDDDDD solid;
    }
    .lec-intro tr th{
        width: 160px;
        text-align: center;
        background-color: #EEEEEE;
        border-bottom: 1px #FFFFFF solid;
    }
    .lec-intro tr td{
        text-align: left;
        border-bottom: 1px #EEEEEE solid;
        padding: 10px 5px 10px 10px;
    }
    .lec-intro caption{
        padding: 40px 0 50px 305px;
    }
    
    /*강좌테이블*/
    .lec_curr{
        border: 1px white solid;
        border-collapse: separate;
    }
    .lec_curr > thead th{
        border: 1.5px white solid;
        background-color: #999999;
        color: white;
        text-align: center;
        height: 40px;
    }
    .lec_curr > tbody th{
        border: 1px white solid;
        width: 180px;
        background-color: #F2F2F2;
        text-align: center;
    }
    .lec-name{
        border: 1px #EEEEEE solid;
        width: 210px;
        text-align: center;
    }
    .lec-content{
        border: 1px #EEEEEE solid;
        text-align: left;
    }
    .lec_curr caption{
        padding: 40px 0 50px 305px;
    }
    
    /*페이지스크롤버튼*/
    .btn-scroll{
        width: 150px;
        height: 40px;
        border: 0;
        background-color: #690708;
        font-size: .9rem;
        color: white;
        font-weight: bold;
        cursor: pointer;
    }
    .btn-scroll.active{
        color: black;
        background-color: white;
        border-top: 2px #690708 solid;
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
            
            <!--선택한 과정 상세설명-->
            <div class="col-md-9">
                
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/${lec.inner_img_path}" alt="${path}/imgs/lecture/${lec.inner_img_path}">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <table class="lec-intro">
                            <tr>
                                <th>과정개요</th>
                                <td>
                               		 한국콘텐츠진흥원의 자료에 따르면 콘텐츠 산업 관련 상장사의 매출액은 22조 3,336억원으로 전년대비 5.5% 성장하였습니다. 정보서비스업 , 소프트웨어 개발 및 공급업이 수익성과 성장성이 높게 나타나고 있습니다. 이처럼 SW분야는 더욱더 중요해지고 있으며, 교육부와 미래창조과학부에서는 2018부터 초 중등학교에서 SW 의무교육을 진행한다고 국무회의에서 발표한 바 있습니다. 
									이렇게 성장하는 IT분야에 맞추어 가장 많이 활용되는 언어인 JAVA에 대해 기초부터 학습할 수 있도록 구성된 과정입니다.
                                </td>
                            </tr>
                            <tr>
                                <th>교육기간</th>
                                <td>${lec.start_date}~${lec.end_date} (6개월, 총 1,000시간)</td>
                            </tr>
                            <tr>
                                <th>교육일정</th>
                                <td>월 ~ 금 09:00 ~ 18:00 [점심시간 13:00 ~ 14:00] * 1일 8시간</td>
                            </tr>
                            <tr>
                                <th>교육장소</th>
                                <td>${lec.center}</td>
                            </tr>
                            <tr>
                                <th>교육정원</th>
                                <td>${lec.recruit}명</td>
                            </tr>
                            <tr>
                                <th>교육대상</th>
                                <td>
                                    ● 고등학교 졸업이상<br>
                                    ● 실업자 / 미취업자 / 취업준비생<br>
                                    ● 전문대학교,4년제 대학교 졸업예정자 또는 졸업자<br>
                                    ● 사이버대학교 / 야간대학교 / 학점은행제 재학생 가능<br>
                                    ● 직업안정기관에 구직등록한 15세 이상 실업자<br>
                                    ● 고등학교 3학년 재학생으로서 고등교육기관에 진학하지 않는 학생<br> 
                                    ● 취업성공패키지 유무 상관없음
                                </td>
                            </tr>
                            <tr>
                                <th>교육비용</th>
                                <td>전화 / 온라인문의</td>
                            </tr>
                            <tr>
                                <th>전망 및 진출분야</th>
                                <td>
									향후 웹프로그래머의 고용은 증가할 것으로 전망된다.<br>블로그와 소규모 사업자의 사이트가 늘어나는 등 인터넷 웹사이트 수가 급증하고 있다. 또한, 집에서 홈네트워크를 이용해 각종 민원업무를 보거나 교육정보, 
									생활정보를 얻는 등 인터넷 웹사이트를 통한 정보교환, 금융거래, 상거래 등도 향후 더욱 가속화될 것이다.<br>
									이처럼 웹사이트 이용자가 늘어남에 따라 인터넷을 이용한 다양한 응용프로그램과 콘텐츠의 개발 필요성이 커지면서 웹프로그래머의 수요가 늘어날 것으로 보인다.<br>
									<br>-교육수료후 진출분야-<br>
									<br>1.자바기반 웹개발자 (홈페이지제작 및 쇼핑몰사이트 구축)<br>
									2.웹서버 관리자
								</td>
                            </tr>
                            <tr>
                                <th>문의전화</th>
                                <td>${lec.phone_num}</td>
                            </tr>
                            
                            <caption>
                                <button type="button" class="btn btn-primary" onclick="location.href='${path}/lecture/consult'">온라인 상담</button>
                                <button type="button" class="btn btn-info" onclick="location.href='${path}/lecture/apply?id=${lec.lec_id}'">교육과정 신청</button>
                            </caption>
                        </table>
                    </div>
                </div>
                
                <br id="scroll-intro"><br>
                <div class="row">
                    <div class="col-md-12" style="padding-left: 120px">
                        <button type="button" class="btn-intro btn-scroll active">과정소개</button>
                        <button type="button" class="btn-curr btn-scroll">커리큘럼</button>
                        <button type="button" class="btn-facility btn-scroll">교육시설</button>
                        <button type="button" class="btn-support btn-scroll">교육생지원</button>
                    </div>
                </div>
                
                <br>
                
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub01.jpg">
                    </div>
                </div>
                
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub02.jpg">
                    </div>
                </div>
                
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub03.jpg">
                    </div>
                </div>
                
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub04.jpg">
                    </div>
                </div>
                
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub05.jpg">
                    </div>
                </div>
                
                <br>
                
                <br id="scroll-curr"><br>
                <div class="row">
                    <div class="col-md-12" style="padding-left: 120px">
                    	<button type="button" class="btn-intro btn-scroll">과정소개</button>
                        <button type="button" class="btn-curr btn-scroll active">커리큘럼</button>
                        <button type="button" class="btn-facility btn-scroll">교육시설</button>
                        <button type="button" class="btn-support btn-scroll">교육생지원</button>
                    </div>
                </div>
                
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub06.jpg">
                    </div>
                </div>
                
                <br><br><br>
                
                
                
                <div class="row">
                    <div class="col-md-12">
                        <table class="lec_curr">
                            <thead>
                            <tr>
                                <th>교과목명</th>
                                <th>세부과목</th>
                                <th>교육내용</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th rowspan="9">Java</th>
                                <td class="lec-name">Java Advanced Programming</td>
                                <td class="lec-content">
					                                    ㆍ 자바 클래스와 객체 (객체이해, 클래스/인스턴스, 캡슐화/상속을 이용한 클래스 설계)<br>
					                                    ㆍ 고급 OOP 기법 (다형성과 상속, 인터페이스, 객체관계 모델링, 클래스)<br>
					                                    ㆍ 자료구조/알고리즘 (Java Collection Framework의 이해 및 활용 방법)<br>
					                                    ㆍ 고급 입/출력 기법 (InputStream, OutputStream, Java Sink Stream, ,NIO 활용방법)<br>
					                                    ㆍ XML Programming (XML Namespace  기본 문법, XSL, XLink, Xpointer XSLT)<br>
					                                    ㆍ Java Multi Thread (Thread 와 Process, JVM, JCF를 이용한 Thread 관리 기법)<br>
					                                    ㆍ NetworkProgramming (TCP/IP 개요, TCP, Multi Socket, UDP, Multicast, P2P)
                                </td>
                            </tr>
                            <tr>
                                <td class="lec-name">Java Web Programming</td>
                                <td class="lec-content">
					                                    ㆍDatabase (데이터베이스 개요, SQL문, JDBC 실행 및 처리)<br>
					                                    ㆍ Servlet (Web 서버 설정 및 응용, Servlet 프로그래밍)<br>
					                                    ㆍ JSP (java 와 JSP, Web 세션 및 필수처리, JSP 게시판 구현)
                                </td>
                            </tr>
                            <tr>
                                <td class="lec-name">Model2 Programming</td>
                                <td class="lec-content">
					                                    ㆍModel2의 장점/특징 (아키텍처, 뷰 컴포넌트 분리, FrontController, DispatcherServlet)<br>
					                                    ㆍ 디자인패턴/핵심기술 (Command , 프로젝트 등록,조회,변경,삭제 구현 / 프론트 컨트롤러, 추상 클래스, DB 커넥션풀)<br>
					                                    ㆍ Annotation (애노테이션, 커스텀 애노테이션,빈 관리 자동화, 컨트롤러에 적용)
                                </td>
                            </tr>
                            <tr>
                                <td class="lec-name">Java Open Framework</td>
                                <td class="lec-content">
					                                    ㆍStructs Framework (Struts요소, Action,ActionForm, Validator, Tiles를 UI처리 Struts 2.x)<br>
					                                    ㆍ Java &#38; Ajax (XML, JSON, Ajax 연동, ContentNegotiatingViewResolver의 활용)<br>
					                                    ㆍ Spring Framework (Spring 프레임웍, Spring의Bean, DispatcherServlet, HandlerMapping)<br>
					                                    ㆍ myBatis &#38; Hibrnate (OR맵퍼와 SQL맵퍼, Hibernate의 SessionXML을 활용, Spring연결)
                                </td>
                            </tr>
                            <tr>
                                <td class="lec-name">Android Advanced Programming</td>
                                <td class="lec-content">
					                                    ㆍ 안드로이드 개요 (안드로이드 OS 구조 및 개발환경)<br>
					                                    ㆍ 애플리케이션 구성요소 (BR, CP, Service 개요)<br>
					                                    ㆍ 사용자 인터페이스 (그래픽 처리, 터치, 위젯, 토스트)<br>
					                                    ㆍ 컴포넌트 (스레드, 멀티미디어,센서,네트워크,액티비티인텐트,콘텐트 프로바이더)<br>
					                                    ㆍ 서비스와 리시버 (원격서비스, 브로드캐스트리시버, SMS리시버, 매니페스트)<br>
					                                    ㆍ Storage &#38; Networking (CRUD, Android Network, Threading, WebView를 이용한 브라우징)
                                </td>
                            </tr>
                            <tr>
                                <td class="lec-name">Mobile Web App Programming</td>
                                <td class="lec-content">
					                                    ㆍ HTML5 (Mobile Web과 Hybrid App, UX와 UI, HTML5, HTML API)<br>
					                                    ㆍ javaScript &#38; CSS (CSS 3, 자바스크립트, 함수, 내장객체,DOM모델, 동적 화면, OOP(객체프로그래밍), 이벤트 처리)<br>
					                                    ㆍ jQuery Mobile (jQuery함수, 선택자, 이벤트, Effect&#38;Animation, Plugins)<br>
					                                    ㆍ PhoneGap (하이브리드 프레임워크, 폰갭 기반 하이브리드 앱 구현)
                                </td>
                            </tr>
                            <tr>
                                <td class="lec-name">웹앱 보안 프로그래밍</td>
                                <td class="lec-content">
					                                    ㆍ HTML 인젝션/스크립팅 (인젝션 포인트, XSS, 크로스 요청 위조, CSRF와 HTML)<br>
					                                    ㆍ 데이터변조 (SQL 인젝션, SQL문 해부, HTML5의 웹 스토리지 API, 안전한 SQL문, 인증체계 우회공격, 요청제한, 피싱, 패스워드)<br>
					                                    ㆍ 결함 공격 (설계적 결함 공격, 플랫폼 공격(서버, 서비스, 접근제한), 브라우저와 프라이버시 공격)
                                </td>
                            </tr>
                            <tr>
                                <td class="lec-name">실무형 웹앱 프로젝트</td>
                                <td class="lec-content">
					                                    ㆍ 산업체 특강 (프로젝트 특강, 취업특강)<br>
					                                    ㆍ 프로젝트 기획 (웹&#38;앱 프로젝트 주제 선정 및 계획 수립)<br>
					                                    ㆍ 프로젝트 분석 (프로그램 기능향상, 요구사항 정의)<br>
					                                    ㆍ 프로젝트 설계 (기본설계, 상세설계, 테스트 설계)<br>
					                                    ㆍ 프로젝트 개발 (코딩 및 단위 테스트)<br>
					                                    ㆍ 프로젝트 마무리 (프로젝트 결과 정리, 디버깅, 발표준비)
                                </td>
                            </tr>
                            </tbody>
                            <caption>
                                <button type="button" class="btn btn-primary" onclick="location.href='${path}/lecture/consult'">온라인 상담</button>
                                <button type="button" class="btn btn-info" onclick="location.href='${path}/lecture/apply?id=${lec.lec_id}'">교육과정 신청</button>
                            </caption>
                        </table>
                    </div>
                </div>
                
                
                
                <br><br><br><br>
                
                <br id="scroll-facility"><br>
                <div class="row">
                    <div class="col-md-12" style="padding-left: 120px">
                        <button type="button" class="btn-intro btn-scroll">과정소개</button>
                        <button type="button" class="btn-curr btn-scroll">커리큘럼</button>
                        <button type="button" class="btn-facility btn-scroll active">교육시설</button>
                        <button type="button" class="btn-support btn-scroll">교육생지원</button>
                    </div>
                </div>
                
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub07.jpg">
                    </div>
                </div>
                
                <br>
                
                <br id="scroll-support"><br>
                <div class="row">
                    <div class="col-md-12" style="padding-left: 120px">
                        <button type="button" class="btn-intro btn-scroll">과정소개</button>
                        <button type="button" class="btn-curr btn-scroll">커리큘럼</button>
                        <button type="button" class="btn-facility btn-scroll">교육시설</button>
                        <button type="button" class="btn-support btn-scroll active">교육생지원</button>
                    </div>
                </div>
                
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="${path}/imgs/lecture/sub08.jpg">
                    </div>
                </div>
                
                <br><br>
                
                <div class="row">
                    <div class="col-md-12" style="padding-left: 305px">
                        <button type="button" class="btn btn-primary" onclick="location.href='${path}/lecture/consult'">온라인 상담</button>
                        <button type="button" class="btn btn-info" onclick="location.href='${path}/lecture/apply?id=${lec.lec_id}'">교육과정 신청</button>
                    </div>
                </div>
                
                <br><br><br>
                
                <div class="row">
                    <div class="col-md-12" style="padding-left: 390px">
                        <button type="button" onclick="history_back()" class="btn btn-danger">목록</button>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    
    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script>
		function history_back(){
			window.history.back();
		}
	
        $(function(){
        	
        	//페이지 스크롤
        	$('.btn-intro').bind('click', function() {
        	    $('html').animate({scrollTop: $('#scroll-intro').offset().top}, 400);
      	  	});
        	$('.btn-curr').bind('click', function() {
        		$('html').animate({scrollTop: $('#scroll-curr').offset().top}, 400);
      	  	});
        	$('.btn-facility').bind('click', function() {
        		$('html').animate({scrollTop: $('#scroll-facility').offset().top}, 400);
      	  	});
        	$('.btn-support').bind('click', function() {
        		$('html').animate({scrollTop: $('#scroll-support').offset().top}, 400);
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


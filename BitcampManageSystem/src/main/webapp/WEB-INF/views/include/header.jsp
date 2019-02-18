<%@page import="com.cafe24.bitcamp.member.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--상단 프라이빗 내비게이션바-->
<nav class="navbar navbar-expand-sm">
	<div class="container-fluid">
	    <div class="navbar-header">
	        <a class="navbar-brand" href="index.html">비트캠프 강동센터</a>
	    </div>
	    
	    <!--관리자 및 행정직원일 경우 관리 네비 / 강사일경우 학생 및 수업관리 / 학생일 경우 수업확인 및 출결확인 -->
	    <div class="collapse navbar-collapse">
	        <a class="nav-link" href="#">시스템관리</a>
	        <a class="nav-link" href="#">학생관리</a> 
	    </div>
	    
	    <!--로그인하였을 경우 프로필 사진과 이름 및 마이페이지 이동가능 마이페이지에서는 네비게이션에서 보이는 관리페이지 이동가능-->
	    <div class="nav navbar-nav navbar-right">
	    	<c:if test="${user eq null}">
	    		<a class="nav-link" href="${path}/login">로그인</a>
		        <span class="nav-link" style="margin: 0px; padding-left: 0px; padding-right: 0px;">|</span>
		        <a class="nav-link" href="${path}/register">회원가입</a>
	    	</c:if>
	    	<c:if test="${user ne null}">
	    		<span class="nav-link">${user.name}님 환영합니다.</span>
	    		<span class="nav-link" style="margin: 0px; padding-left: 0px; padding-right: 0px;">|</span>
	    		<a class="nav-link" href="${path}/#">마이페이지</a>
	    		<span class="nav-link" style="margin: 0px; padding-left: 0px; padding-right: 0px;">|</span>
	    		<a class="nav-link" href="${path}/memberlogout.do">로그아웃</a>
	    	</c:if>
	    </div>
	</div>
</nav>
   
<!--상단 상표/통합 검색바-->
<div class="container-fluid">
    <div class="row">
    	<div class="col-md-2" id="sign">
            <p>본 웹사이트는 비트캠프학생</p>
            <p>포트폴리오 프로젝트입니다.</p>
            <p>Made by 오승세,조부광</p>
        </div>
        <div class="col-md-0 fitting" id="main-logo">
        	<a href="${path}/">
            <img src="${path}/imgs/logo2.jpg">
            </a>
        </div>
        <div class="col-md-0" id="search-bar">
            <form action="${path}/search" name="searchFrm" method="get" >
                <input type="text" name="search" id="search">
			    <a href="javascript:document.searchFrm.submit()"><img src="${path}/imgs/btn_search.png"></a>
            </form>
            <!--인기검색어를 표시한다(최대 5개)-->
            <div id="popular-keyword-layer">
                <span><img src="${path}/imgs/tit_keyword.png"></span>
                <span id="popular-keyword-link"></span>
            </div>
        </div>
        <div class="col-md-2" id="sub-logo">
            <img src="${path}/imgs/sub-logo.jpg">
        </div>
    </div>
</div>

<!--상단 메인 내비게이션바-->
<nav class="navbar navbar-expand-md">
    <div class="navbar-collapse">
        <ul class="navbar-nav nav-fill w-100" style="padding: 0 180px 0 180px;">
            <li class="nav-item">
                <a class="nav-link" href="${path}/notice/intro">포트폴리오 소개</a>
            </li>
            <li class="nav-item dropdown">
                 <a class="nav-link" href="${path}/lecture">취업교육과정</a>
                 <div class="dropdown-menu">
                     <a class="dropdown-item" href="${path}/lecture/list?cen=sch&ty=1&page=1">국비무료과정</a>
                     <a class="dropdown-item" href="${path}/lecture/list?cen=sch&ty=2&page=1">해외 취업과정</a>
                 </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${path}/notice/newtec">최신기술 및 IT정보</a>
            </li>
            <li class="nav-item dropdown">
                 <a class="nav-link" href="${path}/comm/free">커뮤니티</a>
                 <div class="dropdown-menu">
                 	<a class="dropdown-item" href="${path}/comm/free">자유게시판</a>
                     <a class="dropdown-item" href="${path}/comm/lecture">교육후기</a>
                     <a class="dropdown-item" href="${path}/comm/project">교육생 프로젝트</a>
                 </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${path}/lecture/consult">온라인상담</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${path}/comm/notice">공지사항</a>
            </li>
        </ul>
    </div>
</nav>

 
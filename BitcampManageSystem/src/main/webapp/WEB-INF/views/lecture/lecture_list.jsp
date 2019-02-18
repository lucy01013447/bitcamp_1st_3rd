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
	/*강의정보이미지*/
	.lecture-img{
	    padding-right: 0px;
	}
	.lecture-img img{
	    width: 100%;
	}
	/*강의정보테이블*/
	.lecture-info table{
	    margin-top: 5px;
	    width: 100%;
	    font-size: 0.85rem;
	}
	/*강의정보테이블 정보셀 하단 밑줄*/
	.lecture-info > table tr{
	    border-bottom: #EEEEEE 1px solid;
	}
	/*강의정보테이블 정보셀*/
	.lecture-info > table th,
	.lecture-info > table td{
	    padding: 6px 0px 6px 0px;
	}
	/*강의정보테이블 정보 분류 셀*/
	.lecture-info > table th{
	    width: 85px;
	}
	/*강의정보테이블 정보 나누는 가운데 작대기*/
	.lecture-info > table td:nth-child(2){
	    text-align: center;
	    color: #AAB2C8;
	    padding-right: 8px;
	}
	/*강의정보테이블 하단 텍스트 캡션*/
	.lecture-info > table caption{
	    margin: 0px 10px 0px 10px;
	    color: black;
	    font-size: 0.85rem;
	}
	hr{
	    margin: 35px 0px 20px 0px;
	}
	/*하단 페이지 이동버튼*/
	.btn.btn-light{
	    margin-left: -3px;
	    margin-right: -3px;
	    border: #DDDDDD 1px solid;
	    font-weight: bold;
	}
	.btn.btn-light.active {
	    color: white !important;
	    background-color: #333534 !important;
	    cursor: default;
	}
	.btn.btn-light.disabled{
	    background-color: #B4B4B4;
	    cursor: no-drop;
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
            
            
            <!--개설된 모집과정-->
            <div class="col-md-9">
            	<c:forEach var="lec" items="${lecList}">
           		<div class="lecture-module">
                    <div class="row">
                        <div class="col-md-5 lecture-img">
                        	<a href="${path}/lecture/view?id=${lec.lec_id}">
                        		<img src="${path}/imgs/lecture/${lec.thumbnail_img_path}" alt="자바개발자">
                        	</a>
                            
                        </div>
                        <div class="col-md-7 lecture-info">
                            <table>
                                <tr>
                                    <th><i class="fa fa-bars lec-icons" style="color:Tomato;width: 20px;margin-right: 5px;"></i>교육과정</th>
                                    <td>|</td>
                                    <td>
                                    	<a href="${path}/lecture/view?id=${lec.lec_id}" style="text-decoration: none; color: black;"><b>${lec.title}</b></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th><i class="fa fa-map-marker" style="color:Tomato;width: 20px;margin-right: 5px;"></i>교육장소</th>
                                    <td>|</td>
                                    <td>${lec.center}</td>
                                </tr>
                                <tr>
                                    <th><i class="fa fa-history" style="color:Tomato;width: 20px;margin-right: 5px;"></i>교육기간</th>
                                    <td>|</td>
                                    <td>${lec.start_date} ~ ${lec.end_date}</td>
                                </tr>
                                <tr>
                                    <th><i class="fa fa-user-friends" style="color:Tomato;width: 20px;margin-right: 5px;"></i>모집인원</th>
                                    <td>|</td>
                                    <td>${lec.recruit} 명</td>
                                </tr>
                                <tr>
                                    <th><i class="fa fa-phone" style="color:Tomato;width: 20px;margin-right: 5px;"></i>교육문의</th>
                                    <td>|</td>
                                    <td>${lec.phone_num}</td>
                                </tr>
                                <caption>${lec.thumbnail_explain}</caption>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px;">
                        <div class="col-md-0 col-centered">
                            <button type="button" class="btn btn-success" onclick="location.href='${path}/lecture/apply?id=${lec.lec_id}'">
                                <i class="fa fa-user-check" style="color:white;margin-right: 5px;"></i>신청하기
                            </button>
                            <button type="button" class="btn btn-primary" onclick="location.href='${path}/lecture/view?id=${lec.lec_id}'">
                                <i class="fa fa-check" style="color:white;margin-right: 5px;"></i>자세히 보기
                            </button>
                        </div>
                    </div>
                    <hr>
                </div>
            	</c:forEach>
                
                <!-- 페이지바 -->
                <div class="row">
                    <div class="col-md-0 col-centered">
                        <div id="movebuttons">
                        <c:choose>
                    		<c:when test="${paging.beginPage < paging.pagePerBlock}">
                        		<button type="button" class="btn btn-light disabled"><i class="fas fa-chevron-left"></i></button>
                    		</c:when>
                    		<c:otherwise>
                        		<button type="button" class="btn btn-light" onclick="location.href='${path}/lecture/list?cen=${req.center}&ty=${req.type}&page=${paging.beginPage -1}'"><i class="fas fa-chevron-left"></i></button>
                        	</c:otherwise>
                        </c:choose>
                        
                        <c:forEach var="p" begin="${paging.beginPage}" end="${paging.endPage}" step="1">
                        	<c:choose>
                        		<c:when test="${p == paging.nowPage }">
                        			<button type="button" class="btn btn-light active">${p}</button>
                        		</c:when>
                        		<c:otherwise>
                        			<button type="button" class="btn btn-light" onclick="location.href='${path}/lecture/list?cen=${req.center}&ty=${req.type}&page=${p}'">${p}</button>
                        		</c:otherwise>
                        	</c:choose>
                        </c:forEach>
                        <c:choose>
                    		<c:when test="${paging.endPage >= paging.totalPage }">
                    			<button type="button" class="btn btn-light disabled"><i class="fas fa-chevron-right"></i></button>
                    		</c:when>
                    		<c:otherwise>
                    			<button type="button" class="btn btn-light" onclick="location.href='${path}/lecture/list?cen=${req.center}&ty=${req.type}&page=${paging.beginPage + paging.pagePerBlock}'">
                    				<i class="fas fa-chevron-right"></i>
                    			</button>
                        	</c:otherwise>
                        </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    
    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script>
        $(function(){
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


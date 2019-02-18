<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<style type="text/css">
 .jumbotron{
     background: url('${path}/imgs/community.jpg') no-repeat center;
     background-color: #1B1C1D;
     height: 350px;
 }
 
 /*사이드내비게이션*/
 nav.vertical {
     text-align: left;
     
 }    
 /*사이드내비게이션 내부 모든 ul태그*/
 nav.vertical ul {
     margin: 0;
     padding: 0;
 }
 nav.vertical > ul > li {
     display: block;
   
 }
 /*사이드내비게이션 메뉴(지점)/모든지점(a태그)*/
 nav.vertical > ul > li a {
     display: block;
     font-size: 14px;
     font-weight: bold; 
     height:40px;
     line-height: 40px;
     border-bottom: #D8D8D8 1px solid;
     margin: 0;
     text-decoration: none;
     padding-left:40px;
 }
 


 
	
 nav.vertical > ul > li > a.toggle_white:hover {
     cursor: pointer;
     color: black;
     background-color: #F2F2F2;
     text-decoration: none;
 }
 
  nav.vertical > ul > li > a.toggle_red:hover {
     cursor: pointer;
     color: white;
     text-decoration: none;
 }
 
 

 /*교육후기 글별 이미지*/
 .lecture-img{
     padding-right: 0px;
 }
 .lecture-img img{
     width: 80%;
     height: 140px;
 }


 
 /*갤러리 글별 정보*/
 .lecture-info {
	 text-align:left;
 }
 
 .lecture-info div a {
 	text-decoration:none;
 	color:black;
 	text-weight:bold;
 	font-sixe: 16px;
 }
 .lecture-info div a:hover {
 	color: blue;
 	text-decoration:none;
 	text-weight:bold;
 }

 /*갤러리 리스트*/
 .lecturelist {
 	border: 2px solid #D8D8D8; 
 	border-radius:5px; 
 	padding: 20px 20px 10px 20px;
 }
 
 /*갤러리 모듈*/
 .line {
 	border: 1px dotted #D8D8D8;	
 }
 .gap10 {
 	padding-top: 10px;
 }
 .gap20 {
 	padding-top: 20px;
 }
 .lecture-module {
 	padding-bottom:10px;
 	line-height: 135%;
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
 
 .toggle_red {
 	background-color: red;
 	color: white;
 }
 
 .toggle_white {
 	color: black;
 	background-color: white;
 }
</style>


<body>

	<%@ include file="../include/header.jsp" %>
 	
 	 <!--중앙 점보트론-->
    <div class="jumbotron"></div>
    
    
    <div class="container">
    	<div class="row">
            <!--사이드 내비게이션-->
            <div class="col-md-2">
                <div style="margin: 0px 20px 0px -30px;">
                    <img src="${path}/imgs/left_sub05.jpg" alt="사이드내비">
              	 </div>
                <nav class="vertical">
                <ul>
                	<li>
                        <a href="${path }/comm/free" class="toggle_white"> 자유게시판</a>
                    </li>
                    <li>
                        <a href="${path }/comm/lecture" class="toggle_red"> 교육후기</a>
                    </li>
                    <li>
                        <a href="${path }/comm/project" class="toggle_white"> 교육생 프로젝트</a>
                    </li>
                    
                </ul>
                </nav>
          </div>
          
            <!--교육후기 게시글 리스트-->
           <div class="col-md-10">
            	<img src="${path}/imgs/t_sub05_02.jpg" width="906" height="164"><br>
            	
            	<div class="lecturelist" style="width:95%; align:center;">
                <c:forEach var="lec" items="${lecList }" varStatus="status">
                <div class="gap10"></div>
                <div class="lecture-module row" >
                	<div class="col-md-4 lecture-img" > 
						<a href="/comm/lecture/one?seq=${lec.seq}"> 
						<img src="${path}${lec.imagepath}">	 			
						</a>
					</div>
					<div class="col-md-8 lecture-info">
						<div style="font-size:16px;">
							<a href="/comm/lecture/one?seq=${lec.seq}">
								<b>${lec.title }</b>
							</a>
						</div>
						<div class="gap10"></div>
						<hr style="border-style:dotted;">	
						<div class="gap10"></div>
						<div style="font-size:14px;">
							${lec.intro}
						</div>
						<div class="gap10"></div>
						<a href="/comm/lecture/one?seq=${lec.seq}" class="btn btn-info btn-sm" style="float:right;"><b>자세히보기</b></a>
					</div>
              	 </div>
              	 <c:if test="${!status.last}">
              	 	<hr class="line">
              	 </c:if>
              	 </c:forEach>
               </div>
               <br>
              <!-- 페이지바 -->
               <div class="row">
                    <div class="col-md-0 col-centered">
                        <div id="movebuttons">
                        	<c:choose>
                        		<c:when test="${page.beginPage < page.pagePerBlock }">
                            		<button type="button" class="btn btn-light disabled"><i class="fas fa-chevron-left"></i></button>
                        		</c:when>
                        		<c:otherwise>
                            		<button type="button" class="btn btn-light" onclick="javascript:location.href='/comm/lecture?nowPage=${page.beginPage -1}'"><i class="fas fa-chevron-left"></i></button>
                            	</c:otherwise>
                            </c:choose>
                            
                            <c:forEach var="p" begin="${page.beginPage }" end="${page.endPage }" step="1">
                            	<c:choose>
                            		<c:when test="${p == page.nowPage }">
                            			<button type="button" class="btn btn-light active">${p }</button>
                            		</c:when>
                            		<c:otherwise>
                            			<button type="button" class="btn btn-light" onclick="javascript:location.href='/comm/lecture?nowPage=${p}'">${p }</button>
                            		</c:otherwise>
                            	</c:choose>
                            </c:forEach>
                            <c:choose>
                        		<c:when test="${page.endPage >= page.totalPage }">
                        			<button type="button" class="btn btn-light disabled"><i class="fas fa-chevron-right"></i></button>
                        		</c:when>
                        		<c:otherwise>
                        			<button type="button" class="btn btn-light" onclick="javascript:location.href='/comm/lecture?nowPage=${page.beginPage + page.pagePerBlock}'"><i class="fas fa-chevron-right"></i></button>
                            	</c:otherwise>
                            </c:choose>
                            
                           
                        </div>
                    </div>
                </div>
                <!-- 페이지바 끝 -->
        	</div>
       	</div>
    </div>
    
    
    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
	<%@ include file="../include/footer.jsp" %>
	

</body>
  
</html>


<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<style type="text/css">
.jumbotron{
    background: url('${path}/imgs/customer_center.jpg') no-repeat center;
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
    /* text-shadow: 0 1px 1px rgba(0,0,0,.1); */
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

/*리스트 내 a태그*/
.freelist > a {
	text-decoration:none;
}


/*모듈*/
.line {
	border: 1px dotted #F2F2F2;
}
.gap10 {
	padding-top: 10px;
}
.gap20 {
	padding-top: 20px;
}
.free-module {
	padding:5px 20px 10px 20px;

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

/*사이드 네비  색상*/
.toggle_red {
	background-color: red;
	color: white;
}

.toggle_white {
	color: black;
	background-color: white;
}

/*리스트 테이블 스타일*/
table  tr  td  a:hover {
	color: blue;
 	text-decoration:none;
 	text-weight:bold;
}
table  tr  td  a {
	color: black;
 	text-decoration:none;
 	text-weight:bold;
}

table tr th, table tr td {
	text-align: center;
}
table tr{
	line-height: 14px;
}
table th {
	line-height: 16px;
}

.title {
	text-align: left;
}
</style>

<body>

	<%@ include file="../include/header.jsp" %>
 	
 	<!--중앙 점보트론-->
    <div class="jumbotron"></div>
    
    
    <div class="container">
    	<div class="row">
           
          
            <!--자유게시판 게시글 리스트-->
           <div class="col-md-0 col-centered">
            	<img src="${path}/imgs/t_sub08_01.jpg" width="906" height="164"><br>
            	<div class="noticelist">
            	<table class="table table-striped" width='100%'>
            		<thead>
            		<tr>
	            		<th width='10%'>No</th>
	            		<th width='45%' >Subject</th>
	            		<th width='20%'>Writer</th>
	            		<th width='15%'>Date</th>
	            		<th width='10%'>Read</th>
            		</tr>
            		</thead>
            		<c:forEach var="n" items="${noticeList}">
            		<tr style="font-size:13px;">
            			<td>
            				<c:choose>
	            				<c:when test="${n.type == 'FIXED' }">
	            					<a href="/comm/notice/one?seq=${n.seq}&nowPage=${page.nowPage}">★</a></td>
	            					<td class="title"><a href="/comm/notice/one?seq=${n.seq}&nowPage=${page.nowPage}"><b>${n.title}</b>
	            				</c:when>
	            				<c:otherwise>
	            					<a href="/comm/notice/one?seq=${n.seq}&nowPage=${page.nowPage}">${n.seq}</a></td>
	            					<td class="title"><a href="/comm/notice/one?seq=${n.seq}&nowPage=${page.nowPage}">${n.title}
	            				</c:otherwise>
            				</c:choose>
            			<c:if test="${n.countreply != 0 }">
            				<span style="color:#0174DF; font-size:13px;">[${n.countreply}]</span>
            			</c:if></a></td>
            			<td>${n.writer}</td>
            			<td>${n.date}</td>
            			<td>${n.hit}</td>
            		</tr>
            		</c:forEach>
            	</table>
				<a href="/comm/notice/insertPage" class="btn btn-outline-info btn-sm" style="float:right;">글쓰기</a>            	
                <br>
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
                            		<button type="button" class="btn btn-light" onclick="javascript:location.href='/comm/notice?nowPage=${page.beginPage -1}'"><i class="fas fa-chevron-left"></i></button>
                            	</c:otherwise>
                            </c:choose>
                            
                            <c:forEach var="p" begin="${page.beginPage }" end="${page.endPage }" step="1">
                            	<c:choose>
                            		<c:when test="${p == page.nowPage }">
                            			<button type="button" class="btn btn-light active">${p }</button>
                            		</c:when>
                            		<c:otherwise>
                            			<button type="button" class="btn btn-light" onclick="javascript:location.href='/comm/notice?nowPage=${p}'">${p }</button>
                            		</c:otherwise>
                            	</c:choose>
                            </c:forEach>
                            <c:choose>
                        		<c:when test="${page.endPage >= page.totalPage }">
                        			<button type="button" class="btn btn-light disabled"><i class="fas fa-chevron-right"></i></button>
                        		</c:when>
                        		<c:otherwise>
                        			<button type="button" class="btn btn-light" onclick="javascript:location.href='/comm/notice?nowPage=${page.beginPage + page.pagePerBlock}'"><i class="fas fa-chevron-right"></i></button>
                            	</c:otherwise>
                            </c:choose>
                            
                           
                        </div>
                    </div>
                </div>
                <!-- 페이지바 끝 -->
        		</div>
        	</div>
       	</div>
    </div>
    
    
    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
	<%@ include file="../include/footer.jsp" %>
	
	
</body>
  
</html>


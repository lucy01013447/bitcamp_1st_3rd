<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>
<style>
	center {
		margin: 80px 0 30px 0;
		font-weight: 1000;
		text-shadow: 2px 2px #DBDBDB;
		letter-spacing: 2px;
	}
	.board {
		padding:10px 0 30px 0px;
		margin:0 0 20px 0;
		 
	}
	
	.title {
		color: #5882FA;
		text-align: left;
		font-weight: bold;
		text-shadow: 1px 1px #DBDBDB;
		letter-spacing: 1.5px;
	}
	.search a {
		color:black;
		text-decoration: none;
		font-weight: 400;
	}
	.search a:hover {
		color: #5858FA;
		font-weight: 600;
	
	}
	.search {
		padding: 12px 0 0 5px;
		font-size: 13px;
		font-weight: 400;
		letter-spacing: 1.5px;
	}
	
	.onePiece {
		background-color:#EFF2FB;
		margin : 0;
		overflow:hidden;
		border-bottom: 1px solid white;
	}
	
	.board .onePiece:nth-child(even) {
		 background-color: #F9F9F9;
	}
	
	.container {
		border : 1px solid #DBDBDB;
		border-radius: 5px;
		box-shadow: 1px 1px 1px 1px #DBDBDB;
		padding: 30px;
	}
</style>
<body>

	<%@ include file="../include/header.jsp" %>
 	
    <!-- 여기부터 입력 -->
	<center><h2>'${word}' 검색 결과</h2></center> 
    <div class="container" style="padding-top:30px;">
    	<div class="title">
    		<h5>교육과정 </h5>
    	</div>
	    	<div class="row board lecture" >
			    <c:choose>
			    	<c:when test="${empty lecSearch}">
			    		검색결과가 없습니다
			    	</c:when>
			    	<c:otherwise>
				  		<c:forEach var="list" items="${lecSearch}" >
				    		<div class="col-md-6 onePiece">
								<p class="search">${list.lec_id} &nbsp;&nbsp;<a href="${path}/lecture/view?id=${list.lec_id}">${list.title}</a></p>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="title">
				<h5>자유게시판</h5>
    		</div>
			<div class="row board free">
			    <c:choose>
			    	<c:when test="${empty freeSearch}">
			    		검색결과가 없습니다
			    	</c:when>
			    	<c:otherwise>
					  	<c:forEach var="list" items="${freeSearch}">
					  		<div class="col-md-6 onePiece">
								<p class="search">${list.seq} &nbsp;&nbsp;<a href="${path}/comm/free/one?seq=${list.seq}">${list.title}</a></p>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="title">
				<h5>교육후기</h5>
    		</div>
			<div class="row board review">
			    <c:choose>
			    	<c:when test="${empty reviewSearch}">
			    		검색결과가 없습니다
			    	</c:when>
		    		<c:otherwise>
					  	<c:forEach var="list" items="${reviewSearch}" >
							<div class="col-md-6 onePiece">	
								<p class="search">${list.seq} &nbsp;&nbsp;<a href="${path}/comm/lecture/one?seq=${list.seq}">${list.title}</a></p>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="title">
				<h5>교육생 프로젝트</h5>
	    	</div>
			<div class="row board project">
			     <c:choose>
			    	<c:when test="${empty projectSearch}">
			    		검색결과가 없습니다
			    	</c:when>
			    	<c:otherwise>
			  			<c:forEach var="list" items="${projectSearch}">
							<div class="col-md-4 onePiece">	
								<p class="search">${list.seq} &nbsp;&nbsp;<a href="${path}/comm/project/one?seq=${list.seq}">${list.protitle}</a></p>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="title">
				<h5>공지사항</h5>
	    	</div>
			<div class="row board notice">
			    <c:choose>
				    <c:when test="${empty noticeSearch}">
				    		검색결과가 없습니다
				    </c:when>
			    	<c:otherwise>
					  	<c:forEach var="list" items="${noticeSearch}">
							<div class="col-md-6 onePiece">	
								<p class="search">${list.seq} &nbsp;&nbsp;<a href="${path}/comm/notice/one?seq=${list.seq}">${list.title}</a></p>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>	
	</div>
    
    <%@ include file="../include/plugin_js.jsp" %>
    
	<%@ include file="../include/footer.jsp" %>
	<script src="/plugins/font-awesome/fontawesome-all.min.js"></script>
</body>
  
</html>


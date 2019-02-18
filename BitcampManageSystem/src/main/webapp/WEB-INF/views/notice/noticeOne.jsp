<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>
<style>


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
/*사이드 네비  색상*/
.toggle_red {
	background-color: red;
	color: white;
}

.toggle_white {
	color: black;
	background-color: white;
}

/*테이블 보더*/
table {
	width: 100%;
	border-radius:5px;
}
table tr, table th, table td {
	/* text-align: center; */
	height:40px;
}
/* 
table td, table th {
	border: 1px solid #A4A4A4;
}
table tr th {
	background-color: #EFFBEF;
}
 */

.border {
	border: 1px solid gray; 
    padding: 10px;
}

.content {
	margin: 20px 0 0 0;
	border-top: 1px solid #A4A4A4; 
	border-bottom: 1px solid #A4A4A4; 
	/* border-radius:5px; */ 
	min-height: 300px;
	padding: 15px;
}
pre {
	white-space: pre-wrap; /* CSS3*/
	white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
	white-space: -pre-wrap; /* Opera 4-6 */
	white-space: -o-pre-wrap; /* Opera 7 */ 
	word-wrap: break-all; /* Internet Explorer 5.5+ */ 
}
.content {
	overflow: auto;
	letter-spacing: 1px;
}
</style>
<script>
function del() {
	if (confirm("정말 삭제하시겠습니까?")) {
		document.location.href='/comm/notice/delete?seq=${n.seq}'
	} 
	return;
}
</script>
<body>

	<%@ include file="../include/header.jsp" %>
 	
 	
 	<!--중앙 점보트론-->
    <div class="jumbotron"></div>
 	<div class="container " style="width:55%; min-width:900px;">
          <div class="col-md-0 col-centered" >
         		<img src="${path}/imgs/t_sub08_01.jpg" width="906" height="164"><br>
          			<div align="right" margin-bottom="5px">
          				<input style="margin-bottom:5px" type="button" class="btn btn-outline-info btn-sm" value="목록" onclick="history.back()"> 
	          			<c:if test="${minSeq < n.seq  && n.type == 'ORDER'}">
	          			<input style="margin-bottom:5px;" type="button" class="btn btn-info btn-sm"  value="다음글" onclick="javascript:location.href='/comm/notice/one?seq=${n.seq-1}'">
	          			<span class="glyphicon glyphicon-circle-arrow-down"></span></c:if>
	          			
	          		</div>
          		<div class="container" style="border: 1px solid #F2F2F2;">
       				<br>
          			<div class="title" style="border-bottom: 2px dotted #BDBDBD; padding:5px 10px 10px 12px;">
          				<b style="font-size:16px;">${n.title }</b>
          				<font style="font-size:12px; float:right; margin:0; padding:0;">${n.date}</font>
          			</div>
          			<div style="padding: 0 10px; text-align: right;">
        				<span style="font-size:12px; text-align:right;">작성자 <b>${n.writer }</b></span><br>
          				<span style="font-size:12px; text-align:right;">조회수 ${n.hit}</span>
          			</div>
			   	<div class="content">
			   		${n.content}
			   	</div>
			   	
			    <br>
					<div align='right'>
				    	<input type="button" class="btn btn-info btn-sm" value="수정" onclick="javascript:location.href='/comm/notice/updatePage?seq=${n.seq}&nowPage=${nowPage}'">
				    	<input type="button" class="btn btn-info btn-sm" value="삭제" onclick="del()">
				    	<input type="button" class="btn btn-info btn-sm" value="목록" onclick="history.back()"> 
					</div>
				<br><br>
				<div>
					<div style="color:#0174DF; margin-bottom:10px;">
				    	<b>&nbsp;&nbsp;Reply &nbsp;<span class="count"></span></b>
				    </div>
		        	<div class="replyList"></div>
				    <form name="replyInsertForm" id="replyInsertForm">
				   		<div class="row" style="padding: 12px;">
						    <div class="input-group" >
							    <input type="text" class="form-control col-sm-2" name="writer" placeholder="닉네임"/>
							    <input type="password" class="form-control col-sm-2" name="pwd" placeholder="비밀번호"/>
				                <input type="text" class="form-control col-sm-8" name="content" placeholder="내용을 입력하세요.">
				                <span class="input-group-btn">
				                <input type="hidden" name="type" value=2>
							  	<input type="hidden" name="n_seq" value="${n.seq}"/>
			                    <button class="btn btn-default" type="button" onclick="replyInsert()">등록</button>
			              		</span>
			                </div>
	                	</div>
			        </form><br>
		    	 </div>
				 </div>
	          </div>
    	</div>
    <%@ include file="../include/plugin_js.jsp" %>
	<%@ include file="../include/footer.jsp" %>
	<%@ include file = "noticeReply.jsp" %>

    
    
</body>
  
</html>


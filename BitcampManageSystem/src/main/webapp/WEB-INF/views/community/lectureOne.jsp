<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>
<style>
.border {
	border: 2px solid #F2F2F2; 
    border-radius:5px; 
    padding: 20px 20px 30px 20px;
}

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
}
table, tr, th {
	text-align: center;
	border: 1px solid #D8D8D8; 
}

table tr td {
	text-align: center;
}
table tr th {
	background-color: #E6E6E6;
}
table tr td img {
	width:100%;
	height: 90px;
}
pre {
white-space: pre-wrap; /* CSS3*/
white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
white-space: -pre-wrap; /* Opera 4-6 */
white-space: -o-pre-wrap; /* Opera 7 */
word-wrap: break-all; /* Internet Explorer 5.5+ */ 
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
                <!--과정선택 사이드 내비게이션-->
                <!--각 버튼은 radio버튼화되어 1개만 선택되어 활성화된다.
                <!--(label:for와 input:id가 일치해야하며 다른 버튼과 중복되면 안된다.)-->
                <nav class="vertical">
                <ul>
                    <li>
                        <a href="#" class="toggle_white"> 자유게시판</a>
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
          <div class="col-md-10 ">
          		<img src="${path}/imgs/t_sub05_02.jpg" width="906" height="164"><br>
          		<div class="border">
          		<table >
			    	<tr>
			    		<th width='10%'>제목</th>
			    		<td colspan="5">${lec.title }</td>
			    		<td rowspan="2"><img src="${path}${lec.imagepath}"></td>
			    	</tr>
			    	<tr>
			    		<th>작성자</th>
			    		<td width='15%'>${lec.writer }</td>
			    		<th width='10%'>작성일</th>
			    		<td width='15%'>${lec.date }</td>
			    		<th width='10%'>조회수</th>
			    		<td width='15%'>${lec.hit }</td>
			    	</tr>
			    </table>
			    <br>
			    <div>
			    	<img width="100%" height="300px" src="${path}${lec.imagepath}">
			    </div>
			    <div class="content">
			   	<br>
			   <pre>${lec.content}</pre>
			   	
			   	
			   	</div>
			    <center>
			    <br>
			    <input type="button" style="align:center;" class="btn btn-info" value="목록" onclick="history.back()">
			    </center>
			    </div>
          </div>
          
    
    	</div>
    </div>
    	
    
    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
	<%@ include file="../include/footer.jsp" %>
</body>
  
</html>


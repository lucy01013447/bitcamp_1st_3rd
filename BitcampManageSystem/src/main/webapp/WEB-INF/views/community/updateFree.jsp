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
table, tr, th, td {
	text-align: center;
	border: 1px solid #D8D8D8; 
	height: 40px;
}

table tr th {
	background-color:#EFFBEF;
}
.content {
	min-height: 300px;
	margin-top: 10px;
}

</style>
<script>
function check_form() {
	for (var i=0; i<document.updateFrm.elements.length; i++) {
		if (document.updateFrm.elements[0].value == "") {
				alert("제목을 입력해주세요. ");
				document.updateFrm.elements[i].focus();
				return;
			} 
		}
	document.updateFrm.submit();
}
</script>
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
                        <a href="${path }/comm/free" class="toggle_red"> 자유게시판</a>
                    </li>
                    <li>
                        <a href="${path }/comm/lecture" class="toggle_white"> 교육후기</a>
                    </li>
                    <li>
                        <a href="${path }/comm/project" class="toggle_white"> 교육생 프로젝트</a>
                    </li>
                </ul>
                </nav>
          </div>
          <div class="col-md-10">
            	<img src="${path}/imgs/t_sub05_01.jpg" width="906" height="164"><br>
            		<form action="/comm/free/updateDAO" name="updateFrm" 
            				method="post" enctype="multipart/form-data">
            			<div class="border">
	            			<div class="form-group">
	            				<label for="title"><b> 제목 </b></label>
	            				<input type="text" class="form-control" name="title" id="title" value="${f.title}">
	            			</div>
	           				<div class="form-group">	
	           					<label for="writer"><b> 이름 </b></label>
	           					<input type="text" class="form-control" name="writer" id="writer" value="${f.writer}" readonly>
	           				</div>
	           				<div class="form-group">
	            				<label for="content"><b> 내용 </b></label>
	            				<textarea name="content" class="form-control" rows="8" cols="100" id="content">${f.content}</textarea>
	            			</div>
	            			<div class="form-group">
	            				<label for="file"><b> 첨부파일 </b></label><br>
	            				<input type="file" name="uploadFile" id="file">
	            			</div> 
	            			
            			<input type="hidden" name="seq" value="${f.seq}">
            			<div align="center">
	            			<input class="btn btn-info btn-sm" type="button" onclick="check_form()"value="수정">
            				<input type="button" class="btn btn-info btn-sm" onclick="javascript:history.back()"value="글목록">
	            		</div>
	            		</div>
            		</form>
    			</div>
          
    
    	</div>
    </div>
    	
    
    <%@ include file="../include/plugin_js.jsp" %>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script src="${path}/plugins/ckeditor/ckeditor.js"></script>
	
	<script>
        CKEDITOR.replace( 'content', {
            //filebrowserUploadUrl: 'upload_ck.php'
        });
        CKEDITOR.config.toolbar = [
            ['Styles','Format','Font','FontSize'],
            ['Bold','Italic','Underline','StrikeThrough','-','Undo','Redo','-','Cut','Copy','Paste', 'Replace','-','Outdent','Indent','-','Print'],
            ['NumberedList','BulletedList','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
            ['Image','Table','-','Link', 'Smiley','TextColor','BGColor','Source']
        ] ;
    </script>
</body>
  
</html>


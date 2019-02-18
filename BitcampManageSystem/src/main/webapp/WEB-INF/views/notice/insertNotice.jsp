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
.border {
	border: 1px outset #424242;
	padding:40px;
	border-radius:5px; 
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

</style>
<script>
function check() {
	for (var i=0; i<document.insertFrm.elements.length; i++) {
		if (document.insertFrm.elements[i].value == "") {
			if (i==5 || i==4) {
				
			} else {
			alert("빈 항목을 채워주세요");
			document.insertFrm.elements[i].focus();
			return;
			}
		}
	}
	document.insertFrm.submit();
}
</script>
<body>

	<%@ include file="../include/header.jsp" %>
 	
    <!--중앙 점보트론-->
    <div class="jumbotron"></div>
    
    
    <div class="container">
    	<div class="row">
           <!--자유게시판 글쓰기-->
           <div class="col-md-0 col-centered">
            	<img src="${path}/imgs/t_sub08_01.jpg" width="906" height="164"><br>
            		<form action="/comm/notice/insertDAO" name="insertFrm" 
            				method="post" enctype="multipart/form-data">
            			<div class="border">
            				<table style="width:100%; font-size:15px;">
            					<tr>
            						<th>제목</th>
            					</tr>
            					<tr>
            						<td colspan="5"><input type="text" class="form-control" name="title"></td>
            					</tr>
            					<tr>
            						<th colspan="3">작성자</th>
            						<th width="15%"> </th>
            						<th>타입</th>
            						
            					</tr>
            					<tr>
            						<td colspan="3"><input type="text" class="form-control" name="writer"></td>
            						<td></td>
            						<td colspan="2">
            							<div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="head" name="type" class="custom-control-input" value="head" checked>
                                            <label class="custom-control-label" for="head"> Head Notice </label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" id="normal" name="type" class="custom-control-input" value="normal">
                                            <label class="custom-control-label" for="normal"> Normal </label>
                                        </div>
            						</td>
            					</tr>
            			</table>
          					
           					
	           				<div class="form-group">
	            				<label for="content"><b style="font-size:15px;"> 내용 </b></label>
	            				<textarea name="content" class="form-control" rows="8" cols="100" id="content"></textarea>
	            			</div>
	            			<div class="form-group">
	            				<label for="file"><b style="font-size:15px;"> 첨부파일 </b></label><br>
	            				<input type="file" class="btn btn-default btn-sm" name="uploadFile" id="file">
	            			</div> 
	            			
            			
            			<div align="center">
	            			<input class="btn btn-info btn-sm" type="reset" value="다시작성">
	            			<input class="btn btn-info btn-sm" type="button" onclick="check()"value="등록">
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
	<!-- <script>
		function addFilePath(msg) {
			alert(msg);
			document.getElementById("form1").reset();
		}
	</script> -->

	
</body>
  
</html>


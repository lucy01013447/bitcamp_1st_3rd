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

/* 
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
} */
.border {
	border: 1px outset #424242;
	padding:40px;
	border-radius:5px; 
}
table tr {
	height: 35px;
}

</style>
<script>
function check() {
	
	for (var i=0; i<document.updateFrm.elements.length; i++) {
		if (document.updateFrm.elements[i].value == "") {
			if (i==5 || i==4) {
				
			} else {
			alert("빈 항목을 채워주세요");
			document.updateFrm.elements[i].focus();
			return; 
			}
		}
	document.updateFrm.submit();
	}
}
</script>
<body>

	<%@ include file="../include/header.jsp" %>
 	
 	
 	<!--중앙 점보트론-->
    <div class="jumbotron"></div>
 	<div class="container">
    	<div class="row">
          <div class="col-md-0 col-centered ">
          		<img src="${path}/imgs/t_sub08_01.jpg" width="906" height="164"><br>
          		<form action="/comm/notice/updateDAO" name="updateFrm" method="post" enctype="multipart/form-data" >
          			<div class="border">
            				
            				<table style="width:100%; font-size:15px;">
            					<tr>
            						<th>제목</th>
            					</tr>
            					<tr>
            						<td colspan="5"><input type="text" class="form-control" name="title" value="${n.title }"></td>
            					</tr>
            					<tr>
            						<th colspan="3">작성자</th>
            						<th width="15%"> </th>
            						<th>타입</th>
            						
            					</tr>
            					<tr>
            						<td colspan="3"><input type="text" class="form-control" name="writer" value="${n.writer }"></td>
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
	            				<textarea name="content" class="form-control" rows="8" cols="100" id="content">${n.content}</textarea>
	            			</div>
	            			<div class="form-group">
	            				<label for="file"><b style="font-size:15px;"> 첨부파일 </b></label><br>
	            				<input type="file" class="btn btn-default btn-sm" name="uploadFile" id="file">
	            			</div> 
	            			
	            			<input type="hidden" name="seq" value="${n.seq}">
            			<div align="center">
	            			<input class="btn btn-info btn-sm" type="button" onclick="check()" value="수정">
            				<input type="button" class="btn btn-info btn-sm" onclick="javascript:history.back()"value="글목록">
	            		</div>
					</div>
           		</form>
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
        ] 
    </script>
    
</body>
  
</html>


<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%@ include file="../include/head.jsp" %>

<style>
	.jumbotron{
	    background: url('${path}/imgs/top_newtech.jpg') no-repeat center;
	    background-color: #1B1C1D;
	    height: 350px;
	    margin-bottom: 0;
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
    
    
    /*최신기술 게시판 테이블*/
    .newtech-board{
        width: 100%;
        font-size: .9rem;
    }
    .newtech-board thead tr th{
        padding: 20px 10px 10px 10px;
        text-align: center;
        font-weight: 600;
        border-bottom: black 1px solid;
    }
    .newtech-board thead tr th:nth-child(1){
        width: 50px;
    }
    .newtech-board thead tr th:nth-child(2){
        width: 550px;
    }
    .newtech-board thead tr th:nth-child(3){
        width: 100px;
    }
    .newtech-board tbody tr td{
        padding: 7px 10px 7px 10px;
        border-bottom: #DDDDDD 1px solid;
        text-align: center;
    }
    .newtech-board tbody tr td:nth-child(2){
        padding-left: 20px;
        text-align: left;
        font-weight: 600;
    }
    .newtech-board tbody tr td:nth-child(2) a{
        color: black;
        text-decoration: none;
    }
    .newtech-board tbody tr td:nth-child(2) a:hover{
        color: #007BFF;
    }
    .newtech-board tbody tr:nth-child(even){
        background-color: #F9F9F9;
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
            <div class="col-md-10 col-centered">
                <div class="row">
                    <div class="col-md-12">
                        <img class="all-full" src="../../dist/imgs/t_sub04_02.jpg">
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12">
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <select class="custom-select" id="search-terms">
	                                <option value="subject" selected>제목</option>
	                                <option value="writer">작성자</option>
	                      	        <option value="article_num">글번호</option>
	                                <option value="content">내용</option>
                           		</select>
                            </div>
                            <input type="text" class="form-control" id="search-value" placeholder="검색어 입력">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button" id="search-btn"><i class="fas fa-search"></i></button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12" style="border: #DBDBDB 1px solid; box-shadow: 1px 1px 1px 1px #DBDBDB">
                        <table class="newtech-board">
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>등록일</th>
                                    <th>조회수</th>
                                </tr>
                            </thead>
                            <tbody id="board-data"></tbody>
                        </table>
                        
                        <br><br>
                        
                        <div class="row">
                            <div class="col-md-0 col-centered">
                                <div id="movebuttons"></div>
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <br><br>
    
    <%@ include file="../include/plugin_js.jsp" %>
    <script src="${path}/plugins/font-awesome/fontawesome-all.min.js"></script>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var begin = 0;
			var numPerPage = 0;
			var page = 0;
			//테이블 결과값을 호출하는 함수
			$.fn.searchFunction = function(){ 
				var data = {}
				data["terms"] = $("#search-terms").val();
				data["value"] = $("#search-value").val();
				data["begin"] = begin;
				data["numPerPage"] = numPerPage;
				$.ajax({
			        url:'${path}/notice/search.ajax',
			        type:'POST',
			        data: JSON.stringify(data),
			        contentType: "application/json",
			        dataType : "json",

			        success:function(response){
			        	var html_data = "";
			        	$.each(response, function(idx, val) {
			        		//console.log(idx + " : " + val.subject);
			        		html_data += "<tr>";
			        		html_data += "<td>"+val.article_num+"</td>";
			        		html_data += "<td><a href='${path}/notice/view?num="+val.article_num+"'>"+val.subject+"</a></td>";
			        		html_data += "<td>"+val.writer+"</td>";
			        		html_data += "<td>"+val.write_date+"</td>";
			        		html_data += "<td>"+val.hit+"</td>";
			        		html_data += "</tr>";
			        	});
			        	$("#board-data").html(html_data);
			        },
			        error: function (request, status, error){
			        	alert('서버와의 통신이 원할하지 않습니다.\n다시 시도 해 주십시오.' );
			        	console.log("[AJAX ERROR]"+"\nCode:"+request.status+"\nMessage:"+request.responseText+"\nError:"+error);
		        	}
			    });
		    }
			//페이징 처리를 위한 값을 호출하는 함수
			$.fn.pagingFunction = function(page){ 
				var data = {}
				data["terms"] = $("#search-terms").val();
				data["value"] = $("#search-value").val();
				data["page"] = page;
				$.ajax({
			        url:'${path}/notice/paging.ajax',
			        type:'POST',
			        data: JSON.stringify(data),
			        contentType: "application/json",
			        dataType : "json",

			        success:function(response){
			        	//검색조건이 있을때 begin이 1이면 검색결과가 표시되지 않는 쿼리상의 문제가 있다.->1을 0으로 바꿔주면 해결된다.
			        	begin = response.begin;
			        	if(begin == 1)begin = 0;
			        	numPerPage = response.numPerPage;
			        	
			        	var html_data = "";
			        	//이전 블럭 버튼
			        	if(response.beginPage < response.pagePerBlock){
			        		html_data += "<button type='button' class='btn btn-light disabled'><i class='fas fa-chevron-left'></i></button>&nbsp";
			        	}else{
			        		html_data += "<button type='button' onclick='$.fn.pagingFunction("+(response.beginPage -1)+")' class='btn btn-light'><i class='fas fa-chevron-left'></i></button>&nbsp"
			        	}
			        	//현재 블럭 페이지 버튼
			        	for(var i=response.beginPage;i<=response.endPage;i++){
			        		if(i == response.nowPage){
			        			html_data += "<button type='button' class='btn btn-light active'>"+i+"</button>&nbsp"
			        		}else{
			        			html_data += "<button type='button' onclick='$.fn.pagingFunction("+i+")' class='btn btn-light'>"+i+"</button>&nbsp"
			        		}
			        	}
			        	//다음 블럭 버튼
			        	if(response.endPage >= response.totalPage){
		        			html_data += "<button type='button' class='btn btn-light disabled'><i class='fas fa-chevron-right'></i></button>&nbsp"
		        		}else{
		        			html_data += "<button type='button' onclick='$.fn.pagingFunction("+(response.beginPage + response.pagePerBlock)+")' class='btn btn-light'><i class='fas fa-chevron-right'></i></button>&nbsp"
		        		}
			        	$("#movebuttons").html(html_data);
			        	$.fn.searchFunction();
			        },
			        error: function (request, status, error){
			        	alert('서버와의 통신이 원할하지 않습니다.\n다시 시도 해 주십시오.' );
			        	console.log("[AJAX ERROR]"+"\nCode:"+request.status+"\nMessage:"+request.responseText+"\nError:"+error);
		        	}
			    });
		    }
			
			//검색버튼 클릭
			$("#search-btn").click(function(){
				$.fn.pagingFunction();
			});
			//검색창 입력
			$("#search-value").keyup(function(){
				$.fn.pagingFunction();
			});
			
			//페이지가 준비되면 최초 1페이지를 호출한다.
			$.fn.pagingFunction(1);
		});
		
	</script>
</body>
  
</html>


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
    /*최신기술 게시판 글보기 테이블*/
    .newtech-board{
        width: 100%;
        font-size: .9rem;
    }
    .newtech-board tr th{
        padding: 5px 10px 5px 10px;
        border: 1px #DDDDDD solid;
        background-color: #F5F5F5;
        font-weight: 600;
    }
    .newtech-board tr td{
        padding: 7px 10px 7px 10px;
        border: 1px #DDDDDD solid;
    }
    .newtech-board tr:first-child td{
        font-weight: bold;
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
                    <div class="col-md-12" style="border: #DBDBDB 1px solid;box-shadow: 1px 1px 1px 1px #DBDBDB">
                        <table class="newtech-board mt-2 mb-4">
                            <tr>
                                <th>제목</th>
                                <td colspan="5">${ntb.subject}</td>
                            </tr>
                            <tr>
                                <th>작성자</th>
                                <td>${ntb.writer}</td>
                                <th>작성일</th>
                                <td>${ntb.write_date}</td>
                                <th>조회수</th>
                                <td>${ntb.hit}</td>
                            </tr>
                        </table>
                        
                        <div id="content mb-5">
                        	${ntb.content}
                        </div>
                        
                        <div class="col-md-1 col-centered mb-5">
                            <button class="btn btn-primary" onclick="back()">목록</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <br><br>
    
    <%@ include file="../include/plugin_js.jsp" %>
    
	<%@ include file="../include/footer.jsp" %>
	
	<script type="text/javascript">
		function back(){
			history.back();
		}
	</script>
</body>
  
</html>


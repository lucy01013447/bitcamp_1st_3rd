<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- The Modal -->
<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="vertical-alignment-helper">
		<div class="modal-dialog vertical-align-center">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header panel-heading">
					<h5 class="modal-title">${message.title}</h5>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
						<span class="sr-only">Close</span>
					</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					${message.content}
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 세션에 메시지가 있으면 모달폼을 통해 출력하고 메시지 세션을 비운다. -->
<c:if test="${message ne null}">
	<script>
		$('#messageModal').modal("show");
	</script>
	<c:remove var="message"/>
</c:if>

<br>

<!--하단 대표번호/소셜-->
<div class="container">
    <div>
        <div class="row fitting">
            <div class="col-md-9 fitting">
                <img src="${path}/imgs/phone.jpg" alt="대표번호" class="all-full">
            </div>
            <div class="col-md-3 fitting">
                <div>
                    <a href="https://pf.kakao.com/_VDAHxl" target="_blank">
                        <img src="${path}/imgs/kakao.jpg" alt="카카오톡" class="width-full">
                    </a>
                </div>
                <div>
                    <a href="https://www.facebook.com/bitjobedu/" target="_blank">
                        <img src="${path}/imgs/facebook.jpg" alt="페이스북" class="width-full">
                    </a>
                </div>
                <div>
                    <a href="http://cafe.naver.com/starmapset" target="_blank">
                        <img src="${path}/imgs/cafe.jpg" alt="네이버카페" class="width-full">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<br><br>

<!--하단 기관홈페이지링크-->
<div class="container">
    <div class="row">
        <div class="col-md-0 col-centered">
            <div class="row">
                <div class="col-xs-4 col-centered">
                    <a href="https://www.bit.kr/" target="_blank"><img src="${path}/imgs/link2.png" alt="비트컴퓨터"></a>
                </div>
                <div class="col-xs-4 col-centered">
                    <a href="http://www.chohyunjung.org/" target="_blank"><img src="${path}/imgs/link1.png" alt="조현정재단"></a>
                </div>
                <div class="col-xs-4 col-centered">
                    <a href="http://www.moel.go.kr/index.do" target="_blank"><img src="${path}/imgs/link3.png" alt="고용노동부"></a>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

<!--하단 정보페이지 링크바-->
<div class="container-fluid" id="footer-linkbar">
    <div class="row">
        <div class="col-md-8 col-centered">
            <div>
            <div class="row">
                <div class="col-sm-2 offset-md-1"><a href="#">강사채용</a></div>
                <div class="col-sm-2"><a href="#">홈페이지 이용약관</a></div>
                <div class="col-sm-2"><a href="#">개인정보취급방침</a></div>
                <div class="col-sm-2"><a href="#">이메일수집거부</a></div>
                <div class="col-sm-2 "><a href="#">오시는 길</a></div>
                <div class="col-sm-1"></div>
            </div>
            </div>
        </div>
    </div>
</div>
    
<!--하단 회사정보-->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 col-centered">
            <div id="footer-info">
            <div class="row">
                <div class="col-sm-4"><img src="${path}/imgs/logo2.jpg" alt="비트캠프로고"></div>
                <div class="col-sm-8">
                    <p>비트캠프 서울시 서초구 서초동 1327-15 비트아카데미빌딩｜ 사업자등록번호 : 214-85-24928</p>
                    <p>(주)비트컴퓨터 서초지점 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245</p>
                    <p>통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 권도혁</p>
                    <p>Copyright (c) 비트캠프 All rights reserved.</p>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
    
<br><br><br>
    
<!--최하단 스티키 상담메뉴 내비게이션-->
<nav id="bottom-nav" class="navbar fixed-bottom navbar-expand-md" style="background-color: #000759; height: 50px; border: 0;">
	<div class="col-centered">
		<!-- Brand -->
		<a class="navbar-brand" href="#" style="margin-right: 35px">
			<img src="${path}/imgs/online.png" alt="온라인상담">
		</a>
		<a class="navbar-brand" href="#" style="margin-left: 35px; margin-right: 35px;">
			<img src="${path}/imgs/kakaofriend.png" alt="카카오플러스친구">
		</a>
		<a class="navbar-brand" href="#" style="margin-left: 35px; margin-right: 35px;">
			<img src="${path}/imgs/intoway.png" alt="찾아 오시는길">
		</a>
		<a class="navbar-brand" href="#">
	    	<img src="${path}/imgs/call.png" alt="상담문의">
		</a>
	</div>
    <!-- Links
    <div class="collapse navbar-collapse" id="nav-content">   
	    <ul class="navbar-nav">
		    <li class="nav-item">
		    <a class="nav-link" href="#">Link 1</a>
		    </li>
		    <li class="nav-item">
		    <a class="nav-link" href="#">Link 2</a>
		    </li>
		    <li class="nav-item">
		    <a class="nav-link" href="#">Link 3</a>
		    </li>
	    </ul>
    </div>
     -->
</nav>

<nav class="navbar fixed-bottom navbar-expand-md" style="height: 50px; border: 0;">
    <div class="row">
        <button id="bottom-nav-btn" type="button" style="height: 50px; width: 55px; margin-left: 10px; background-color: #3C4A9E; border: 0; cursor: pointer; color: white; font-size: 2rem;">
            <i class="fa fa-angle-double-down"></i>
        </button>
    </div>
</nav>

<script>
	$(document).ready(function(){
        $("#bottom-nav-btn").click(function(){
            $("#bottom-nav").slideToggle(300);
            console.log($('#bottom-nav').is(':hidden'));
        });
    });
</script>

<script>
$(document).ready(function(){
	popularWordList();
});
//인기검색어
function popularWord(keyword) {
	$('#search').val(keyword);
	document.searchFrm.submit();
}
function popularWordList() {
	$.ajax({
		url : '/search/popKeyword',
		type: 'get',
		error: function(){
			alert("topKeywordList통신실패");
		},
		success: function(data){
			var a = '';
			$.each(data, function(idx, val){
				a += ' <a href="javascript:popularWord(\''+val+'\')">'+val+' </a>'; 
				if(idx != 5 ) {
					a += '&nbsp;|&nbsp;';
				}
			});
			$("#popular-keyword-link").html(a);
		}
	})
}
</script>


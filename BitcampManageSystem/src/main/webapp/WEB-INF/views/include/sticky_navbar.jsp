<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>

<!--중앙 스티키 내비게이션바-->
<div id="navbar-sticky" style="z-index: 5;">
    <div class="row">
        <div class="col-md-7 col-centered">
            <div class="row">
                <div class="col-md-1" style="padding-top: 3px; padding-bottom: 3px; margin-right: -10px">
                    <a href="${path}/"><img src="${path}/imgs/home-icon-blue.png"></a>
                </div>
                <div class="col-md-0" style="margin-right: -1px">
                    <div class="selectdiv">
                    <select id="main-select" onchange="javascript:handleSelect(this)">
                    	<option value="default" selected="selected">메뉴선택</option>
                    	<option value="intro">포트폴리오 소개</option>
                        <option value="lecture">취업교육과정</option>
                        <option value="technic">최신기술 및 IT정보</option>
                        <option value="community">커뮤니티</option>
                        <option value="consult">온라인상담</option>
						<option value="notice">공지사항</option>
                    </select>
                    </div>
                </div>
                <div class="col-md-3" style="padding-left: 0px">
                    <div class="selectdiv">
                    <select id="sub-select" onchange="javascript:handleSelect(this)">
                    	<option value="default" selected="selected">메뉴선택</option>
                    </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--페이지 스티키 네비게이션바-->
<script>
	function handleSelect(elm)
	{	
		switch(elm.value) {
			//메인메뉴
		    case "intro":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/notice/intro";
		        break;
		    case "lecture":
		    	$("#sub-select").html(
		    			"<option value='default' selected='selected'>메뉴선택</option>" +
		    			"<option value='gov'>국비무료과정</option>" +
		    			"<option value='abroad'>해외 취업과정</option>"
		    			);
		        break;
		    case "technic":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/notice/newtec";
		        break;
		    case "community":
		    	$("#sub-select").html(
		    			"<option value='default' selected='selected'>메뉴선택</option>" +
		    			"<option value='free'>자유게시판</option>" +
		    			"<option value='review'>교육후기</option>" +
		    			"<option value='project'>교육생 프로젝트</option>"
		    			);
		        break;
		    case "consult":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/lecture/consult";
		        break;
		    case "notice":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/#";
		    	break;
		    	
		    //여기서부터는 서브메뉴
		    case "gov":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/lecture/list?cen=sch&ty=1&page=1";
		    	break;
		    case "abroad":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/lecture/list?cen=sch&ty=2&page=1";
		    	break;
		    case "free":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/comm/free";
		    	break;
		    case "review":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = href="${path}/comm/lecture";
		    	break;
		    case "project":
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		    	window.location = "${path}/comm/project";
		    	break;
		    default:
		    	$("#sub-select").html("<option value='default' selected='selected'>메뉴선택</option>");
		}
	}
	
    window.onscroll = function() {myFunction()};
    var navbar = document.getElementById("navbar-sticky");
    var sticky = navbar.offsetTop;
    function myFunction() {
      if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
      } else {
        navbar.classList.remove("sticky");
      }
    }
</script>
    
    
    
    
    
    
    
    
<%@ page contentType="text/html; charset=UTF-8" language="java" %>






<div class="col-md-3">
<div style="margin: 0 0 -10px 35px;">
   <img src="${path}/imgs/left_sub01.jpg" alt="사이드내비">
</div>
<!--과정선택 사이드 내비게이션-->
<!--각 버튼은 radio버튼화되어 1개만 선택되어 활성화된다.
<!--(label:for와 input:id가 일치해야하며 다른 버튼과 중복되면 안된다.)-->
<nav class="vertical">
<ul>
    <li>
        <label for="getjob">서초센터(본점)</label>
        <input type="radio" name="verticalMenu" id="getjob"/>
        <div class="vertical-sub">
            <ul>
            <li>
                <label for="getjob-internal">국비무료과정</label>
                <input type="checkbox" name="verticalMenu-sub" id="getjob-internal" />
                <div class="vertical-inner">
                    <ul>
                    <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'sch' and nav.type eq 1}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>
           <li>
               <label for="getjob-external">해외취업연수과정</label>
               <input type="checkbox" name="verticalMenu-sub" id="getjob-external" />
               <div class="vertical-inner">
                   <ul>
                   <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'sch' and nav.type eq 2}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>
           </ul>
       </div>
   </li>
   <li>
       <label for="sinchon">신촌점</label>
       <input type="radio" name="verticalMenu" id="sinchon" />
       <div class="vertical-sub">
           <ul>
           <li>
               <label for="sinchon-internal">국비무료과정</label>
               <input type="checkbox" name="verticalMenu-sub" id="sinchon-internal" />
               <div class="vertical-inner">
                   <ul>
                   <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'sc' and nav.type eq 1}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>

           <li>
               <label for="sinchon-external">해외취업연수과정</label>
               <input type="checkbox" name="verticalMenu-sub" id="sinchon-external" />
               <div class="vertical-inner">
                   <ul>
                   <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'sc' and nav.type eq 2}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>
           </ul>
       </div>
   </li>
   <li>
       <label for="gangnam">강남점</label>
       <input type="radio" name="verticalMenu" id="gangnam" />
       <div class="vertical-sub">
           <ul>
           <li>
               <label for="gangnam-internal">국비무료과정</label>
               <input type="checkbox" name="verticalMenu-sub" id="gangnam-internal" />
               <div class="vertical-inner">
                   <ul>
                   <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'gn' and nav.type eq 1}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>

           <li>
               <label for="gangnam-external">해외취업연수과정</label>
               <input type="checkbox" name="verticalMenu-sub" id="gangnam-external" />
               <div class="vertical-inner">
                   <ul>
                   <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'gn' and nav.type eq 2}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>
           </ul>
       </div>
   </li>
   <li>
       <label for="jongno">종로점</label>
       <input type="radio" name="verticalMenu" id="jongno" />
       <div class="vertical-sub">
           <ul>
           <li>
               <label for="jongno-internal">국비무료과정</label>
               <input type="checkbox" name="verticalMenu-sub" id="jongno-internal" />
               <div class="vertical-inner">
                   <ul>
                   <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'cr' and nav.type eq 1}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>

           <li>
               <label for="jongno-external">해외취업연수과정</label>
               <input type="checkbox" name="verticalMenu-sub" id="jongno-external" />
               <div class="vertical-inner">
                   <ul>
                   <c:forEach var="nav" items="${navList}">
                	<c:if test="${nav.center eq 'cr' and nav.type eq 2}">
                		<li><a href="${path}/joblec/view?id=${nav.lec_id}">${nav.title}</a></li>
                	</c:if>
                   </c:forEach>
                   </ul>
               </div>
           </li>
           </ul>
       </div>
   </li>
   <li>
       <a href="${path}/joblec/list?cen=all&page=1">전체과정목록보기</a>
        </li>
    </ul>
    </nav>
</div>


<script>
        $(function(){
            $("input[name=verticalMenu]").change(function() {
                $("input[name=verticalMenu-sub]").next().slideUp(300, function(){
                    $("input[name=verticalMenu-sub]").prop("checked", false);    
                });
                $(".vertical-sub").slideUp(300);
                $(this).next().slideDown(300);
            });
            
            $("input[name=verticalMenu-sub]").change(function() {
                if($(this).is(":checked")){
                    $(this).next().slideDown(300);
                }
                else{
                    $(this).next().slideUp(300);
                }
            });
        });
    </script>



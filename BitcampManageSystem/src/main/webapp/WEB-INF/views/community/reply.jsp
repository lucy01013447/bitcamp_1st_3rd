<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">

$(document).ready(function(){
	replyList();
});

var b_seq = '${f.seq}'; //게시글 번호
var type = 1;
//댓글목록
function replyList(){
	$.ajax({
		url: '/comm/replyList',
		type: 'get',
		data: {'b_seq':b_seq,
				'type' : type
		},
		error: function(){
			alert('replyList실패');
		},
		success: function(data){
			var a='';
			$.each(data, function(key,value){
				a += '<div class="replyArea" style="background-color:#EBEAEA; margin-bottom: 10px; padding:5px 0 2px 10px;">';
                a += '<div class="replyInfo'+value.r_seq+'"><span style="font-size:14px"><b>'+ value.writer+'</b></span><span style="color:gray; font-size:13px;"> '+value.date+'</span>';
                a += '<span style="float:right">';
                a += '<a onclick="replyUpdate('+value.r_seq+',\''+value.content+'\', \''+value.pwd+'\')" class="btn text-dark btn-sm"> 수정  </a>';
                a += '<a onclick="replyDelete('+value.r_seq+',\''+value.pwd+'\')" class="btn text-dark btn-sm"> 삭제 </a> </div>';
                a += '</span>'
                a += '<div class="replyContent'+value.r_seq+'" style="margin-top:5px font-size:13px;"> <p> '+value.content +'</p>';
                a += '</div></div>';
			});
			$(".replyList").html(a);
			countReply(b_seq);
		}
	})
}

function countReply(b_seq){
	
	$.ajax({
		url: '/comm/countReply',
		type: 'get',
		data: {'b_seq' : b_seq,
				'type' : type
		},
		error : function(){
			alert("countReply실패");
		},
		success : function(data) {
			$(".count").html(data);
		}
	})	
}

//댓글등록
function replyInsert(){
	var insertData = $('[name=replyInsertForm]').serialize();
	$.ajax({
		url: '/comm/insertReply',
		type: 'post',
		data : insertData,
		success: function(data){
			document.getElementById("replyInsertForm").reset();
			replyList();//댓글작성 후 댓글목록 reload
		}
	})
	
	
}
//댓글수정 - 댓글 내용 출력을 input폼으로 변경
function replyUpdate(r_seq, content, pwd){
	var user="";
	user = prompt("비밀번호를 입력하세요");
	if ( user == pwd ) {
    var a =''; 
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+r_seq+'" value="'+content+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="replyUpdateProc('+r_seq+');">수정</button> </span>';
    a += '</div>';
    
    $('.replyContent'+r_seq).html(a);
	} else {
		alert("정확한 비밀번호를 입력해주세요.");
	}
	
}
//댓글 수정
function replyUpdateProc(r_seq){
    var updateContent = $('[name=content_'+r_seq+']').val();

    $.ajax({
        url : '/comm/updateReply',
        type : 'post',
        data : {'content' : updateContent, 
        		'r_seq' : r_seq},
        error : function(){
        	alert("통신실패");
        },
        success : function(data){
            replyList(); //댓글 수정후 목록 출력 
        }
    });
}


//댓글 삭제 
function replyDelete(r_seq, pwd){
	var user="";
	user = prompt("비밀번호를 입력하세요");
	if ( user == pwd ) {
		if(confirm("정말 삭제하시겠습니까?")) {
		    $.ajax({
		        url : '/comm/deleteReply?r_seq='+r_seq,
		        type : 'post',
		        success : function(data){
		           replyList(); //댓글 삭제후 목록 출력 
		        }
		    });
		}
	} else {
		alert("정확한 비밀번호를 입력해주세요");
	}
    
}

</script>
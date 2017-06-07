<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="Board" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기게시판 내용</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
var board_no=0;
function list(){
hideUpForm();
$.ajax(
{"url" : "reply.do",
 "type" : "post",
"data" : {
"board_no":board_no,
"post_no":"${dto.no}",
"action":"selectReply"
}, 
 "dataType" : "json", 
"success" : function(res){
var cmtDiv = document.getElementById("comment");
cmtDiv.innerHTML="";
for(i=0;i<res.length;i++)
{
	cmtDiv.append(createReply(res[i]));
}
}
,"error" : function(){
	alert('불러오기 중 에러');
}	
}
);
function createReply(reply){
	var replyDiv = document.createElement('div');
	replyDiv.setAttribute('id', reply.reply_no);
	replyDiv.reply=reply;
	$(replyDiv).html("<table border=0 width=1100><tr><td width=120 align='center'>" +
			reply.user_id + ":</td><td width=600>" + reply.content + "</td><td align='center'>" +reply.gdate +
			"<input type='hidden' id=r" + reply.reply_no + "value='" + reply.reply_no + 
			"'/><c:if test='${dto.user_id eq id}'><td align='center'><a href=\"javascript:callUpForm('" + reply.reply_no + 
					"')\">수정</a> <a href=\"javascript:deleteR('" + reply.reply_no + "')\">삭제</a></td></c:if></tr></table>");
	return replyDiv;
}
}
$(function(){
	list();
 	$("#commentInput").click(function(){
		var content=$("#commentText").val();
		insertR('${id}',content);
	});
 	$("#upcommentInput").click(function(){
		var content=$("#upcommentText").val();
		var no=$("#upreplyno").val();
		updateR(no,content);
	});
 	$("#commentCancle").click(hideUpForm);

});

function insertR(username,content){
$.ajax(
	{"url" :"reply.do",
	"type" :"post",
	"data" :{"board_no":board_no,
			"post_no":"${dto.no}",
			 "action" : "insertReply",
			 "user_id" : username,
			 "content" : content},
			 "success" : function(){
				 list();
			 }
			 ,"error" : function(){
					alert('입력 중 에러발생');
				}	
			 
	}
)
}
function callUpForm(no){
	var Up = document.getElementById("Up");
	var UpContent = document.getElementById(no);
	$("#upcommentText").val(UpContent.reply.content);
	$("#upreplyno").val(UpContent.reply.reply_no);
	UpContent.appendChild(Up);
	Up.style.display="";
}
function hideUpForm(){
	var Up = document.getElementById("Up");
	Up.style.display="none";
	document.documentElement.appendChild(Up);
}
function updateR(reply_no,content){
	$.ajax(
			{"url" :"reply.do",
			"type" :"post",
			"data" :{"board_no":board_no,
					"post_no":"${dto.no}",
					 "action" : "updateReply",
					 "reply_no" : reply_no,
					 "content" : content},
					 "success" : function(){
						 list();
					 },"error" : function(){
							alert('수정 중 에러발생');
						}	
}
)
}
function deleteR(reply_no){
	$.ajax(
			{"url" :"reply.do",
			"type" :"post",
			"data" :{"board_no":''+board_no,
					"post_no":"${dto.no}",
					 "action" : "deleteReply",
					 "reply_no" : reply_no},
					 "success" : function(){
						 list();
					 }
					 ,"error" : function(){
							alert('삭제 중 에러발생');
						}			 
			}
)
}
</script>
</head>
<body>
	<center>
		
		<form action="boardinput.do?action=selectContent" method="post">
			<table border=0 cellspacing=0 cellpadding=5 width="1100">
				<tr bgcolor='#FAECC5'>
					<td align='center' colspan="3"><font size='3'>${dto.review_title }</font></td>
				</tr>
				<tr>
					<td align="left" width="366"><font size="2"> 작성자: ${dto.user_id }</font></td>
					<td align="center" width="366"><font size="2">작성일: ${dto.gdate }</font></td>
					<td align="right" width="366"><font size=2>조회수: ${dto.review_count }</font></td>
				</tr>
			</table>
			<table border="1" cellspacing="0" height="300" width="1100">	
				<tr>
					<td colspan="3" align="center" height="300">${dto.review_content }</td>
				</tr>
			</table>
		</form>
		<br>
		<table width="1100">
			<tr align="right"> 
			<td>
			<c:if test="${dto.user_id eq id }">
			<a href="reviewupdel.do?action=updateGet&no=${dto.no }"><input type="button" value="수정하기"></a>
			<a href="reviewupdel.do?action=delete&no=${dto.no }"><input type="button" value="삭제하기"></a>
			</c:if>
			<a href="reviewlist.do"><input type="button" value="목록"></a>
			</td>
			</tr>
		</table>
		<br>
		<div id="comment">안녕</div><br>
		<div id="Up" style="display:none;">
			<input type="text" id="upcommentText"/>
			<input type="hidden" id="upreplyno">
			<input type="button" id="upcommentInput" value="수정"/>
			<input type="button" id="commentCancle" value="취소"/>
		</div>
		<input type="text" id="commentText" size="100"/> <input type="button" id="commentInput" value="댓글 입력"/>
		<br><br>	
	</center>
</body>
</html>
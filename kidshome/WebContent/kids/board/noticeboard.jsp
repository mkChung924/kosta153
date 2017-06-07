<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<title>공지사항 게시판</title>
<script type="text/javascript">
	function check(){
		var f = document.frm;
		var title = f.notice_title.value;
		var content = f.notice_content.value;
		
		if(title===''){
			alert('제목을 입력해주세요.');
			f.title.focus();
		}else if(content===''){
			alert('내용을 입력해주세요.');
			f.content.focus();
		}else{
  			f.submit();
  		}
	}

</script>
</head>
<body>
	<center>
		<h3>공지사항 글쓰기</h3>
		<form action="noticeinput.do" name="frm" method="post">
		<table border="0">
			<tr>
				<td class='bgc' align="center"><font size='2' ><b>글 제목</b></font></td>
				<td><input type='text' size='72' maxlength='50' name='notice_title'></td>
			</tr>
			<tr>
				<td class='bgc' align="center"><font size='2'><b>내 용</b></font></td>
				<td><textarea cols='70' rows='15' name='notice_content'></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="button" value="등록" style="background-color: #FFE08C" onclick="check()"> 
				<a href="listboard.do"><input type="button" value="취소" style="background-color: #FFE08C"></a>
				</td>
			</tr>
		</table>
		</form>
	</center>
</body>
</html>
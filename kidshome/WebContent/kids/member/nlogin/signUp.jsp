<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	var checked = false;

	function check(){

		if(checked == false){
			alert('약관에 동의하세요.');
		} else {
			document.frm.submit();
		}
	}
	
	function aaa(box){
		
		if(box.checked == true){
			checked = true;
		} else {
			checked = false;
		}
		
	}
</script>
</head>
<body>
<center>
<h2>Kidshome에 오신걸 환영합니다.</h2><br><br><br>
<form action="join.do" method="post" name="frm">
<table border = 0 cellspacing="0" cellpadding="2">
	<tr>
		<td> 개인정보 수집 안내</td>
	</tr>
	<tr>
		<td><textarea rows="5" cols="60" style="font-size: 15px">Kidshome (이하 회사)는 다음과 같은 정보를 수집합니다. 아이디, 비밀번호, 성명, 생년월일 등 개인 정보를 수집하게 되며 가입후 사용자가 탈퇴하기 전까지 보유하게 됩니다. 사용자 탈퇴시 모든 개인정보는 삭제됩니다.</textarea></td>
	</tr>
	<tr>
		<td align="right"><input type="checkbox" name="agree" value="agree" onclick="aaa(this)"> 내용을 읽었으며, 동의함<br><br><br></td>
	</tr>
	<tr>
		<td align="center"><img src="../image/button/join.png" width="100" height="40" style="cursor: pointer;" onclick="check()"></td>
	</tr>
</table>
<br><br><br>
</form>
</center>
</body>
</html>
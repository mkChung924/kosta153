<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디찾기 결과</title>
</head>
<body>
	<center>
		<form>
			<h4>입력하신 정보와 일치하는 아이디 목록입니다.</h4><br><br>
		
			<strong>*아이디 목록*</strong><br><br>
			<table border=1 cellpadding="5" cellspacing="0" width="200">
				
				<tr>
					<td align="center">${idFound.substring(0,idFound.length()-3) }***</td>
				</tr>
			</table>
			<br><br>
			<font size="2"><a href="login.do"><input type="button" value="로그인" name="login"></a></font>
			<br><br><br>			
			<font size="2">비밀번호가 기억이 안나세요?</font>&nbsp;&nbsp;
			<font size="2"><a href="passFound.do"><input type="button" value="비밀번호 찾기" name="passFound"></a></font>
		</form>
	</center>
</body>
</html>
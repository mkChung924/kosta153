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
		<h3>등록되지 않은 회원입니다.</h3><br><br><br>
		<table cellpadding="5">		
			<tr>
				<td><font color="gray" size="2">아아디를 찾으시겠습니까?</font></td>
				<td align="right"><input type="button" value="아이디 찾기" onclick="location.href='findid.do'"></td>
			</tr>
			<tr>
				<td><font color="gray" size="2">계정이 없으신가요?</font></td>
				<td align="right"><input type="button" value="회원가입" onclick="location.href='signUp.do'"></td>
			</tr>
			<tr>
				<td><font color="gray" size="2">로그인 하시겠습니까?</font></td>
				<td align="right"><input type="button" value="로그인" onclick="location.href='login.do'"></td>
			</tr>
		</table>
		<br><br><br>
	</form>
	</center>
	</body>
</html>
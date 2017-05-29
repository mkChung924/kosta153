<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계정 삭제 인증</title>
</head>
<body>
<center>
	<h2>사용자 확인 절차</h2>
		본인 인증을 한 후 계정을 삭제합니다.<br><br>
		<form action="update.do?action=delInfo" method="post">
		<table border="0" cellpadding="10" cellspacing="0">
			<tr>
				<td><font size=4px>아이디</font></td>
				<td><input type="text" name="id"></td>
			<tr>
				<td><font size=4px>비밀번호</font></td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="확인"></td>
			</tr>
		</table>
		</form>
	</center>

</body>
</html>
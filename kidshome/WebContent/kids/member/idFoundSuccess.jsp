<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
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
				<c:forEach items="${idFound }" var="id">
				<tr>
					<td align="center"><strong>${id.substring(0,id.length()-3) }***</strong></td>
				</tr>
				</c:forEach>
			</table>
			<br><br>
			<img src="../image/button/login_icon.png" width="70" onclick="location.href='login.do'">
			<br><br><br>	
			<table cellpadding="5">
			<tr>
				<td>
					<font size="3"><b>비밀번호가 기억이 안나세요?</b></font>
				</td>
				<td>
					<img src="../image/button/passfind_icon.png" width="85" height="30" style="cursor: pointer;" onclick="location.href='passFound.do'">
				</td>
			</tr>
			</table>		
		</form>
	</center>
</body>
</html>
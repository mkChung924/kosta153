<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입처리결과</title>
</head>
<%-- userprocess.jsp(DB입력처리---> 결과출력) --%>
<body>
		<center>
	<form action="toydelete.do" method="post">
	<h3>탈퇴화면</h3>
			<input type="text" name="id"> <input type="submit" value="탈퇴">
	</form><br><br>
	<form action="main.do">
	<input type="submit" value="메인으로">
	</form>
		</center>
</body>
</html>
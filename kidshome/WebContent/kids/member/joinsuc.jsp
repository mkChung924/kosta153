<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>회원가입이 완료되었습니다.</h3><br>
${name }님 환영합니다.<br><br>
이제 로그인하여 서비스를 이용하시기 바랍니다.<br><br>
<input type="button" value="로그인" onclick="location.href='login.do'">
<input type="button" value="메인으로" onclick="location.href='main.do'">
</center>

</body>
</html>
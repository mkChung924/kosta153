<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	System.out.println(request.getAttribute("option"));
%>
<center>
<c:if test="${option eq 'give' }">
기부 신청이 완료되었습니다.<br><br>
</c:if>
<c:if test="${option eq 'req' }">
장난감 요청 신청이 완료되었습니다.<br><br>
</c:if>
감사합니다.<br><br>
<form action="main.do" method="post">
<input type="submit" value="메인으로">
</form>
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8");//파라미터 한글 처리
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대여 상태</title>
</head>
<body>
	<center>
		<form method="post">
			<table border="1" cellpadding="5" width="1100">
				<tr bgcolor="#FFE08C">
					<th>이름</th>
					<th>아이디</th>
					<th>대여일</th>
					<th>반납일</th>
					<th>장난감 이름</th>
				</tr>
				<c:forEach items="${list }" var="reqstate">
					<tr align="center">
						<td>${reqstate.name }</td>
						<td>${reqstate.id }</td>
						<td>${reqstate.sdate }</td>
						<td>${reqstate.edate }</td>
						<td>${reqstate.toyname }</td>
					</tr>
				</c:forEach>
			</table><br><br>
		<input type="button" value="뒤로가기" onclick="history.back()">
		</form>
	</center>
</body>
</html>
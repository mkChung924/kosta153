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
	<center>
		<h3>나의 기부 현황</h3>
		<form action="requestdelete.do" method="post" name=f>
			<table border="1" cellpadding="5">
				<tr bgcolor="purple">
					<th>선택</th>
					<th>번호</th>
					<th>장난감 종류</th>
					<th>장난감 이름</th>
				</tr>
				<c:forEach items="${list }" var="re">
					<tr>
						<td><input type="checkbox" name="no" value="${re.requestnum}"></td>
						<td>${re.requestnum}</td>
						<td>${re.toytype}</td>
						<td>${re.toyname}</td>
					</tr>
				</c:forEach>
			</table>
			<input type="submit" value="삭제">
		</form>
		<br>
		<!--  -->
		<form action="main.do">
			<input type="submit" value="메인으로">
		</form>
	</center>
</body>
</html>
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
		<c:if test="${rentreq eq 'success' }">
			<h4>대여신청 성공!</h4>
			<br>
			<br>
	대여신청이 완료되었습니다.<br>
			<br>
	대여신청 현황은 [마이페이지] - [대여신청현황] 에서 확인가능합니다.<br>
			<br>
			<input type="button" value="대여신청 확인" onclick="location.href='myRentReq.do?action=rentreq'">&nbsp;&nbsp;&nbsp;
			<input type="button" value="메인으로" onclick="location.href='main.do'">
		</c:if>
		<c:if test="${rentreq eq 'overCount' }">
			<b>대여횟수를 초과하였습니다.</b><br><br>
			<c:if test="${auth == 0 }">
				대여 가능 장난감은 <font color=red size=5>2</font>개를 초과할 수 없습니다.
			</c:if>
			<c:if test="${auth == 1 }">
				대여 가능 장난감은 <font color=red size=5>3</font>개를 초과할 수 없습니다.
			</c:if>
			<br><br>
			<input type="button" value="메인으로" onclick="location.href='main.do'">&nbsp;&nbsp;&nbsp; 
			<input type="button" value="뒤로가기" onclick="history.back()">
		</c:if>
		<c:if test="${rentreq eq 'underCount' }">
			재고가 부족합니다.<br>
			
			<br><br>
			<input type="button" value="메인으로" onclick="location.href='main.do'">&nbsp;&nbsp;&nbsp;
			<input type="button" value="뒤로가기" onclick="history.back()">
		</c:if>
		<c:if test="${rentreq eq 'error' }">
			알 수없는 에러가 발생하였습니다.<br>
			<br><br>
			<input type="button" value="메인으로" onclick="location.href='main.do'">&nbsp;&nbsp;&nbsp;
			<input type="button" value="뒤로가기" onclick="history.back()">
		</c:if>

	</center>

</body>
</html>
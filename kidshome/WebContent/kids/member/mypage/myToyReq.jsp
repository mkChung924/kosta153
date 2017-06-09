<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h2>장난감 신청 현황</h2><br><br>
		<logic:present name="reqlist" scope="request">
		<form action="requestdelete.do" method="post" name=f>
			<table border="1" cellpadding="5" width="1100">
				<tr bgcolor="orange">
					<th>장난감 이름</th>
					<th>신청 설명</th>
					<th>사진 정보</th>
					<th>신청 날짜</th>
					<th>신청 상태</th>
					
				</tr>
				<c:forEach items="${reqlist }" var="reqlist">
					<tr>
						<td align=center>${reqlist.toyname}</td>
						<td align=center>${reqlist.reason}</td>
						<td align=center>${reqlist.image}</td>
						<td align=center>${reqlist.reqdate}</td>
						<td align=center>${reqlist.req_state}</td>
						
					</tr>
				</c:forEach>
			</table>
		</form>
		</logic:present>
		<logic:notPresent name="reqlist" scope="request">
		<h4>장난감 신청 목록이 존재하지 않습니다.</h4>
		</logic:notPresent>
		<br>
		<!--  -->
		<form action="main.do">
			<input type="image" src="../image/button/main_icon.png" width="80">
		</form>
		<br><br>
	</center>
</body>
</html>
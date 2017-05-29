<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h2>장난감 기부 현황</h2><br><br>
		<logic:present name="givelist" scope="request">
		<form action="requestdelete.do" method="post" name=f>
			<table border="1" cellpadding="5">
				<tr bgcolor="orange">
					<th>장난감 이름</th>
					<th>장난감 설명</th>
					<th>사진 정보</th>
					<th>기부 방법</th>
					<th>기부 상태</th>
				</tr>
				<c:forEach items="${givelist }" var="givelist">
					<tr>
						<td align=center>${givelist.toyname}</td>
						<td align=center>${givelist.toydesc}</td>
						<td align=center>${givelist.image}</td>
						<td align=center>${givelist.method}</td>
						<td align=center>${givelist.give_state}</td>
					</tr>
				</c:forEach>
			</table>
		</form>
		</logic:present>
		<logic:notPresent name="givelist" scope="request">
		<h4>기부 목록이 존재하지 않습니다.</h4>
		</logic:notPresent>
		<br>
		<!--  -->
		<form action="main.do">
			<input type="submit" value="메인으로">
		</form>
		<br><br>
	</center>
</body>
</html>
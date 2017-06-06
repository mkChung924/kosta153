<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세 페이지</title>
<style>
.detail td {
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<h3>상세 페이지 - ${detail.toyname }</h3>
		<br>
		<br>
		<form action="rentreq.do?action=rent_req&serial=${detail.toy_serial }" method="post">
		<div class="detail">
			<table border="1" cellspacing="1" cellpadding="10">
				<tr>
					<td rowspan="5"><img src="../image/toy/${detail.toyimage }"
						width="300" height="300"></td>
					<td bgcolor="orange">시리얼 넘버</td>
					<td>${detail.toy_serial }</td>
				</tr>
				<tr>
					<td bgcolor="orange">이름</td>
					<td><b>${detail.toyname }</b></td>
				</tr>
				<tr>
					<td bgcolor="orange">종류</td>
					<td><b>${detail.toykind }</b></td>
				</tr>
				<tr>
					<td bgcolor="orange">연령대</td>
					<td><b>${detail.toyage }세</b></td>
				</tr>
				<tr>
					<td bgcolor="orange">추가 날짜</td>
					<td><b>${detail.add_date }</b></td>
				</tr>
			</table>
		</div>
		<br>
		<br>
		 
		<c:if test="${possible eq 'ok'}">
		<c:if test="${user1 eq '준회원' }">
		<input type="radio" name="rentmethod" value="방문" checked="checked">방문 &nbsp;&nbsp;&nbsp; 
		<input type="radio" name="rentmethod" value="택배" disabled="disabled">택배<br><br>
		</c:if>
			<c:if test="${user1 eq '정회원' }">
			<input type="radio" name="rentmethod" value="방문" checked="checked">방문 &nbsp;&nbsp;&nbsp; 
			<input type="radio" name="rentmethod" value="택배">택배<br><br>
			</c:if>
		<logic:present name="id" scope="session">	
			<input type="submit" value="대여신청" style="font-size: 100px"> &nbsp;&nbsp;&nbsp;
		</logic:present>
		</c:if>
		
		<c:if test="${possible eq 'nok'}">
		이미 대여 신청중이거나 대여중인 상품입니다.<br><br> 
		</c:if>
			<input type="button" value="뒤로가기" style="font-size: 100px" onclick="history.back()"><br>
			</form>
		<br>
		<br>
	</center>
</body>
</html>
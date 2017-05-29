<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
</head>
<body>
	
	<center>
	<logic:notPresent name="admin" scope="session">
		<h3>마이페이지</h3>
		<table border=1 cellspacing="0" cellpadding="2" width="200">
			<tr>
				<td align="center">아이디:</td>
				<td align="center">${id }</td>
			</tr>
			<tr>
				<td align="center">회원등급:</td>
				<td align="center">${user1 }</td>
			</tr>
		</table>
		<br><br>
		<div>
			다음의 항목을 제공합니다.<br><br>
			<table>
				<tr><td align="center"><b>회원 여러분의 정보 수정</b></td></tr>
				<tr><td align="center"><b>대여 현황 보기</b></td></tr>
				<tr><td align="center"><b>대여신청 현황 보기</b></td></tr>
				<tr><td align="center"><b>장난감 요청 목록 보기</b></td></tr>
				<tr><td align="center"><b>기부 목록 보기</b></td></tr>
			</table>
		</div>
		
		<br><br>
		</logic:notPresent>
			<logic:present name="admin" scope="session">
		<h3>관리자 페이지</h3>
		<div>
			다음의 항목을 제공합니다.<br><br>
			<table>
				<tr><td align="center"><b>회원 정보 보기</b></td></tr>
				<tr><td align="center"><b>대여 현황 보기</b></td></tr>
				<tr><td align="center"><b>대여신청 현황 보기</b></td></tr>
				<tr><td align="center"><b>장난감 요청 목록 보기</b></td></tr>
				<tr><td align="center"><b>기부 목록 보기</b></td></tr>
			</table>
		</div>
		
		<br><br>
		</logic:present>
	</center>
</body>
</html>
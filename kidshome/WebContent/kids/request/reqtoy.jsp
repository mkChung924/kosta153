<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<logic:present scope="session" name="id">
		<h4>필요하신 장난감을 신청해주세요. 심사 후 추가할 수 있도록 하겠습니다.</h4>
		<br><br>
		<form action="req_insert.do?action=req" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>장난감 이름:</td>
					<td><input type="text" name="toyname"></td>
				</tr>
				<tr>
					<td>신청 이유:</td>
					<td><textarea rows="7" cols="50" name="toydesc">#간략한 설명 부탁드립니다.</textarea></td>
				</tr>
				<tr>
					<td>사진 첨부:</td>
					<td><input type="file" name="pic"><br></td>
				</tr>
			</table>
			<br> <input type="submit" value="신청" onclick=""> 
			<input type="reset" value="초기화">
		</form>
		</logic:present>
		<logic:notPresent scope="session" name="id">
			<form action="login.do" method="post">
				현재 회원만 신청이 가능합니다. 로그인하여 신청해주십시오.<br><br>감사합니다.<br><br>
				<input type="submit" value="로그인">
			</form>	
		</logic:notPresent>
		<br>
		<br>
	</center>
</body>
</html>
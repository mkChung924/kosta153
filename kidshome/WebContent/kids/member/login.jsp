<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<%-- toyLogin.jsp --%>
</head>
<body>
	<center>
		<h3>로그인</h3>
		<hr>
		<form action="happy.do" method="post">
		<table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
				
				<td rowspan="2"><input type="submit" value="로그인"></td>
			<tr>
				<td>PASS</td>
				<td><input type="password" name="pass"></td>
			</tr>
		</table>
		<br><br>
		<html:messages id="msgs" message="true">
			<font color="red"><bean:write name="msgs"/></font>
		</html:messages>
		
		<html:messages property="errorid" id="msgs">
				<font color="blue"><bean:write name="msgs"/> </font>
				</html:messages>
		<html:messages property="errorpass" id="msgs">
				<font color="blue"><bean:write name="msgs"/></font>
			</html:messages> <br>

		<!-- 세션영역에 user라는 키값이 존재하지 않는다면 -->
		<logic:notPresent scope="session" name="id">
		<b>로그인 하세요!</b><br>
		</logic:notPresent>
		</form>
	</center>
</body>
</html>
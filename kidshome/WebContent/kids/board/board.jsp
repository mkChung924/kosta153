<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<table border="0" width="1300px" cellspacing="1" cellpadding="1">
	
		<tr>
			<td align="center" colspan="2"><tiles:insert attribute="header"/></td>
		</tr>
		
		<tr>
			<td height="40">
				<table align="center" border=0 cellspacing="0" cellpadding="1" height="100%">
					<tr>
						<td bgcolor="#FFFFD2" width="1300px" align="center">
						
						<tiles:insert attribute="menu"/>
						</td>
					</tr>
				</table>
			</td>	
		</tr>
		<logic:present name="id" scope="session">
		<tr>
			<td height="580"><tiles:insert attribute="body"/></td>
		</tr>
		</logic:present>
		<logic:notPresent name="id" scope="session">
		<tr>		
			<td height="580" align="center">
			<table>
				<tr>
				<td colspan="2"><h2>회원만 접근이 가능한 페이지입니다.</h2></td>
				</tr>
				<tr><td align="center">로그인</td><td><input type="image" src="../image/button/login_icon.png" width="80" onclick="location.href='login.do'"></td></tr>
				<tr><td align="center">회원가입</td><td><img src="../image/button/join.png" width="80" height="30" style="cursor: pointer;" onclick="location.href='signUp.do'"></td></tr>
			</table>
			</td>
		</tr>
		</logic:notPresent>
		<tr>
			<td colspan="2"><tiles:insert attribute="footer"/></td>
		</tr>
	</table>
</center>
</body>
</html>
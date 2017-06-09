<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
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
						<td bgcolor="pink" width="1300px" align="center">
						<tiles:insert attribute="menu"/>
						</td>
					</tr>
				</table>
			</td>	
		</tr>

		<tr>
		<logic:present name="id" scope="session">
			<td height="580"><tiles:insert attribute="body"/></td>
		</logic:present>
		<logic:notPresent name="id" scope="session">
 			<td height="580" align="center"><h1>잘못된 접근입니다.</h1><br><br><input type="button" value="로그인" style="font-size: 100px" onclick="location.href='login.do'"></td>
		</logic:notPresent>
		</tr>
		
		<tr>
			<td colspan="2"><tiles:insert attribute="footer"/></td>
		</tr>
	</table>
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인/회원가입</title>
</head>
<body>
<center>
	<table border="0" width="1300px" cellspacing="1" cellpadding="1">
	
		<tr>
			<td align="center"><tiles:insert attribute="header"/></td>
		</tr>
		
		<tr>

			<td height="620"><tiles:insert attribute="body"/></td>
			
		</tr>
		
		<tr>
			<td><tiles:insert attribute="footer"/></td>
		</tr>
	</table>
</center>
</body>
</html>
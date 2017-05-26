<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%-- info.jsp --%>
<body>
<center>
	<table border="0" width="1300px" cellspacing="1" cellpadding="1">
	
		<tr>
			<td align="center" colspan="2"><tiles:insert attribute="header"/></td>
		</tr>
		
		<tr>
			<td width="263px" bgcolor="pink" height="500">
				<table border=0 cellspacing="0" cellpadding="1" height="100%">
					<tr>
						<td width="263px" align="center">
						<tiles:insert attribute="menu"/>
						</td>
					</tr>
				</table>
			</td>
			<td height="500"><tiles:insert attribute="body"/></td>
			
		</tr>
		
		<tr>
			<td colspan="2"><tiles:insert attribute="footer"/></td>
		</tr>
	</table>
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.foot {
	padding-top: 20px;
	width: 1310px;
	height: 80px;
}
</style>
</head>
<body>
	<logic:notPresent name="admin" scope="session">
	<center>
		<div class="foot" align="center" style="background: #F2CB61;">
			정명규 | 김영대 | 신윤희 | 최희수 | 김가희 | 박제호<br>
			<br> &#169;나Java봐라 All right reserved.<br>
		</div>
	</center>
	</logic:notPresent>
		<logic:present name="admin" scope="session">
	<center>
		<div class="foot" align="center" style="background: #F2CB61;">
			정명규 | 김영대 | 신윤희 | 최희수 | 김가희 | 박제호<br>
			<a href="my.do">관리자 페이지</a>
			<br> &#169;나Java봐라 All right reserved.<br>
		</div>
	</center>
	</logic:present>
</body>
</html>
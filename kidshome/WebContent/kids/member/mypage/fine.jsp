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
		<logic:present name="id" scope="session">
		<logic:notPresent name="list" scope="request">
		<h3>연체납부가 존재하지 않습니다.</h3><br><br>
		</logic:notPresent>
		<logic:present name="list" scope="request">
		<h3>연체료 납부 현황</h3>
			<br>
			<logic:present name="tot" scope="request">
			<h3>총 연체료 : &nbsp;&nbsp;&nbsp; <font size=5 color=red><b>${tot.fine }원</b></font></h3>
			</logic:present>
			<br>
			<table border="1" cellpadding="6" width="1300" cellspacing="0">
				<tr bgcolor="#F15F5F">
					<th width="500">장난감 시리얼</th>
					<th width="500">날짜</th>
					<th>연체료</th>
					
				</tr>
				<c:forEach items="${list }" var="re" varStatus="status">
				<c:if test="${status.count%2==0 }">
					<tr bgcolor="#FFD8D8">
					</c:if>
						<td align="center"><a href='toydetail.do?serial=${re.toy_serial}'><font color=blue>${re.toy_serial}</font></a></td>
						<td align="center">${re.gdate}</td>
						<td align="center">${re.fine}원</td>
					</tr>
				</c:forEach>
			</table>
		<br>
		</logic:present>
		<form action="main.do" method="post">
			<input type="submit" value="메인으로">
		</form>
		</logic:present>
	</center>

</body>
</html>
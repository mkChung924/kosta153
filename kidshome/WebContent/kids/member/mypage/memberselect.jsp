<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8");//파라미터 한글 처리
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#member table{
	text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입처리결과</title>
</head>
<%-- userprocess.jsp(DB입력처리---> 결과출력) --%>
<body>
<center>
<div id="member">
	<h2>회원 정보</h2><br>
	<form action="main.do" method="post">
	
	<div align="left"><b>&nbsp;&nbsp;&nbsp;<font size=5px>운영진</font></b></div><br>
    <table border="1" cellpadding="5" width="1300">
       <tr bgcolor="#F15F5F"><th>이름</th><th>이름</th><th>생년월일</th><th>주소</th><th>이메일</th><th>전화번호</th><th>등급</th><th>가입일</th></tr>      
       <c:forEach items="${list }" var="toy">
       	<c:if test="${toy.auth == '2' }">
	       <tr>
	           <td width="120">${toy.id}</td>
	           <td>${toy.name}</td>	           
	           <td>${toy.birth}</td>
	           <td align="center" width="320">${toy.addr}</td>
	           <td>${toy.email}</td>
	           <td>${toy.tel}</td>
	           <td align="center">${toy.auth}</td>
	           <td>${toy.regdate}</td>
	       </tr>
	    </c:if>              
       </c:forEach>        
    </table>
    
    <br><br>
    <div align="left"><b>&nbsp;&nbsp;&nbsp;<font size=5px>회원</font></b></div><br>
    <table border="1" cellpadding="5" width="1300">
       <tr bgcolor="#F15F5F"><th>이름</th><th>이름</th><th>생년월일</th><th>주소</th><th>이메일</th><th>전화번호</th><th>등급</th><th>가입일</th></tr>      
       <c:forEach items="${list }" var="toy" varStatus="status">
       	<c:if test="${toy.auth != '2' }">
       	<c:if test="${status.count%2 == 0 }">
	       <tr bgcolor="#FFD8D8">
	       </c:if>
	           <td width="120">${toy.id}</td>
	           <td>${toy.name}</td>	           
	           <td>${toy.birth}</td>
	           <td align="center" width="320">${toy.addr}</td>
	           <td>${toy.email}</td>
	           <td>${toy.tel}</td>
	           <td align="center">${toy.auth}</td>
	           <td>${toy.regdate}</td>
	       </tr>
	    </c:if>              
       </c:forEach>        
    </table>
    <br>
	<input type="submit" value="메인으로">
	</form>
	<br><br>
</div>	
</center>	
</body>
</html>
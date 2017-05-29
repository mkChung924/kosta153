<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8");//파라미터 한글 처리
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입처리결과</title>
</head>
<%-- userprocess.jsp(DB입력처리---> 결과출력) --%>
<body>
	<form action="main.do" method="post">
		<center>
    <table border="1" cellpadding="5">
       <tr bgcolor="purple"><th>이름</th><th>이름</th><th>생년월일</th><th>주소</th><th>이메일</th><th>전화번호</th><th>등급</th><th>가입일</th></tr>      
       <c:forEach items="${list }" var="toy">
	       <tr>
	           <td>${toy.id}</td>
	           <td>${toy.name}</td>	           
	           <td>${toy.birth}</td>
	           <td>${toy.addr}</td>
	           <td>${toy.email}</td>
	           <td>${toy.tel}</td>
	           <td>${toy.auth}</td>
	           <td>${toy.regdate}</td>
	       </tr>              
       </c:forEach>        
    </table>
    <br>
			<input type="submit" value="메인으로">
		</center>
	</form>
</body>
</html>
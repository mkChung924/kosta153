<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
</head>
<body>
		<form action="free.do" method="post">
	<center>
		<h3>자유게시판</h3>
		<br>
		<table border='0' cellspacing=1 cellpadding=2 width='1100'>
			<tr bgcolor='#B2EBF4' align="center">
				<td><font size=4><b>번호</b></font></td>
				<td width="600"><font size=4><b>글 제목</b></font></td>
				<td width="120"><font size=4><b>작성자</b></font></td>
				<td><font size=4><b>작성일</b></font></td>
				<td><font size=4><b>조회</b></font></td>
			</tr>
			
			 <c:forEach items="${list }" var="Board" varStatus="status"> 
			<tr bgcolor='ededed'  align="center">
				<td><font size=3>${Board.no }</font></td>
				<td><a href="freeupdel.do?action=call&no=${Board.no }"> <font size=3 color="black">${Board.free_title }</font></a></td>
				<td><font size=3>${Board.user_id }</font></td>
				<td><font size=3>${Board.gdate }</font></td>
				<td><font size=3>${Board.free_count }</font></td>
			</tr>
			 </c:forEach> 
		</table>
		<br><br>
	<c:forEach begin="1" end="${totalPage }" var="i">
       [<a href="freelist.do?page=${i}">${i }</a>]
    </c:forEach>
    <br><br>
      <c:choose>
        <c:when test="${page==1 }">
                이전
        </c:when>
        <c:otherwise>
         <a href="freelist.do?page=${page-1 }">이전</a> 
        </c:otherwise>
      </c:choose>
            
      <c:if test="${page==totalPage }">
              다음
      </c:if>
      
      <c:if test="${page<totalPage }">
        <a href="freelist.do?page=${page+1 }">다음</a>
      </c:if>
      
		<br><br>
	<input type="submit" value="글쓰기">
	</center>
	</form>
	
</body>
</html>
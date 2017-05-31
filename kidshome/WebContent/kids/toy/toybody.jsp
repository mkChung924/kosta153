<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   	    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<center>
<h3>키즈홈의 장난감을 소개합니다.<br><br> 아이들이 가장 좋아하는 장난감을 준비하였습니다.</h3>
<%-- 		<table border=0 cellspacing=1 cellpadding=0>
			<tr>
			<c:forEach items="${toys }" var="toys" varStatus="stat" >
				<td width="200" height="" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지0" src="../image/toy/${toys.toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys.toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys.vacant }</font></td></tr>
					</table>
				</td>	
			</c:forEach>	
			</tr>
		</table> --%>
		<table border=0 cellspacing="1" cellpadding="0">
			<tr>
				<td width="200" height="" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지0" src="../image/toy/${toys[0].toyimage}" width="245" height="200" onclick="location.href='toydetail.do?serial=${toys[0].toy_serial}'" style="cursor: pointer;"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[0].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[0].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지1" src="../image/toy/${toys[1].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[1].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태:<font color=blue> ${toys[1].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지2" src="../image/toy/${toys[2].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[2].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[2].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지3" src="../image/toy/${toys[3].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[3].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[3].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
			</tr>
			<tr>
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지4" src="../image/toy/${toys[4].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[4].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[4].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지5" src="../image/toy/${toys[5].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[5].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[5].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>						
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지6" src="../image/toy/${toys[6].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[6].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[6].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지7" src="../image/toy/${toys[7].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[7].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[7].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
	
			</tr>
			<tr>
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지8" src="../image/toy/${toys[8].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[8].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[8].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지9" src="../image/toy/${toys[9].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[9].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[9].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지10" src="../image/toy/${toys[10].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[10].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[10].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
				<td width="200" align="center">
					<table border=1 cellspacing="0" width="100%">
						<tr><td height="240" align="center"><img alt="이미지11" src="../image/toy/${toys[11].toyimage}" width="245" height="200"></td></tr>
						<tr bgcolor="orange"><td height="30" align="center">${toys[11].toyname }</td></tr>
						<tr><td height="30" align="center">재고상태: <font color=blue>${toys[11].vacant }</font> / ${toys[0].toytotal }</td></tr>
					</table>
				</td>					
		
			</tr>
		</table>
		
		<br>
		<c:forEach begin="1" end="${totalPage }" var="i">
			[<a href="toy.do?page=${i }">${i }</a>]
		</c:forEach>
		<br><br>
		<c:if test="${page == 1 }">
		이전
		</c:if>
		<c:if test="${page > 1 }">
		<a href="toy.do?page=${page-1 }">이전</a>
		</c:if>
		<c:if test="${page == totalPage}">
		다음
		</c:if>
		<c:if test="${page < totalPage}">
		<a href="toy.do?page=${page+1 }">다음</a>
		</c:if>
		<br><br>
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<center>
		<h4>검색</h4>
		<form action='search.do' method="get">
			<input type="text" name='toy_n'>
			<table>
				<tr>
					<td><select name='toy_a'>
							<option value="">연령대
							<option value="0~3">0-3살
							<option value="4~7">4-7살
					</select></td>
					<td><select name='toy_k'>
							<option value="">장난감종류
							<option value="퍼즐">퍼즐,블럭
							<option value="조작놀이">조작놀이
							<option value="음률">음률
							<option value="역할놀이">역할놀이
							<option value="쏘서">쏘서
							<option value="모빌">모빌
							<option value="놀이터">놀이터
					</select></td>
				</tr>
			</table>
			<input type="submit">
		</form>
		<hr>
		<table border="0" width="1000" height="600" cellspacing="0">
			<c:forEach begin="1" step="1" end="12" var="num">
			<c:if test="${num%4==1||num==1}">
			<tr height="33%">
			</c:if>
				<td width="25%">
					<c:if test="${pagect>=num}">
					<table border='1' cellspacing="1" width="200" height="180" cellpadding="5">
						<tr height="80%">
							<td width="100%" colspan="2"><img width="200" height="180" onclick="location.href='toydetail.do?serial=${toylist[num-1].toy_serial}'" src="../image/toy/${toylist[num-1].toyimage}" style="cursor: pointer;"></td>
						</tr>
						<tr height="20%">
							<td align="center" width="70%">${toylist[num-1].toyname}</td>
							<td align="center" width="30%">${toylist[num-1].vacant}</td>
						</tr>
						</table>
					</c:if>
				</td>
			</c:forEach>
		</table>
		<br>
		<a href="search.do?toy_n=${param.toy_n}&toy_a=${param.toy_a}&toy_k=${param.toy_k}&toy_pg=${page-10}"><img src="../image/doge.png"></a>
		<c:forEach begin="${startpage}" end="${endpage}" step="1" var="pagelist">
		<a href="search.do?toy_n=${param.toy_n}&toy_a=${param.toy_a}&toy_k=${param.toy_k}&toy_pg=${pagelist}">${pagelist}</a>
		</c:forEach>
		<a href="search.do?toy_n=${param.toy_n}&toy_a=${param.toy_a}&toy_k=${param.toy_k}&toy_pg=${page+10}"><img src="../image/doge.png"></a>
		<br><br>
	</center>
</body>
</html>
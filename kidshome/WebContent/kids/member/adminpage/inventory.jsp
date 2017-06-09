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
<script type="text/javascript" src="js/jquery3.js"></script>
<title>대여페이지</title>
<style>

#inv td{
	text-align: center;
}

</style>
<script type="text/javascript">

	function update(serial,cnt){
		var s = serial;
		var d = document.getElementById(cnt).value;
		location.href='updateTotalInventory.do?toy_serial='+s+'&toytotal='+d;
		
	}

</script>
</head>
<%-- userprocess.jsp(DB입력처리---> 결과출력) --%>
<body>
	<center>
	<br>
	<h2>총 재고 현황</h2>
		<div align="right">
		<input type="button" value="장난감 추가" style="font-size: 20px" onclick="alert('빠른 시일내 구현하도록 하겠습니다.')"><br><br>
		</div>
		<form method="post" id="inv">
			<table border="1" cellpadding="5" width="1300">
				<tr bgcolor="#F15F5F">
					<th>시리얼넘버</th>
					<th>이름</th>
					<th>종류</th>
					<th>추천연령</th>
					<th>이미지</th>
					<th width="60">총 재고</th>
					<th>대여상태</th>
					<th>요청상태</th>
					<th>손상상태</th>
					<th>재고</th>
					<th>수정</th>
				</tr>
				<c:forEach items="${list }" var="toyinfo" varStatus="stat">
					<c:if test="${stat.count%2==0 }">
					<tr bgcolor="#FFD8D8">
					</c:if>
						<td>${toyinfo.toy_serial}</td>
						<td>${toyinfo.toyname}</td>
						<td>${toyinfo.toykind}</td>
						<td>${toyinfo.toyage}세</td>
						<td width="100"><img src='../image/toy/${toyinfo.toyimage}' width="100" height="100"></td>
						<td><input type="text" size="5" id=${stat.count } style="text-align: right; font-size: 15px;" name="total" value="${toyinfo.toytotal}"></td>
						<c:if test="${toyinfo.rentstate != '0' }">
						<td><a href="toyreqstate.do?action=rent&serial=${toyinfo.toy_serial }">${toyinfo.rentstate}</a>
						</c:if>
						<c:if test="${toyinfo.rentstate == '0' }">
						<td>${toyinfo.rentstate}</td>
						</c:if>
						<c:if test="${toyinfo.reqstate != '0' }">
						<td><a href="toyreqstate.do?action=rentreq&serial=${toyinfo.toy_serial }">${toyinfo.reqstate}</a></td>
						</c:if>
						<c:if test="${toyinfo.reqstate == '0' }">
						<td>${toyinfo.reqstate}</td>
						</c:if>
						<td>${toyinfo.damage}</td>
						<td>${toyinfo.vacant}</td>
						<td><input type="button" value="변경" style="font-size: 10px" onclick="update('${toyinfo.toy_serial }','${stat.count}')"> </td>
					</tr>
				</c:forEach>
			</table>
		</form><br><br>
		<form action="main.do">
			<input type="submit" value="메인으로">
		</form>
		<br><br>
	</center>
</body>
</html>
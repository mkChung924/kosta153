<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세 페이지</title>
<style>
.detail td {
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<h3>상세 페이지 - ${detail.toyname }</h3>
		<br>
		<br>
		<div class="detail">
			<table border="1" cellspacing="1" cellpadding="10">
				<tr>
					<td rowspan="5"><img src="../image/toy/${detail.toyimage }"
						width="300" height="300"></td>
					<td bgcolor="orange">시리얼 넘버</td>
					<td>${detail.toy_serial }</td>
				</tr>
				<tr>
					<td bgcolor="orange">이름</td>
					<td><b>${detail.toyname }</b></td>
				</tr>
				<tr>
					<td bgcolor="orange">종류</td>
					<td><b>${detail.toykind }</b></td>
				</tr>
				<tr>
					<td bgcolor="orange">연령대</td>
					<td><b>${detail.toyage }세</b></td>
				</tr>
				<tr>
					<td bgcolor="orange">추가 날짜</td>
					<td><b>${detail.add_date }</b></td>
				</tr>
			</table>
		</div>
		<br>
		<br> <input type="button" value="대여신청" style="font-size: 100px"
			src="../image/shinroot.jpg"> &nbsp;&nbsp;&nbsp; <input
			type="button" value="뒤로가기" style="font-size: 100px"
			onclick="history.back()"> &nbsp;&nbsp;&nbsp; <br>
		<br>
		<br>
	</center>
</body>
</html>
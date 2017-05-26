<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>장난감 기부 신청 페이지</h3>

		<img alt="" src="../image/shinroot.jpg" width="1000px" height="200px"><br>
		<br>

		<form action="#" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>장난감 이름:</td>
					<td><input type="text" name="nameoftoy"></td>
				</tr>
				<tr>
					<td>장난감 설명:</td>
					<td><textarea rows="9" cols="50" name="toydesc">#간략한 설명 부탁드립니다.</textarea></td>
				</tr>
				<tr>
					<td>사진 첨부:</td>
					<td><input type="file" name="pic"><br></td>
				</tr>
				<tr>
					<td>기부 방법:</td>
					<td><input type="radio" name="give" value="visit" checked="checked"> 방문
						<input type="radio" name="give" value="posts"> 택배</td>
				</tr>
				<tr>
					<td>수령 주소:</td>
					<td><textarea rows="1" cols="50" name="postaddr"></textarea></td>
				</tr>
				<tr>
				<td colspan="2" align="right">※ 택배를 선택하신분만 입력바랍니다.</td>
				</tr>
			</table>
			<br> <input type="submit" value="신청" onclick=""> <input
				type="reset" value="초기화">

		</form>

		<br>
		<br>
	</center>
</body>
</html>
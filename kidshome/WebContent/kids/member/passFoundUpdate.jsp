<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 변경</title>
<script type="text/javascript">
	function check() {
		form = document.frm;
		if (form.pass1.value == "" || form.pass2.value == "") {
			alert('값을 입력해 주세요.');
		} else if (!(form.pass1.value.match("[a-zA-Z]*[0-9]{8}")) || !(form.pass2.value.match("[a-zA-Z]*[0-9]{8}"))) {
			alert('비밀번호 형식이 일치하지 않습니다.');
		} else if (form.pass1.value != form.pass2.value) {
			alert('비밀번호가 일치하지 않습니다.')
		} else {
			form.submit();
		}
	}
</script>
</head>
<body>
	<center>
		<form action="passFoundGo.do?action=passUpdate" method="post" name="frm">
			<table cellpadding="10">
				<tr>
					<td><font size="2">새로운 비밀번호</font></td>
					<td><input type="password" name="pass1"></td>
				</tr>
				<tr>
					<td><font size="2">비밀번호 확인</font></td>
					<td><input type="password" name="pass2"></td>
				</tr>
				<tr>
				<td colspan="2" align="center"><input type="button" value="확인" name="passY" onclick="check()"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
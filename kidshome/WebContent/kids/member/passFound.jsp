<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아아디 찾기</title>
<script type="text/javascript">
	function check() {
		form = document.frm;
		if (form.id.value == "") {
			alert('아이디를 입력해주세요.');
		} else {
			form.submit();
		}
	}
</script>
</head>
<%-- passFound.jsp --%>
<body>
	<center>
		<h3>비밀번호 찾기</h3><br><br>
		
		<form action="passFoundGo.do?action=found" name="frm" method="post">			
			아이디: <input type="text" name="id"><br><br>

			<input type="button" value="찾기" name="idButton" onclick="check()"> &nbsp;&nbsp;
			<a href="form.do"><input type="button" value="로그인" name="login"></a>

		</form>
	</center>

</body>
</html>
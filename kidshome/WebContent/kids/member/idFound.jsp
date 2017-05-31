<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아아디 찾기</title>
<script type="text/javascript">
function check(){
    form = document.frm;
       if(form.name.value =="" || form.tel.value == ""){
          alert('입력칸이 비어있습니다. 확인해주세요');         
       }else if(!form.name.value.match("^[가-힣]*$")){
          alert('이름 형식이 올바르지 않습니다.');
           form.name.focus();
       }else if(!form.tel.value.match("[0-9]{3}-[0-9]{4}-[0-9]{4}")){
          alert('전화번호 형식이 올바르지 않습니다');
           form.tel.focus();
       }else{
          form.submit();
       }
 }

</script>
</head>
<%-- idFound.jsp --%>
<body>
	<center>
		<h3>아이디 찾기</h3>
			<br>
			<h4>가입시 입력했던 성명과 전화번호를 입력하세요.</h4><br>
			<form action="idFoundGo.do" name="frm" method="post">
		<table border="0" cellpadding="5">
			<tr><td></td><td></td></tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><font size="2" color="gray">'-'포함해서 입력해 주세요.</font></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="button" value="찾기" name="idButton" onclick="check()"> <a href="login.do"><input type="button" value="로그인" name="login"></a></td>
				
			</tr>
		</table>
		</form>
		<br><br>
	</center>

</body>
</html>
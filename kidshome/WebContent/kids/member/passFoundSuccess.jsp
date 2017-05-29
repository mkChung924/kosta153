<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 변경</title>
<script type="text/javascript">
	function check(){
		form = document.frm;
		if(form.anw.value == ""){
			alert('값을 입력해 주세요.');
		}else{
			form.submit();			
		}
	}
</script>
</head>
<body>
	<center>
	<form action="passFoundGo.do?action=secure" method="post" name="frm">
	보안코드 질문 <input type="text" name="code"
		value="${list[0].secure_code }" readonly="readonly">	<br><br>
	
	보안코드 답변 <input type="text" name="anw"><br><br>
	
		<input type="button" value="확인" name="passY" onclick="check()"><br><br>
		
		<html:messages id="msg" message="true">
			<font color="red" size ="2"><bean:write name="msg"/> </font>
		</html:messages>
	</form>
	</center>
</body>
</html>
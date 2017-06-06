<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>중복확인</title>
<%-- toyLoginCheck.jsp --%>
<script type="text/javascript">

	function useId(){
		opener.document.input.id.value= 
			'${id }';
		window.close();

	}
	
	function Check(){
		form = document.checkF;
		
		id = form.idCheck.value;
		
		var idExp = /^[a-zA-Z0-9]{5,10}$/g;
	
		if(id == ""){
			alert('값을 입력 해 주세요.');
		}else if(id.indexOf(" ")> -1 || 
				id.indexOf("\t")>=0 ||id.indexOf("\n")>-1){
			alert('값의 공백이 있습니다.')
		}else if(!idExp.test(id)){
	         alert('아이디 형식이 옳지 않습니다.');
		}else{
		 form.submit();
		}
	}
</script>
</head>
<body>
	<center>
		<form action="idCheck.do" method="post" name="checkF">
			<table border="0">
			<tr>
					<td colspan="2" align="center">사용 할 아이디를 입력해 주세요.</td>
			</tr>
				<tr>
					<td align="center"><input type="text" size="10" name="idCheck" width="100">
					<input type="button" value="중복확인" name = "checkB" onclick="Check()"></td>
				</tr>
			</table>
			<br><br>
			
			<html:messages id="msg" message="true">
				[ <b>${id }</b> ] <font color="red">은(는) <bean:write name="msg"/></font><br><br>
			<c:if test="${available eq 'ok'}">
				<input type="button" onclick="useId()" value="사용하기">		
			</c:if>
			</html:messages>
			
		</form>
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 --><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript">

	function win_open(){
		var idcheck = window.open('member/idCheck.jsp','idcheck',+
				'toolbar=yes,location=1,status=1,menubar=1,scrollbars=no,'+
				'resizable=yes,width=500,height=300,top=200,left=300')
	}

	function movetoTel1(){
		if(document.input.tel1.value.length == 3){
			document.input.tel2.focus();
		}
	}

	function movetoTel2(){
		if(document.input.tel2.value.length == 4){
			document.input.tel3.focus();
		}
	}

	function movetoMonth(){
		if(document.input.year.value.length == 4){
			document.input.month.focus();
		}
	}

	function movetoDay(){
		if(document.input.month.value.length == 2){
			document.input.day.focus();
		}
	}
	function checkEmpty() {
		form = document.input;

		email = form.email;
		pass = form.pass;
		pass1 = form.pass1;

		var emailExp = /^[a-zA-Z0-9]{3,15}@[a-zA-Z]+\.[a-zA-Z]+$/g;
		var passExp = /^[a-zA-Z0-9]{5,10}$/g;
		var pass1Exp = /^[a-zA-Z0-9]{5,10}$/g;

		if (form.id.value == "" || pass.value == "" || pass1.value == "" ||
			form.name.value == "" ||
			form.tel1.value == "" || form.tel2.value == "" || form.tel3.value == ""||
			email.value == "" || form.year.value=="" || form.month.value==""||
			form.day.value=="" || form.addr1.value=="" || form.addr2.value==""){
			alert('필수 입력칸이 비어있습니다. 확인해주세요');
		}else if(form.id.value.indexOf(" ")> -1 || form.id.value.indexOf("\t")>=0 ||form.id.value.indexOf("\n")>-1){
			alert('아이디 입력칸에 공백이 있습니다. 확인해주세요');
		}else if(pass.value.indexOf(" ")> -1 || pass.value.indexOf("\t")>=0 ||pass.value.indexOf("\n")>-1){
			alert('비밀번호 입력칸에 공백이 있습니다. 확인해주세요');
			pass.focus();
		}else if(pass1.value.indexOf(" ")> -1 || pass1.value.indexOf("\t")>=0 ||pass1.value.indexOf("\n")>-1){
			alert('비밀번호 입력칸에 공백이 있습니다. 확인해주세요');
			form.pass1.focus();
		}else if(form.name.value.indexOf(" ")> -1 || form.name.value.indexOf("\t")>=0 ||form.name.value.indexOf("\n")>-1){
			alert('이름 입력칸에 공백이 있습니다. 확인해주세요');
			form.name.focus();
		}else if(form.tel1.value.indexOf(" ")> -1 || form.tel1.value.indexOf("\t")>=0 ||form.tel1.value.indexOf("\n")>-1){
			alert('전화번호  입력 첫째칸에 공백이 있습니다. 확인해주세요');
			form.tel1.focus();
		}else if(form.tel2.value.indexOf(" ")> -1 || form.tel2.value.indexOf("\t")>=0 ||form.tel2.value.indexOf("\n")>-1){
			alert('전화번호  입력 두번째칸에 공백이 있습니다. 확인해주세요');
			form.tel2.focus();
		}else if(form.tel3.value.indexOf(" ")> -1 || form.tel3.value.indexOf("\t")>=0 ||form.tel3.value.indexOf("\n")>-1){
			alert('전화번호  입력 셋째칸에 공백이 있습니다. 확인해주세요');
			form.tel3.focus();
		}else if(email.value.indexOf(" ")> -1 ||email.value.indexOf("\t")>=0 ||email.value.indexOf("\n")>-1){
			alert('이메일 입력칸에 공백이 있습니다. 확인해주세요');
			email.focus();
		}else if(form.year.value.indexOf(" ")>-1 || form.year.value.indexOf("\t")>=0 || form.year.value.indexOf("\n")>-1 ){
			alert('태어난 년도 입력칸에 공백이 있습니다. 확인해주세요');
			form.year.focus();
		}else if(form.month.value.indexOf(" ")>-1 || form.month.value.indexOf("\t")>=0 || form.month.value.indexOf("\n")>-1 ){
			alert('태어난 월 입력칸에 공백이 있습니다. 확인해주세요');
			form.month.focus();
		}else if(form.day.value.indexOf(" ")>-1 || form.day.value.indexOf("\t")>=0 || form.day.value.indexOf("\n")>-1 ){
			alert('태어난 일 입력칸에 공백이 있습니다. 확인해주세요');
			form.day.focus();
		}else if((passExp.test(pass)) || pass.length < 6){
			alert('비밀번호 형식이 옳지 않습니다.');
			pass.focus();
		}else if(pass1Exp.test(pass1) || pass1.length < 6){
			alert('비밀번호 형식이 옳지 않습니다.');
			pass1.focus();
		}else if(pass.value != pass1.value){
				alert('비밀번호가 일치하지 않습니다.');
				pass1.value='';
				pass1.focus();
		}else if(form.name.value.match("[a-zA-Z][0-9]*")){
			alert('이름 형식이 옳지 않습니다.');
			form.name.focus();
		}else if(!(form.tel1.value.match("[0-9]*")) || !(form.tel2.value.match("[0-9]*")) || !(form.tel3.value.match("[0-9]*"))){
			alert('전화번호 형식이 옳지 않습니다.');
			form.tel3.focus();
		}else if(!(form.year.value.match("[0-9]"))||!(form.month.value.match("[0-9]"))||!(form.day.value.match("[0-9]")) ){
			alert('생년월일 형식이 옳지 않습니다.');
			form.day.focus();
		}else if((form.year.value < 1900)){
			alert('년도 형식이 옳지 않습니다.');
			form.year.focus();
		}else if(form.month.value.match > 12 || form.month.value.match < 1){
			alert('월 형식이 옳지 않습니다.');
			form.day.focus();
		}else if(form.day.value.match > 31 || form.day.value.match < 1){
			alert('일 형식이 옳지 않습니다.');
			form.day.focus();
		}else if(!emailExp.test(email.value)){
			alert('이메일 형식이 옳지 않습니다.');
			email.focus();
		}else{
		form.submit();

		}
	}
</script>
<style>
#signUp{
	margin: 0 auto;
	text-align: center;
}

#signUp table{
	margin: 0 auto;
	text-align: center;
}


</style>
</head>
<%-- joinForm.jsp --%>
<body>
<div id="signUp">
		<form action="joindone.do" method="post" name="input">
			<table width="600" border="0" cellpadding="5">
				<tr bgcolor="#3399cc">
					<td><font size="4" color="white">사용자정보입력</font>
				</tr>
				<tr>
					<td><b>안녕하세요.<br> 아래의
						사항들을 빠짐없이 기록해 주세요.</b>
					</td>
				</tr>
			</table>
			<table border="1" cellpadding="5" width="600">
				<tr>
					<td width="100" bgcolor="#ffcccc">사용자ID<font color="red">*</font></td>
					<td colspan="3" align="left"><input type="text" name="id" maxlength="10" readonly="readonly" onclick="win_open()">
					<font color="black" size="2">영문 숫자 혼용 최소 5자 최대10자</font>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">비밀번호<font color="red">*</font></td>
					<td align="left"><input type="password" name="pass" maxlength="10"> <font color="black" size="2">영문 숫자 혼용 최소 5자 최대10자</font></td>
				</tr>
				<tr>
					<td width="150" bgcolor="#ffcccc">비밀번호 확인<font color="red">*</font></td>
					<td align="left"><input type="password" name="pass1" maxlength="10"> <font color="black" size="2">영문 숫자 혼용 최소 5자 최대10자</font></td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">사용자이름<font color="red">*</font></td>
					<td colspan="3" align="left"><input type="text" name="name" maxlength="10"> <font size="2">한글만사용</font></td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">생년월일<font color="red">*</font></td>
					<td colspan="3" align="left">
					<input type="text" name="year" maxlength="4" size="4" onkeyup="movetoMonth()">년 &nbsp;
					<input type="text" name="month" maxlength="2" size="2" onkeyup="movetoDay()">월 &nbsp;
					<input type="text" name="day" maxlength="2" size="2">일
						<font size="2" color="gray"> '0000년 00월 00일 형식으로 입력해 주세요.'</font>
					</td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">주소<font color="red">*</font></td>
					<td colspan="3" align="left">
					지번주소 <input type="text" name="addr1" maxlength="20" ><br>
					상세주소 <input type="text" name="addr2" maxlength="20">
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">E-Mail<font color="red">*</font></td>
					<td colspan="3" align="left"><input type="text" name="email" size="30"></td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">전화번호<font color="red">*</font></td>
					<td colspan="3" align="left">
					<input type="text" name="tel1" size="3" maxlength="3" style="height: 15px" onkeyup="movetoTel1()"> -
					<input type="text" name="tel2" size="4" maxlength="4" style="height: 15px" onkeyup="movetoTel2()"> -
					<input type="text" name="tel3" size="4" maxlength="4" style="height: 15px">
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">보안 질문<font color="red">*</font></td>
					<td colspan="3" align="left">
						<%
							String quetion[] = { "==선택==", "당신의 고향은 어디신가요?", "가장 소중한 것은 무엇입니까?", "내가 졸업한 고등학교는?", "유년시절 나의 별명은?","아버지의 성함은?", "어머님의 성함은?"};
						%> <select name="secure_code ">
							<%
								for (int i = 0; i < quetion.length; i++) {
							%>
							<option value="<%=quetion[i]%>"><%=quetion[i]%></option>
							<%
								}
							%>
					</select>
					</td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">보안 질문 답<font color="red">*</font></td>
					<td colspan="3" align="left">
						<input type="text" name="secure_ans" maxlength="20" size=20>
					</td>
				</tr>
	
			</table><br>
			<img src="../image/button/request_icon.png" width="80" style="cursor: pointer;"  onclick="checkEmpty()">&nbsp;&nbsp;&nbsp;
			<img src="../image/button/allclean_icon.png" width="80" style="cursor: pointer;" onclick="document.input.reset()">
			
		</form>
		<br><br>
		<form action="main.do">
			<input type="image" src="../image/button/main_icon.png" width="80">
		</form>
		</div>
</body>
</html>

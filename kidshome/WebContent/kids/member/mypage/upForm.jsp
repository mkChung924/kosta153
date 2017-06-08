<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
   
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
	      }else if(!(passExp.test(pass.value))){
	         alert('비밀번호 형식이 옳지 않습니다.');
	         pass.focus();
	      }else if(!(pass1Exp.test(pass1.value))){
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
	      }else if((form.year.value < 1900) || form.year.value.length != 4){
	         alert('년도 형식이 옳지 않습니다.');
	         alert(form.year.value.length);
	         form.year.value='';
	         form.year.focus();
	      }else if(form.month.value.match > 12 || form.month.value.match <1 || form.month.value.length != 2){
	         alert('월 형식이 옳지 않습니다.');
	         alert(form.month.value.length);
	         form.month.value='';
	         form.month.focus();
	      }else if(form.day.value.match > 31 || form.day.value.match < 1 || form.day.value.length != 2){
	         alert('일 형식이 옳지 않습니다.');
	         form.day.value='';
	         form.day.focus();
	      }else if(!emailExp.test(email.value)){
	         alert('이메일 형식이 옳지 않습니다.');
	         email.focus();
	      }else if(form.secure_code.value == "==선택=="){
	         alert('보안 질문을 선택 해 주세요.');
	         form.secure_code.focus();
	      }else if(form.secure_ans.value == ''){
	         alert('답을 입력 해 주세요.');
	         form.secure_ans.focus();
	      }else{
	      form.submit();
	      }
	   }
</script>
<title>사용자 정보수정</title>
</head>
<body>
   <center>
      <h3>정보수정</h3>
      <form action="update.do?action=update" method="post" name="input">
      <table border="1" cellpadding="5" width="600">
            <tr>
               <td width="100" bgcolor="#ffcccc">사용자ID</td>
               <td colspan="3"><input type="text" name="id" maxlength="20" readonly="readonly" value="${user[0].id }">
               <font color="black" size="2">영문 숫자 혼용 최소 5자 최대10자</font></td>
            </tr>
            <tr>
               <td width="100" bgcolor="#ffcccc">비밀번호<font color="red">*</font></td>
               <td><input type="password" name="pass" maxlength="10"> <font color="black" size="2">영문 숫자 혼용 최소 5자 최대10자</font></td>
            </tr>
            <tr>
               <td width="150" bgcolor="#ffcccc">비밀번호 확인<font color="red">*</font></td>
               <td><input type="password" name="pass1" maxlength="10"> <font color="black" size="2">영문 숫자 혼용 최소 5자 최대10자</font></td>
            </tr>
            <tr>
               <td width="100" bgcolor="#ffcccc">사용자이름</td>
               <td colspan="3"><input type="text" name="name" maxlength="10" readonly="readonly" value="${user[0].name }"></td>
            </tr>
            <tr>
               <td width="100" bgcolor="#ffcccc">생년월일<font color="red">*</font></td>
               <td colspan="3">
               <input type="text" name="year" maxlength="4" size="4" onkeyup="movetoMonth()" readonly="readonly" value="${user[0].birth.split('-')[0] }"><font size=2px>년</font>&nbsp;
               <input type="text" name="month" maxlength="2" size="2" onkeyup="movetoDay()" readonly value="${user[0].birth.split('-')[1] }"><font size=2px>월</font>&nbsp;
               <input type="text" name="day" maxlength="2" size="2" readonly value="${user[0].birth.split('-')[2] }"><font size=2px>일</font>
               </td>
            </tr>
            <tr>
               <td width="100" bgcolor="#ffcccc">주소<font color="red">*</font></td>
               <td colspan="3">
               <font size=2px>지번주소</font> <input type="text" name="addr1" maxlength="20" value="${user[0].addr.split('-')[0] }"><br>
               <font size=2px>상세주소</font> <input type="text" name="addr2" maxlength="20" value="${user[0].addr.split('-')[1] }">
            </tr>
            <tr>
               <td width="100" bgcolor="#ffcccc">E-Mail<font color="red">*</font></td>
               <td colspan="3"><input type="text" name="email" size="30" value="${user[0].email }"></td>
            </tr>
            <tr>
               <td width="100" bgcolor="#ffcccc">전화번호<font color="red">*</font></td>
               <td colspan="3">
               <input type="text" name="tel1" size="3" maxlength="3" style="height: 15px" value="${user[0].tel.split('-')[0] }"> - 
               <input type="text" name="tel2" size="4" maxlength="4" style="height: 15px" value="${user[0].tel.split('-')[1] }"> -
               <input type="text" name="tel3" size="4" maxlength="4" style="height: 15px" value="${user[0].tel.split('-')[2] }">
               </td>
            </tr>
            <tr>
               <td width="100" bgcolor="#ffcccc">보안 질문<font color="red">*</font></td>
               <td colspan="3">
                  <%
                     String quetion[] = { "==선택==", "당신의 고향은 어디신가요?", "가장 소중한 것은 무엇입니까?", "내가 졸업한 고등학교는?", "유년시절 나의 별명은?","아버지의 성함은?", "어머님의 성함은?"};
                  %> <select name="secure_code">  
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
               <td colspan="3">
                  <input type="text" name="secure_ans" maxlength="20" size=20> 
               </td>
            </tr>
            <tr align="center">
               <td colspan="4"><input type="button" value="수정" onclick="checkEmpty()"> 
               <input type="reset" value="취소"></td>
            </tr>
         </table>
         </form>
   </center>
</body>
</html>
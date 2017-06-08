<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

   function check(){
   form = document.givetoy;
      if (form.toyname.value == ""){
         alert('장난감 이름을 입력해주세요.');
      }else if(form.toydesc.value == ""){
         alert('장난감 설명을 간략하게 입력해주세요.');
  	 }else{
  		 form.submit();
  	 }
   }
   </script>
</head>
<body>
	<center>

		<logic:present scope="session" name="id">
		<img alt="" src="../image/giveprocess.png" width="1200px" height="350px"><br>
		<br>
		<form action="req_insert.do" method="post" name="givetoy" enctype="multipart/form-data">
			<table>
				<tr>
					<td>장난감 이름:</td>
					<td><input type="text" name="toyname"></td>
				</tr>
				<tr>
					<td>장난감 설명:</td>
					<td><textarea rows="9" cols="50" name="toydesc"></textarea></td>
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
			<input type="hidden" name="action" value="give">
			<br> <img src="../image/button/request_icon.png" width="80" style="cursor: pointer;" onclick="check()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../image/button/allclean_icon.png" width="80" style="cursor: pointer;" onclick="document.givetoy.reset()">

		</form>
		</logic:present>
		<logic:notPresent scope="session" name="id">
			<form action="login.do" method="post">
				<b>현재 회원만 기부 신청이 가능합니다. 로그인하여 신청해주십시오.<br><br>감사합니다.<br><br></b>
				<input type="image" src="../image/button/login_icon.png" width="80">
			</form>	
		</logic:notPresent>
		<br>
		<br>
	</center>
</body>
</html>
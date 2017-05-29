<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<style>
  #bla {
  		margin: 0 auto;
  		text-align: center;
  }
  table{
  		margin: 0 auto;
  }
        </style>
<%-- toyLogin.jsp --%>
</head>
<body>
<div id='bla'>
			<!-- 세션영역에 user라는 키값이 존재하지 않는다면 -->
		<logic:notPresent scope="session" name="id">
		<h2>어서오십시오. 환영합니다.</h2><br><br><br>
		<form action="login_w.do" method="post">
		<table border="0" cellpadding="10" cellspacing="0">
			<tr>
				<td><font size=4px>아이디</font></td>
				<td><input type="text" name="id" autocomplete="off"></td>
			<tr>
				<td><font size=4px>비밀번호</font></td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="로그인"></td>
			</tr>
		</table>
		<br><br>
		<html:messages id="msgs" message="true">
			<font color="red"><bean:write name="msgs"/></font>
		</html:messages>
		
		<html:messages property="errorid" id="msgs">
				<font color="blue"><bean:write name="msgs"/> </font>
				</html:messages>
		<html:messages property="errorpass" id="msgs">
				<font color="blue"><bean:write name="msgs"/></font>
			</html:messages> <br>
		<br>
		<table border="0" cellspacing="0" cellpadding="3">
			<tr>
				<td align="left">아이디를 잊어버렸나요?</td>
				<td align="right"><input type="button" value="아이디 찾기" onclick="location.href='findid.do'"></td>
			</tr>
			<tr>
				<td align="left">비밀번호를 잊어버렸나요?</td>
				<td align="right"><input type="button" value="비밀번호 찾기" onclick="location.href='passFound.do'"></td>
			</tr>
			<tr>
				<td align="left">계정이 없으신가요?</td>
				<td align="right"><input type="button" value="회원가입" onclick="location.href='signUp.do'"></td>
			</tr>
		</table>
		</form>
		</logic:notPresent>
		<logic:present name="id" scope="session">
			<form action="logout.do" method="post">
				<table border=0 cellspacing="0" cellpadding="5">
				<tr>
					<td align="center">잘못된 접근입니다.<br>로그아웃 하시겠습니까?</td>
				</tr>
				<tr>
					<td align="center"><input type="submit" value="로그아웃"></td>
				</tr>
				
				</table>
			</form>
		</logic:present>

	</div>
</body>
</html>
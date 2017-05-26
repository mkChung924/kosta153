<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자등록</title>
<script type="text/javascript" src="../../js/validCheck.js"></script>

</head>
<%-- userinput.jsp --%>
<body>
	<center>
		<form action="toylogin.do" method="post" name="input">
			<table width="600" border="0" cellpadding="5">
				<tr bgcolor="#3399cc">
					<td><font size="4" color="white">사용자정보입력</font>
				</tr>
				<tr>
					<td>안녕하세요. 이 페이지를 자유롭게 이용하려면 먼저 회원가입을 하셔야 합니다.<br> 아래의
						사항들을 빠짐없이 기록해 주세요.
					</td>
				</tr>
			</table>
			<table border="1" cellpadding="5" width="600">
				<tr>
					<td width="100" bgcolor="#ffcccc">사용자ID<font color="red">*</font></td>
					<td colspan="3"><input type="text" name="id" maxlength="10">영문 숫자 혼용 최대10자
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">비밀번호<font color="red">*</font></td>
					<td><input type="password" name="pass" maxlength="10">영문 숫자 혼용 최대10자</td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">사용자이름<font color="red">*</font></td>
					<td colspan="3"><input type="text" name="name" maxlength="10">한글만사용</td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">전화번호<font color="red">*</font></td>
					<td colspan="3"><input type="text" name="tel1" size="6"
						maxlength="3" style="height: 23px"> <input type="text"
						name="tel2" size="6" maxlength="4" style="height: 23px"> <input
						type="text" name="tel3" size="6" maxlength="4"
						style="height: 23px">숫자만사용
				</tr>

				<tr>
					<td width="100" bgcolor="#ffcccc">E-Mail<font color="red">*</font></td>
					<td colspan="3"><input type="text" name="email" size="30"></td>
				</tr>
				<tr>
					<td width="100" bgcolor="#ffcccc">직업<font color="red">*</font></td>
					<td colspan="3">
						<%
							String jobs[] = { "==선택==", "학생", "공무원", "언론/출판", "군인/경찰", "일반사무직", "영업직", "기술/전문직", "보건/의료", "자영업", "주부",
									"기타" };
						%> <select name="job">
							<%
								for (int i = 0; i < jobs.length; i++) {
							%>
							<option value="<%=jobs[i]%>"><%=jobs[i]%></option>
							<%
								}
							%>
					</select>
					</td>
				</tr>
				<tr align="center">
					<td colspan="4">
						<input type="submit" value="등록" onclick="return validCheck()"> 
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
		<form action="main.do">
			<input type="submit" value="메인으로">
		</form>
	</center>


</body>
</html>

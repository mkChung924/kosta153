
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/header.css" />
<title>헤더메뉴</title>
<%--header.jsp --%>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#flip1").click(function() {
			$("#panel1").fadeToggle("slow",function(){
				
			});
		});
		
		$("#panel1").mouseleave(function(){
			$("#panel1").fadeOut(500);
		})
	
	
		$("#flip2").click(function() {
			$("#panel2").fadeToggle("slow",function(){
				
				$("#panel2").mouseleave(function(){
					$("#panel2").fadeOut(500);
				})
				
			});
		});
		
		$("#flip3").click(function() {
			$("#panel3").fadeToggle("slow",function(){
				
				$("#panel3").mouseleave(function(){
					$("#panel3").fadeOut(500);
				})
			});
		});
		
		$("#flip4").click(function() {
			$("#panel4").fadeToggle("slow",function(){
				$("#panel4").mouseleave(function(){
					$("#panel4").fadeOut(500);
				})
			});
		});
		
		$("#flip5").click(function() {
			$("#panel5").fadeToggle("slow",function(){
				$("#panel5").mouseleave(function(){
					$("#panel5").fadeOut(500);
				})
			});
		});
	});
	
</script>
<style>
#flip1 {
	padding: 0px;
	text-align: center;
	background-color: #489CFF;
	border: solid 1px black;
}
#panel1 {
	margin-left: 0px;
	background-color: whtie;
	text-align: center;
	padding: 0px;
	display: none;
}
#flip2 {
	padding: 0px;
	text-align: center;
	background-color: #41FF3A;
	border: solid 1px black;
}

#panel2 {
	margin-left: 0px;
	background-color: whtie;
	text-align: center;
	padding: 0px;
	display: none;
}
#flip3 {
	padding: 0px;
	text-align: center;
	background-color: #FF5A5A;
	border: solid 1px black;
}

#panel3 {
	margin-left: 0px;
	background-color: whtie;
	text-align: center;
	padding: 0px;
	display: none;
}
#flip4 {
	padding: 0px;
	text-align: center;
	background-color: #D941C5;
	border: solid 1px black;
}

#panel4 {
	margin-left: px;
	background-color: whtie;
	text-align: center;
	padding: 0px;
	display: none;
}
#flip5 {
	padding: 0px;
	text-align: center;
	background-color: #FFFF48;
	border: solid 1px black;
}

#panel5 {
	margin-left: 0px;
	background-color: whtie;
	text-align: center;
	padding: 0px;
	display: none;
}
a{
	cursor: pointer;
}
</style>
</head>
<body>
<center>
	<table id="heads" border=0>
		<tr>
<!-- 		<td class="logo" align="left">
				<img src="../image/kidshomelogo2.png" width="1300" height="240" onclick="location.href='main.do'" style="cursor: pointer;">
		</td> -->
 			<td align="left">
				<img src="../image/logo.png" width="220" height="90" onclick="location.href='main.do'" style="cursor: pointer;">
			</td>
			<td class="member" align="right">
				<logic:present name="id" scope="session">
				<a href="logout.do"><font color="blue">로그아웃</font></a> | <a href="my.do"><font color="blue">마이페이지</font></a>
				</logic:present>
				<logic:notPresent name="id" scope="session">
				<a href="login.do" style="text-decoration: none;"><font color="blue" size=4px>로그인</font></a> 
				<font size=4px>|</font> 
				<a href="signUp.do"  style="text-decoration: none"><font color="blue" size=4px>회원가입</font></a>
				</logic:notPresent>
				
			</td>
		</tr>
	</table>
	<table>
	<tr>
	<td align="right">
		<div class="topMenu">
			<ul>
				<li class="topMenuLi">
				<a class="menuLink" id="flip1" style="cursor: pointer;">소개</a>
					<ul class="submenu" id="panel1">
						<li><a class="submenuLink" href="vision.do">Vision</a></li>
						<li><a class="submenuLink" href="about.do">우리소개</a></li>
					</ul></li>
				<li class="topMenuLi">
				<a class="menuLink" id="flip2">안내</a>
					<ul class="submenu" id="panel2">
						<li><a class="submenuLink" href="rentinfo.do">이용 안내</a></li>
						<li><a class="submenuLink" href="giveinfo.do">기부 안내</a></li>
						<li><a class="submenuLink" href="meminfo.do">회원 안내</a></li>
					</ul></li>
				<li class="topMenuLi">
				<a class="menuLink" id="flip3">장난감</a>
					<ul class="submenu" id="panel3">
						<li><a class="submenuLink" href="search.do">우리 장난감</a></li>
					</ul></li>
				<li class="topMenuLi">
				<a class="menuLink" id="flip4">신청</a>
				<ul class="submenu" id="panel4">
						<li><a class="submenuLink" href="givetoy.do">기부 신청하기</a></li>
						<li><a class="submenuLink" href="reqtoy.do">정남감 요청하기</a></li>
					</ul></li>
				<li class="topMenuLi">
				<a class="menuLink" id="flip5">게시판</a>
				<ul class="submenu" id="panel5">
						<li><a class="submenuLink" href="announce.do">공지사항</a></li>
						<li><a class="submenuLink" href="free.do">자유게시판</a></li>
						<li><a class="submenuLink" href="after.do">후기게시판</a></li>
				</ul></li>
		
			</ul>
		</div>
	</td>
	</tr>
	</table>
	
</center>
</body>
</html>

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
</head>
<body>
<center>
	<table id="heads" border=0>
		<tr>
			<td class="logo" align="left">
				<img src="../image/shinroot.jpg" width="200" height="70" onclick="location.href='#'">
			</td>
			<td class="member" align="right">
				<logic:present name="user" scope="session">
				<a href="#"><font color="blue">로그아웃</font></a> | <a href="#"><font color="blue">마이페이지</font></a>
				</logic:present>
				<logic:notPresent name="user" scope="session">
				<a href="#"><font color="blue">로그인</font></a> | <a href="#"><font color="blue">회원가입</font></a>
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
				<a class="menuLink" href="#">소개</a>
					<ul class="submenu">
						<li><a class="submenuLink" href="#">Vision</a></li>
						<li><a class="submenuLink" href="#">우리소개</a></li>
					</ul></li>
				<li><font color="black">|</font></li>
				<li class="topMenuLi">
				<a class="menuLink" href="#">안내</a>
					<ul class="submenu">
						<li><a class="submenuLink" href="#">대여 안내</a></li>
						<li><a class="submenuLink" href="#">기부 안내</a></li>
						<li><a class="submenuLink" href="#">회원 안내</a></li>
					</ul></li>
				<li><font color="black">|</font></li>
				<li class="topMenuLi">
				<a class="menuLink" href="#">장난감</a>
					<ul class="submenu">
						<li><a class="submenuLink" href="#">검색하기</a></li>
						<li><a class="submenuLink" href="#">종류별로 보기</a></li>
					</ul></li>
				<li class="topMenuLi">
				<a class="menuLink" href="#">신청</a>
				<ul class="submenu">
						<li><a class="submenuLink" href="#">기부 신청하기</a></li>
						<li><a class="submenuLink" href="#">정남감 요청하기</a></li>
					</ul></li>
				<li><font color="black">|</font></li>
				<li class="topMenuLi">
				<a class="menuLink" href="#">게시판</a>
				<ul class="submenu">
						<li><a class="submenuLink" href="#">공지사항</a></li>
						<li><a class="submenuLink" href="#">자유게시판</a></li>
						<li><a class="submenuLink" href="#">후기게시판</a></li>
				</ul></li>
		
			</ul>
		</div>
	</td>
	</tr>
	</table>
	
</center>
</body>
</html>
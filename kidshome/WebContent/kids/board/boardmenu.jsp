<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.menu ul {
    list-style:none;
    margin:0;
    padding:0;
    text-align: center;
    
}

.menu li {
	text-decoration:none;
	margin-top: 30px;
    margin-right: 40px;
    margin-left: 40px;
    display: inline;
}

.menu a {
	color: black;
	text-decoration:none;
	font-size: 18px;
}

.menu a:hover{
	color: blue;
}

</style>
</head>
<body>
<div class="menu">
<ul>
	<li><html:link action="/kids/announce">공지사항</html:link>
	<li><html:link action="/kids/free">자유 게시판</html:link>
	<li><html:link action="/kids/after">후기 게시판</html:link>
</ul>
</div>
</body>
</html>
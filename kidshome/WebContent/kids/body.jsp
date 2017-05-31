<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#toys td{
	border-radius: 25px;
}
</style>
<title>이미지 슬라이드 배너형</title>
    <!--스타일시트 추가-->
    <link rel="stylesheet" href="../css/body.css">
    <!--jQuery 라이브러리 추가-->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!--jQuery 플러그인 추가-->
    <script src="../js/jquery.banner.js"></script>
    <!--jQuery 플러그인 옵션 설정 추가-->
    <script src="../js/slide.js"></script>
</head>
<body>
<center>

<div style="text-align: center; margin-top: 30px"><img src="../image/kidshomelogo2.png" width="1300px" height="220px"></div>
<div id="image_list_2">
        <div class="clsBannerScreen">
            <div class="images" style="display:block">
                <img src="../image/google.jpg" width="1300px">
            </div>
            <div class="images"><img src="../image/daum.jpg" width="1300px"></div>
            <div class="images"><img src="../image/naver.jpg" width="1300px"></div>
            <div class="images"><img src="../image/nate.jpg" width="1300px"></div>
            <div class="images"><img src="../image/yahoo.jpg" width="1300px"></div>
        </div>
</div>

<div id="toys" style="margin-top: 50px">
	<table border=0 cellspacing="0" cellpadding="0" width="1295px">
	<tr>
		<td align="center"><font color=green size="5px"><b>최신 장난감</b></font></td>
		<td align="center"><font color=green size="5px"><b>인기 장난감</b></font></td>
	</tr>
	</table>
	<br>
	<table border=0 cellspacing="0" cellpadding="10" width="1300">
<!-- 		<tr>
			<td align="right"><a href='toy.do'><font color="black">더보기</font></a></td>
			<td align="right"><a href='toy.do'><font color="black">더보기</font></a></td>
		</tr> -->
	<tr height="500">
		
		<td>
			<table border=1 cellspacing="0" cellpadding="0" width="600" height="500" style="border-radius: 25px;">
			<!-- JSTL forEeach를 사용해서 DB에서 얻은 값을 출력해야함. -->
				<tr>
					<td align="center" width="300" height="250">
						<img alt="최신장난감1" src="../image/toy/${newToy[0] }" width="300" height="250" style="border-radius: 25px;">
					</td>
					<td align="center" width="300" height="250">
						<img alt="최신장난감2" src="../image/toy/${newToy[1] }" width="300" height="250" style="border-radius: 25px;">
					</td>
				</tr>
				<tr>
					<td align="center" width="300" height="250">
						<img alt="최신장난감3" src="../image/toy/${newToy[2] }" width="300" height="250" style="border-radius: 25px;">
					</td>
					<td align="center" width="300" height="250">
						<img alt="최신장난감4" src="../image/toy/${newToy[3] }" width="300" height="250" style="border-radius: 25px;">
					</td>
				</tr>
			</table>
		</td>
		<td>
			<table border="1" cellspacing="0" cellpadding="0" width="600" height="500" style="border-radius: 25px;">
				<tr>
					<td align="center" width="280" height="250">
						<img alt="인기장난감1" src="../image/toy/${popToy[0] }" width="280" height="250" style="border-radius: 25px;">
					</td>
					<td align="center" width="280" height="250">
						<img alt="인기장난감2" src="../image/toy/${popToy[1] }" width="280" height="250" style="border-radius: 25px;">
					</td>
				</tr>
				<tr>
					<td align="center" width="280" height="250">
						<img alt="인기장난감3" src="../image/toy/${popToy[2] }" width="280" height="250" style="border-radius: 25px;">
					</td>
					<td align="center" width="280" height="250">
						<img alt="인기장난감4" src="../image/toy/${popToy[3] }" width="280" height="250" style="border-radius: 25px;">
					</td>
				</tr>
			</table>
		</td>
	</tr>
	</table>
</div>

<div id="news">
	<table border=0 cellspacing="1" cellpadding="2" width="1300">
		<tr><td align="center"><font color=green size=5><b>키즈홈 소식</b></font></td></tr>
	</table>
	<br><br>
	<table border=0 cellspacing="0" cellpadding="1" width="1300">
		<tr>
			<td align="right"><a href='#'><font color="black">공지사항 보기</font></a></td>
			<td align="right"><a href='#'><font color="black">자유글 더보기</font></a></td>
			<td align="right"><a href='#'><font color="black">후기글 더보기</font></a></td>
		</tr>
	</table>
	<table border=1 cellspacing="0" cellpadding="1" width="1300">
		<tr>
			<td align="center" width="433">
				<table border="0" cellspacing="1" width="100%">
				<tr>
					<td align="center">공지사항</td>
				</tr>
				<tr>
					<td>게시글</td>
				</tr>
				</table>
				
			</td>
			<td align="center" width="433">
				<table border="0" cellspacing="1" width="100%">
				<tr>
					<td align="center">자유 게시판</td>
				</tr>
				<tr>
					<td>게시글</td>
				</tr>
				</table>
			</td>	
			<td align="center" width="433">
				<table border="0" cellspacing="1" width="100%">
				<tr>
					<td align="center">후기 게시판</td>
				</tr>
				<tr>
					<td>게시글</td>
				</tr>
				</table>
			</td>		
		</tr>
	</table>
</div>

</center>
</body>
</html>
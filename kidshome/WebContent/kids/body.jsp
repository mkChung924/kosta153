<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function detail(serial){
		
		var toy_serial = serial.split(".");
		location.href='toydetail.do?serial='+toy_serial[0];
	}
</script>
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
                <img src="../image/kidshome_team.png" width="1300px">
            </div>
            
            <div class="images"><img src="../image/slidetoy.png" width="1300px"></div>
            <div class="images"><img src="../image/kidshome_intro.png" width="1300px"></div>
            <div class="images"><img src="../image/kidshome_event.png" width="1300px"></div>
            <div class="images"><img src="../image/kidshome_review_event.png" width="1300px"></div>
            
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
						<img alt="최신장난감1" src="../image/toy/${newToy[0] }" width="300" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${newToy[0]}')">
					</td>
					<td align="center" width="300" height="250">
						<img alt="최신장난감2" src="../image/toy/${newToy[1] }" width="300" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${newToy[1]}')">
					</td>
				</tr>
				<tr>
					<td align="center" width="300" height="250">
						<img alt="최신장난감3" src="../image/toy/${newToy[2] }" width="300" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${newToy[2]}')">
					</td>
					<td align="center" width="300" height="250">
						<img alt="최신장난감4" src="../image/toy/${newToy[3] }" width="300" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${newToy[3]}')">
					</td>
				</tr>
			</table>
		</td>
		<td>
			<table border="1" cellspacing="0" cellpadding="0" width="600" height="500" style="border-radius: 25px;">
				<tr>
					<c:if test="${popToy[0].length() > 0 }">
					<td align="center" width="280" height="250">
						<img alt="인기장난감1" src="../image/toy/${popToy[0] }" width="280" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${popToy[0]}')">
					</td>
					</c:if>
					<c:if test="${popToy[0] == null }">
					<td align="center">대여기록 없음</td>
					</c:if>
					<c:if test="${popToy[1].length() > 0 }">
					<td align="center" width="280" height="250">
						<img alt="인기장난감2" src="../image/toy/${popToy[1] }" width="280" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${popToy[1]}')">
					</td>
					</c:if>
					<c:if test="${popToy[1] == null }">
					<td align="center">대여기록 없음</td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${popToy[2].length() > 0 }">
					<td align="center" width="280" height="250">
						<img alt="인기장난감3" src="../image/toy/${popToy[2] }" width="280" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${popToy[2]}')">
					</td>
					</c:if>
					<c:if test="${popToy[2] == null }">
					<td align="center">대여기록 없음</td>
					</c:if>
					<c:if test="${popToy[3].length() > 0 }">
					<td align="center" width="280" height="250">
						<img alt="인기장난감4" src="../image/toy/${popToy[3] }" width="280" height="250" style="border-radius: 25px; cursor: pointer;" onclick="detail('${popToy[3]}')">
					</td>
					</c:if>
					<c:if test="${popToy[3] == null }">
					<td align="center">대여기록 없음</td>
					</c:if>
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
			<td align="right"><a href='noticelist.do'><font color="black">공지사항 보기</font></a></td>
			<td align="right"><a href='freelist.do'><font color="black">자유글 더보기</font></a></td>
			<td align="right"><a href='reviewlist.do'><font color="black">후기글 더보기</font></a></td>
		</tr>
	</table>
	<table border=0 cellspacing="0" cellpadding="5" width="1300">
		<tr>
			<td align="center" width="433">
				<table border="1" cellspacing="0" width="100%" cellpadding="5">
				<tr>
					<th width="300" bgcolor="#FFA7A7">제목</th>
					<th bgcolor="#FFA7A7">날짜</th>
				</tr>
				<c:forEach items="${mainNotice }" var="notice">
				<tr align="center">
					<td><a href='updel.do?action=call&no=${notice.no }'><font color=black>${notice.notice_title }</font></a></td>
					<td>${notice.gdate }</td>
				</tr>
				</c:forEach>
				</table>
				
			</td>
			<td align="center" width="433">
				<table border="1" cellspacing="0" width="100%" cellpadding="5">
				<tr>
					<th width="300" bgcolor="#86E57F">제목</th>
					<th bgcolor="#86E57F">날짜</th>
				</tr>
				<c:forEach items="${mainFree }" var="free">
				<tr align="center">
					<td><a href='freeupdel.do?action=call&no=${free.no }'><font color=black>${free.free_title }</font></a></td>
					<td>${free.gdate }</td>
				</tr>
				</c:forEach>
				</table>
			</td>	
			<td align="center" width="433">
				<table border="1" cellspacing="0" width="100%" cellpadding="5">
				<tr>
					<th width="300" bgcolor="#B2EBF4">제목</th>
					<th bgcolor="#B2EBF4">날짜</th>
				</tr>
				<c:forEach items="${mainReview }" var="review">
				<tr align="center">
					<td><a href='reviewupdel.do?action=call&no=${review.no }'><font color=black>${review.review_title }</font></a></td>
					<td>${review.gdate }</td>
				</tr>
				</c:forEach>
				</table>
			</td>		
		</tr>
	</table>
</div>
<br><br><br><br><br>
</center>
</body>
</html>
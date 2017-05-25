<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <!--첫번째 배너-->
    <div id="image_list_1">
        <div class="clsBannerScreen">
            <div class="images" style="display:block">
                <img src="../image/google.jpg">
            </div>
            <div class="images"><img src="../image/daum.jpg"></div>
            <div class="images"><img src="../image/naver.jpg"></div>
            <div class="images"><img src="../image/nate.jpg"></div>
            <div class="images"><img src="../image/yahoo.jpg"></div>
        </div>
    </div>
 
    <p>&nbsp;</p>
    <p>&nbsp;</p>
     
    <!--두번째 배너-->
    <div id="image_list_2">
        <div class="clsBannerScreen">
            <div class="images" style="display:block">
                <img src="../image/google.jpg">
            </div>
            <div class="images"><img src="../image/daum.jpg"></div>
            <div class="images"><img src="../image/naver.jpg"></div>
            <div class="images"><img src="../image/nate.jpg"></div>
            <div class="images"><img src="../image/yahoo.jpg"></div>
        </div>

    </div>
     
    <p>&nbsp;</p>
    <p>&nbsp;</p>
     
    <!--세번째 배너-->
    <div id="image_list_3">
        <ul class="clsBannerButton" id="label_3">
            <li><img src="../image/1_on.jpg"></li>
            <li><img src="../image/2.jpg"></li>
            <li><img src="../image/3.jpg"></li>
            <li><img src="../image/4.jpg"></li>
            <li><img src="../image/5.jpg"></li>
        </ul>
 
        <div class="clsBannerScreen">
            <div class="images" style="display:block">
                <img src="../image/google.jpg">
            </div>
            <div class="images"><img src="../image/daum.jpg"></div>
            <div class="images"><img src="../image/naver.jpg"></div>
            <div class="images"><img src="../image/nate.jpg"></div>
            <div class="images"><img src="../image/yahoo.jpg"></div>
        </div>
    </div>
</body>
</html>
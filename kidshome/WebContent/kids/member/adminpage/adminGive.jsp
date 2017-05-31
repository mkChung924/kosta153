<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/ajax2.js"></script>
<title>Insert title here</title>
<script>
	function agreeReq(num){ //등록 요청

		alert(num);
		var params = 'no='+num
		new ajax.xhr.Request('Req.do?action=givereq',params,agreeResult,'POST');
	}
	
	function agreeResult(xhr){ //콜백
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				
				//alert(xhr.responseText.trim());
				location.reload();
				
			} else {
				alert('에러발생');
				
			}
		}
	}
</script>
</head>
<body>
	<center>
	<h2>장난감 기부 현황</h2><br><br>
		<logic:present name="givelist" scope="request">
		<form action="requestdelete.do" method="post" name=f>
			<table border="1" cellpadding="5">
				<tr bgcolor="orange">
					<th>기부 번호</th>
					<th>장난감 이름</th>
					<th>장난감 설명</th>
					<th>사진 정보</th>
					<th>기부 방법</th>
					<th>기부 상태</th>
					<th>수령 버튼</th>
				</tr>
				<c:forEach items="${givelist }" var="givelist">
					<tr>
						<td align=center>${givelist.num}</td>
						<td align=center>${givelist.toyname}</td>
						<td align=center>${givelist.toydesc}</td>
						<td align=center><a href='../image/toy/${givelist.image}'></a></td>
						<td align=center>${givelist.method}</td>
						<td align=center>${givelist.give_state}</td>
						<c:if test="${givelist.give_state eq '수령 대기' }">
						<td width="80" align="center"><input type="button" value="수령완료" onclick="agreeReq(${givelist.num})"></td>
						</c:if>
						<c:if test="${givelist.give_state eq '기부 완료' }">
						<td width="80" align="center">수령 완료</td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		</form>
		</logic:present>
		<logic:notPresent name="givelist" scope="request">
		<h4>관리자 페이지<br> 기부 목록이 존재하지 않습니다.</h4>
		</logic:notPresent>
		<br>
		<!--  -->
		<form action="main.do">
			<input type="submit" value="메인으로">
		</form>
		<br><br>
	</center>
</body>
</html>
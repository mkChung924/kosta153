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

		//alert(num);
		var params = 'no='+num
		new ajax.xhr.Request('rentAccept.do?action=givereq',params,agreeResult,'POST');
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
			<table border="1" cellpadding="5" width="1300">
				<tr bgcolor=#F15F5F>
					<th>번호</th>
					<th>아이디</th>
					<th>성명</th>
					<th>장난감 이름</th>
					<th>설명</th>
					<th>사진 정보</th>
					<th>기부 방법</th>
					<th>기부 상태</th>
					<th>수령 버튼</th>
				</tr>
				<c:forEach items="${givelist }" var="givelist">
				<c:if test="${givelist.give_state eq '기부 완료' }">
					<tr bgcolor="#FFD8D8">
					</c:if>
						<td align=center width="50">${givelist.num}</td>
						<td align=center>${givelist.id}</td>
						<td align=center>${givelist.name}</td>
						<td align=center>${givelist.toyname}</td>
						<td align=center width="200">${givelist.toydesc}</td>
<%-- 						<td align=center><a href='../upload/${givelist.image }'><font color=blue>${givelist.image }</font></a></td>--%>
						<c:if test="${givelist.image == null }">
						<td align="center">이미지없음</td>
						</c:if>
						<c:if test="${givelist.image.length() > 0 }">
						<td align="center" width="300"><img alt="${givelist.image }" src='../upload/${givelist.image }' width="300" height="200" onclick="location.href='../upload/${givelist.image }'" style="cursor: pointer;"></td>					
 						</c:if>
 						<td align=center>${givelist.method}</td>
						<td align=center><font color=red>${givelist.give_state}</font></td>
						<c:if test="${givelist.give_state eq '수령 대기' }">
						<td width="80" align="center"><input type="button" value="수령완료" onclick="agreeReq(${givelist.num})"></td>
						</c:if>
						<c:if test="${givelist.give_state eq '기부 완료' }">
						<td width="80" align="center"><font color=blue>수령 완료</font></td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		</form>
		</logic:present>
		<logic:notPresent name="givelist" scope="request">
		<h4>기부 목록이 존재하지 않습니다.</h4>
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
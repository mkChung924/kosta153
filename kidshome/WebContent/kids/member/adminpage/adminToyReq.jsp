<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>    
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
		new ajax.xhr.Request('rentAccept.do?action=toyreq',params,agreeResult,'POST');
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
	
	function disagreeReq(num){ //등록 요청

		//alert(num);
		var params = 'no='+num
		new ajax.xhr.Request('rentAccept.do?action=toyreq_no',params,disagreeResult,'POST');
	}
	
	function disagreeResult(xhr){ //콜백
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
	<h2>장난감 신청 현황</h2><br><br>
		<logic:present name="reqlist" scope="request">
		<form action="requestdelete.do" method="post" name=f>
			<table border="1" cellpadding="5" width="1300">
				<tr bgcolor=#F15F5F>
					<th>신청 번호</th>
					<th>장난감 이름</th>
					<th>신청 설명</th>
					<th>사진 정보</th>
					<th>신청 날짜</th>
					<th>신청 상태</th>
					<th>추가 버튼</th>
					<th>신청 반려</th>
					
					
				</tr>
				<c:forEach items="${reqlist }" var="reqlist">
				<c:if test="${reqlist.req_state eq '신청 반려' }">
					<tr bgcolor="#BDBDBD">
					</c:if>
					<c:if test="${reqlist.req_state eq '추가 완료' }">
					<tr bgcolor="#FFD8D8">
					</c:if>
						<td align="center" width="70">${reqlist.num}</td>
						<td align=center width="100">${reqlist.toyname}</td>
						<td align=center>${reqlist.reason}</td>
						<c:if test="${reqlist.image == null }">
						<td align="center">이미지없음</td>
						</c:if>
						<c:if test="${reqlist.image.length() > 0 }">
						<td align=center width="300"><img alt="${reqlist.image }" src='../upload/${reqlist.image }' width="300" height="200" onclick="location.href='../upload/${reqlist.image }'" style="cursor: pointer;"></td>
						</c:if>
						<td align=center>${reqlist.reqdate}</td>
						<td align=center>${reqlist.req_state}</td>
						<c:if test="${reqlist.req_state eq '신청 진행중' }">
						<td width="80" align="center"><input type="button" value="추가완료" onclick="agreeReq(${reqlist.num})"></td>
						<td width="80" align="center"><input type="button" value="신청반려" onclick="disagreeReq(${reqlist.num})"></td>
						</c:if>
						<c:if test="${reqlist.req_state eq '추가 완료' }">
						<td width="80" align="center"><font color=blue>추가 완료</font></td>
						<td width="80" align="center">이상 없음</td>
						</c:if>
						<c:if test="${reqlist.req_state eq '신청 반려' }">
						<td width="80" align="center"><font color=white>신청 반려</font></td>
						<td width="80" align="center">반려됨</td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		</form>
		</logic:present>
		<logic:notPresent name="reqlist" scope="request">
		<h4>장난감 신청 목록이 존재하지 않습니다.</h4>
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
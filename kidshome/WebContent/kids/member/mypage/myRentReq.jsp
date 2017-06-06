<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/ajax2.js"></script>
<script type="text/javascript">
	
	function delRentReq(id, serial){ //등록 요청
		
		if(confirm('정말 신청을 취소하시겠습니까?') == true){
			
			//alert(id + ", " + serial);
			var params = 'id='+id+'&serial='+serial;
			new ajax.xhr.Request('rentReqDel.do?action=del',params,agreeResult,'POST');
		}
	return;
		
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
		<logic:notPresent name="list" scope="request">
		<h3>대여 신청이 존재하지 않습니다.</h3><br><br>
		장난감을 대여해보세요! &nbsp;&nbsp;&nbsp;
		</logic:notPresent>
		<logic:present name="list" scope="request">
		<h2>나의 대여 신청 현황</h2><br><br>
			<table border="1" cellpadding="5" width="1300">
				<tr bgcolor="#F15F5F">
					<th>장난감 이름</th>
					<th>종류</th>
					<th>연령대</th>
					<th>대여 여부</th>
					<th>대여 방법</th>
					<th>신청날짜</th>
					<th></th>
				</tr>
				<c:forEach items="${list }" var="re">
					<tr>
						<td align="center">${re.toyname}</td>
						<td align="center">${re.toykind}</td>
						<td align="center">${re.toyage}세</td>
						<td align="center">${re.rentstate }</td>
						<td align="center">${re.rentmethod }</td>
						<td align="center">${re.reqdate}</td>
						<c:if test="${re.rentstate eq '대여 완료' }">
						<td align="center">대여완료</td>
						</c:if>
						<c:if test="${re.rentstate eq '대여 신청' }">
						<td align="center"><input type="submit" value="신청취소" onclick="delRentReq('${id}', '${re.toy_serial }')"></td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
			<br><br>
		</logic:present>
			<input type="button" value="장난감 보러가기" style="font-size: 100px" onclick="location.href='search.do'">&nbsp;&nbsp;&nbsp;
			<input type="submit" value="메인으로" style="font-size: 100px" onclick="location.href='main.do'"><br><br>
	
	</center>
</body>
</html>
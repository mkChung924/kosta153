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
	
	function returnedIt(id, serial){ //등록 요청
		
		alert(id + ", " + serial);
		
 		if(confirm('대여 수락을 하시겠습니까?') == true){
			
			//alert(id + ", " + serial);
			var params = 'id='+id+'&serial='+serial;
			new ajax.xhr.Request('Req.do?action=acceptRentVisit',params,acceptVisitResult,'POST');
		}
	return;
		
	}
	
	function returnedItResult(xhr){ //콜백
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				
				//alert(xhr.responseText.trim());
				location.reload();
				
			} else {
				alert('에러발생');
				
			}
		}
	}
	
	function returnedItDamaged(id, serial){ //등록 요청
		
		
		if(confirm('택배 배송을 완료하였나요?') == true){
			
			//alert(id + ", " + serial);
			var params = 'id='+id+'&serial='+serial;
			new ajax.xhr.Request('Req.do?action=acceptRentPost',params,acceptPostResult,'POST');
		}
	return;
		
	}
	
	function returnedItDamagedResult(xhr){ //콜백
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				
				//alert(xhr.responseText.trim());
				location.reload();
				
			} else {
				alert('에러발생');
				
			}
		}
	}
	
	function searchByName(){
		
		var name = document.getElementById("name");
		
		if(name.value == ''){
			alert('이름을 입력하세요.');
		} else {
			location.href='adRent.do?action=rent_name&name='+name.value;
		}
				
	}
	
	function searchByTel(){
		
		var tel = document.getElementById("tel");
		
		if(tel.value == ''){
			alert('전화번호를 입력하세요.');
		} else {
			location.href='adRent.do?action=rent_tel&tel='+tel.value;
		}
				
	}
	
	
</script>
</head>
<body>
	<center>
		<logic:present name="id" scope="session">
		<logic:notPresent name="list" scope="request">
		<h3>대여 신청이 존재하지 않습니다.</h3><br><br>
		</logic:notPresent>
		<logic:present name="list" scope="request">
		<h3>대여 현황</h3>
		<table border = 0 cellpadding=3>
			<tr>
				<td align="right">성명:</td>
				<td>
					<input type="text" id="name"> <input type="button" value="검색" onclick="searchByName()">
				</td>
			</tr>
			<tr>
				<td>전화번호:</td>
				<td>
				<input type="text" id="tel"> <input type="button" value="검색" onclick="searchByTel()">
				</td>
			</tr>		
			</table>
			<br>
			<table border="1" cellpadding="5" width="1300">
				<tr bgcolor="#F15F5F">

					<th>신청자 아이디</th>
					<th>신청자 성명</th>
					<th>신청자 전화번호</th>
					<th>장난감 시리얼</th>
					<th>장난감 이름</th>
					<th>종류</th>
					<th>연령대</th>
					<th>대여일</th>
					<th>반납일</th>
					<th>대여 방법</th>
					<th>반납 여부</th>
					<th></th>
					<th></th>
				</tr>
				<c:forEach items="${list }" var="re" varStatus="status">
				<c:if test="${status.count%2==0 }">
					<tr bgcolor="#FFD8D8">
					</c:if>
						<td align="center">${re.id}</td>
						<td align="center">${re.name}</td>
						<td align="center">${re.tel.substring(0,4)}****${re.tel.substring(8,13) }</td>
						<td align="center"><a href='toydetail.do?serial=${re.toy_serial}'><font color=green>${re.toy_serial}</font></a></td>
						<td align="center">${re.toyname}</td>
						<td align="center">${re.toykind}</td>
						<td align="center">${re.toyage}세</td>
						<td align="center">${re.sdate }</td>
						<td align="center">${re.edate }</td>
						<td align="center">${re.rentmethod}</td>
						<td align="center">${re.retstate}</td>
						<c:if test="${re.retstate == '대여중' }">
						<td align="center"><input type="button" value="반납" style="font-size: 100px" onclick=""></td>
						<td align="center"><input type="button" value="훼손반납" style="font-size: 100px" onclick=""></td>
						</c:if>
						<c:if test="${re.retstate == '반납완료' }">
						<td align="center">반납완료</td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		<br>
		</logic:present>
		<form action="main.do" method="post">
			<input type="submit" value="메인으로">
		</form>
		</logic:present>
	</center>
</body>
</html>
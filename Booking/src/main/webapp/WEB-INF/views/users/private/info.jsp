<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책과의 즉석만남 Booking</title>
<jsp:include page="../../include/resource.jsp"></jsp:include>
<style>
	/* 프로필 이미지를 작은 원형으로 만든다 */
	#profileImage{
		width: 50px;
		height: 50px;
		border: 1px solid #cecece;
		border-radius: 50%;
		margin-left: 7px;
		margin-top: 7px;
		margin-bottom: 7px;
	}
	/* 프로필 업로드 폼을 화면에 안보이게 숨긴다 */
	#profileForm{
		display: none;
	}
</style>
</head>
<body style="background-color:#b7b7b7;">
<jsp:include page="../../include/navbar.jsp"></jsp:include>
<div style="margin-top:30px"></div>
<div class="row" style="width:1050px; height:650px; 
	margin:auto; background-color:#f8f9fa">
	<jsp:include page="../../include/sideusers.jsp"></jsp:include>
	<div>
		<h1 style="margin-left:15px; margin-top:7px;">회원 정보</h1>
	<table class="table table-striped" style="width:800px">
		<colgroup >
			<col width="150"/>
			<col />
		</colgroup>
		<tr>
			<th>아이디</th>
			<td>${sessionScope.id }</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${dto.email }</td>
		</tr>
		<tr>
			<th>가입일</th>
			<td>${dto.regdate }</td>
		</tr>
		<tr>
			<th>관심사</th>
			<th>${dto.care }</th>
		</tr>
		<tr>
			<th>최근검색어</th>
			<th>${dto.recentSearch }</th>
		</tr>
	</table>
	</div>
	
</div>
<div style="margin-top:200px">
	<jsp:include page="../../include/footer.jsp"></jsp:include>
</div>
<script>
//회원탈퇴묻기
function deleteConfirm(){
		let isDelete=confirm(" 회원님 탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="${pageContext.request.contextPath }/users/private/delete.do";
		} else {
			location.reload();
		}
}
</script>
</body>
</html>
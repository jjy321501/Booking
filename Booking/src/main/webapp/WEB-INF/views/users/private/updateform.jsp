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
	margin:auto; background-color:#f8f9fa;">
	<jsp:include page="../../include/sideusers.jsp"></jsp:include>
	<div>
		<h1 style="margin-left:8px; margin-top:7px;">가입정보 수정 폼</h1>
		<a id="profileLink" href="javascript:">
		<c:choose>
			<c:when test="${empty dto.profile }">
				<svg id="profileImage" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
	  				<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
				</svg><span>프로필 이미지 수정</span>
			</c:when>
			<c:otherwise>
				<img id="profileImage" 
					src="${pageContext.request.contextPath }${dto.profile}" />
				<span>프로필 이미지 수정</span>
				<span><a href="javascript:deleteProfile();">삭제</a></span>
			</c:otherwise>
		</c:choose>
		</a>
		<form action="update.do" method="post" id="myForm" style="margin-left:8px; margin-top:7px; width:800px">
			<div class="form-group" style="width:750px;">
				<label for="id">아이디</label>
				<input type="text" id="id" value="${id }" class="form-control" disabled/>
			</div>
			<div class="form-group" style="width:750px;">
				<label for="email">이메일</label>
				<input type="text" id="email" name="email" value="${dto.email }" class="form-control"/>
				<div class="invalid-feedback">이메일 형식을 확인 하세요.</div>
			</div>
			<div class="form-group" style="width:750px;">
				<label for="care">관심사</label>
				<input type="text" id="care" name="care" value="${dto.care }" class="form-control"/>
			</div>
			<button type="button" class="btn btn-outline-primary" id="btn">수정확인</button>
			<button type="reset" class="btn btn-outline-warning">취소</button>
		</form>
	</div>
	<form action="profile_upload.do" method="post" 
		enctype="multipart/form-data" id="profileForm">
		<label for="image">프로필 이미지 선택</label>
		<input type="file" name="image" id="image" accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
		<button type="submit">업로드</button>
	</form>
	
</div>
<div style="margin-top:200px">
	<jsp:include page="../../include/footer.jsp"></jsp:include>
</div>
<script>
	//프로필 링크를 클릭했을때 실행할 함수 등록
	$("#profileLink").on("click", function(){
		// 아이디가 image 인 요소를 강제 클릭하기
		$("#image").click();
	});
	
	//이미지를 선택했을때 실행할 함수 등록
	$("#image").on("change", function(){
		//폼을 강제 제출해서 선택된 이미지가 업로드 되도록 한다.
		$("#profileForm").submit();
	});

	
	//[이메일을 검증할 정규 표현식](정확히 검증하려면 javascript 이메일 정규 표현식 검색해서 사용!)
	//@가 포함되어 있는지 검증
	let reg_email=/@/;
	
	//이메일을 입력했을 때 실행할 함수 등록
	$("#email").on("input", function(){ 
		let inputEmail = $("#email").val();
		//일단 모든 검증 클래스를 제거하고
		$("#email").removeClass("is-valid is-invalid");
		//만일 이메일이 정규표현식에 매칭되지 않는다면
		if(!reg_email.test(inputEmail)) {
			isEmailValid = false;
			$("#email").addClass("is-invalid");
		} else {
			isEmailValid = true;
			$("#email").addClass("is-valid");
		}
	});
	
	//회원탈퇴묻기
	function deleteConfirm(){
			let isDelete=confirm(" 회원님 탈퇴 하시겠습니까?");
			if(isDelete){
				location.href="${pageContext.request.contextPath }/users/private/delete.do";
			} else {
				location.reload();
			}
	}
	//욱현.db에 있는 이메일과 관심사 대조해서 수정을 안했다면 수정완료했다는 메세지 안뜨게 하기_2021323
	
	//현재 폼에 입력되어있는 내용
	let email = $("#email").val();
	let care = $("#care").val();
	let profile = $("#profileImage").attr('src');
	
	//인풋이 된 이후의 폼에 있는 내용
	$("#email").on("input", function(){
		email = $("#email").val();
	});
	$("#care").on("input", function(){
		care = $("#care").val();
	})
	
	//db에 저장된 모델(버튼을 누르는 동시에 데이터를 받아 대조)
	document.querySelector("#btn")
	.addEventListener("click", function(event){//이미지를 선택했을때 실행할 함수 등록
	
		let inputId = $("#id").val();
		
		$.ajax({
			url:"${pageContext.request.contextPath }/users/private/check_update.do",
			method:"POST",
			data:"inputId="+inputId,
			success:function(responseData){
 				console.log(responseData);
				let dbcare = responseData["care"];
				let dbemail = responseData["email"];
				let dbprofile = "/booking" + responseData["image"];
				if(care==dbcare && email==dbemail ) {
					alert("수정되지 않았습니다.");
					event.preventDefault();//폼 전송 막기
				} else {
					$("#myForm").trigger("submit");
				}
			}
		})
	});
	
	
	//욱현.프로필이미지 삭제_2021323
	function deleteProfile(){
		let inputId = $("#id").val();
		$.ajax({
			url:"${pageContext.request.contextPath }/users/private/delete_profile.do",
			method:"POST",
			data:"inputId="+inputId,
			success:function(){
				console.log("문어병장황준성");
				location.reload();
			}
		})
	}
	
</script>
</body>
</html>
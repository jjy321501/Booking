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
<div class="row" style="width:1050px; 
	margin:auto; background-color:#f8f9fa">
	<jsp:include page="../../include/sideusers.jsp"></jsp:include>
	<div style="margin-left:8px; margin-top:7px;">
	<h1 style="margin-left:8px; margin-top:7px;">My Review</h1>
	<table class="table table-striped" style="width:830px">
		<thead class="thead-dark"> 
			<tr>
				<th style=width:15%;>리뷰 이미지</th>
				<th style=width:35%;>리뷰 제목</th>
				<th style=width:10%;>작성자</th>
				<th style=width:10%;>조회수</th>
				<th style=width:15%;>등록일</th>
				<th style=width:15%;>리뷰 별점</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="t" items="${list }">
				<tr>
					<td>
						<div id="reviewImage">
							<a href="${pageContext.request.contextPath }/review/reviewDetail.do?num=${t.num }">
								<img src="${t.imagePath}"/>
							</a>
						</div>
					</td>
					<td>${t.reviewTitle }</td>
					<td>${t.writer }</td>
					<td>${t.viewCount }</td>
					<td>${t.regdate }</td>
					<td>
						<p id="star">
							<c:if test="${t.rating  eq 1}">
								<a href="#">★</a>
							</c:if>
							<c:if test="${t.rating  eq 2}">
								<a href="#">★★</a>
							</c:if>
							<c:if test="${t.rating  eq 3}">
								<a href="#">★★★</a>
							</c:if>
							<c:if test="${t.rating  eq 4}">
								<a href="#">★★★★</a>
							</c:if>
							<c:if test="${t.rating  eq 5}">
								<a href="#">★★★★★</a>
							</c:if>
						<p>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<nav>
		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${startPageNum != 1 }">
					<li class="page-item">
						<a class="page-link" href="my_review.do?pageNum=${startPageNum-1 }">Prev</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="page-item disabled">
						<a class="page-link" href="javascript:">Prev</a>
					</li>
				</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<c:choose>
					<c:when test="${i eq pageNum }">
						<li class="page-item active">
							<a class="page-link" href="my_review.do?pageNum=${i }">${i }</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="my_review.do?pageNum=${i }">${i }</a>
						</li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${endPageNum lt totalPageCount }">
					<li class="page-item">
						<a class="page-link" href="my_review.do?pageNum=${endPageNum+1 }">Next</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="page-item disabled">
						<a class="page-link" href="javascript:">Next</a>
					</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>
	</div>
</div>
<div style="margin-top:200px">
	<jsp:include page="../../include/footer.jsp"></jsp:include>
</div>
</body>
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
</html>
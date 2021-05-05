<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   margin:auto; background-color:#f8f9fa;">
    <jsp:include page="../../include/sideusers.jsp"></jsp:include>
    <div style="margin-left:8px; margin-top:7px;">
   <h1 style="margin-left:8px; margin-top:7px;">내 주문 내역</h1>
   <table class="table table-striped" style="width:800px">
      <thead class="thead-dark">
         <tr>
            <th>주문 번호</th>
             <th>주문 금액</th><!-- 할인가로 -->
             <th>주문 일자</th>
             <th>주문 개수</th>
         </tr>
      </thead>
      <tbody>
      <c:forEach var="os" items="${oslist}" varStatus="status">
           <tr class="orderRow">
             <td><a href="order_detail.do?o_id=${os.o_id }">${os.o_id }</a></td>
             <td id="totalPayment${status.count }" hidden>${os.totalPayment }</td>
             <td id="commaplusPayment${status.count }"></td>
             <td>${os.o_date }</td>
             <td>${os.totalNum }</td>
             <td id="status" hidden>${fn:length(oslist)}</td>
           </tr>
       </c:forEach>
      </tbody>
   </table>
   <nav>
      <ul class="pagination justify-content-center">
         <c:choose>
            <c:when test="${startPageNum != 1 }">
               <li class="page-item">
                  <a class="page-link" href="my_order.do?pageNum=${startPageNum-1 }">Prev</a>
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
                     <a class="page-link" href="my_order.do?pageNum=${i }">${i }</a>
                  </li>
               </c:when>
               <c:otherwise>
                  <li class="page-item">
                     <a class="page-link" href="my_order.do?pageNum=${i }">${i }</a>
                  </li>
               </c:otherwise>
            </c:choose>
         </c:forEach>
         <c:choose>
            <c:when test="${endPageNum lt totalPageCount }">
               <li class="page-item">
                  <a class="page-link" href="my_order.do?pageNum=${endPageNum+1 }">Next</a>
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
<script>
	// by욱현. 주문내역 주문금액 표기법_2021322
 	let totalnum = $('#status').text(); 
	for(let i=1;i<=totalnum; i++) {
		
		let value = $('#totalPayment'+i).text();
		
		let result = addComma(value);
		
		$('#commaplusPayment'+i).text(result + "원");
		
	}
	
	function addComma(num){
		let regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
	
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
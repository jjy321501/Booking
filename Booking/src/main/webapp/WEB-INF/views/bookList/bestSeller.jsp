<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/bookList.jsp</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
</head>
<body>

				<c:forEach var="b" items="${bestSeller}">
					<!-- by 준익, pagingbestSeller 컨트롤러 적용된 list_2021.02.28 -->
					<div id="bestSeller">

							
							${b.title }
							
					
					</div>
				</c:forEach>
	
<script>
</script>
</body>
</html>


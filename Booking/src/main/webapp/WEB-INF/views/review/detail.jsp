<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java/sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/review/detail.jsp</title>
</head>
<body>
	<!-- by채영_리뷰 테이블 -->
	<table>
		<tr>
			<td>작성 날짜 </td>
			<td>${dto.date}</td>
			<td rowspan="4">${dto.bookImage}</td>
		</tr>
		<tr>
			<td>제목 </td>
			<td>${dto.title }</td>
		</tr>
		<tr>
			<td>저자 </td>
			<td>${dto.author }</td>
		</tr>
		<tr>
			<td>출판사 </td>
			<td>${dto.publisher }</td>
		<tr>
		</tr>
			<td colspan="2">${dto.content }</td>
		</tr>
	</table>
</body>
</html>
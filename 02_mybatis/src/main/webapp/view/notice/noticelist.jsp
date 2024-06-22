<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td{
		border: 1px solid black;
		text-align: center;
	}
	table{
		width: 70%;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>내용</td>
			<td>날짜</td>
			<td>파일경로</td>
			<td>상태</td>
		</tr>
		
		<c:forEach var="n" items="${noticeAll }">
			<tr>
				<td><c:out value="${n.noticeNo }"/></td>
				<td><c:out value="${n.noticeTitle }"/></td>
				<td><c:out value="${n.noticeWriter }"/></td>
				<td><c:out value="${n.noticeContent }"/></td>
				<td><fmt:formatDate value="${n.noticeDate }" pattern="yyyy-MM-dd"/></td>
				<td><c:out value="${n.filepath }"/></td>
				<td><c:out value="${n.status }"/></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
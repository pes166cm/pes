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
		border:1px solid black;
		text-align: center;
	}
	table{
		width: 50%;
	}
</style>
</head>
<body>
	<table>
		<tr >
			<td>게시글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>내용</td>
			<td>원본파일</td>
			<td>바뀐파일</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		
		<c:forEach var="p" items="${postsAll }">
			<tr>
				<td><c:out value="${p.board_no }"/></td>
				<td><c:out value="${p.board_title }"/></td>
				<td><c:out value="${p.board_writer }"/></td>
				<td><c:out value="${p.border_content }"/></td>
				<td><c:out value="${p.border_original_filename }"/></td>
				<td><c:out value="${p.border_renamed_filename }"/></td>
				<td><fmt:formatDate value="${p.border_date }" pattern="yyyy-MM-dd"/></td>
				<td><c:out value="${p.border_readcount }"/></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>posts</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/posts/postsAll.do">
	<input type="submit" value="Posts게시글" id="submit">
</form>
<form action="${pageContext.request.contextPath }/notice/notice.do">
	<input type="submit" value="Notice게시글" id="submit">
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatis이용하기</title>
</head>
<body>

	<h2>연결확인</h2>
	<h3>
		<a href="${path }/connecttest.do">DB연결</a>
	</h3>
	
	<h3>mybatis이용하기</h3>
	<h4>
		<a href="${path }/student/insertsudent.do">학생등록</a>
	</h4>
	
	<form action="${path }/studnet/insertstudentbyname.do">
		<input type="text" name="name">
		<input type="submit" name="학생저장">
	</form>
	
	<h4>학생전체정보를 저장하기</h4>
	<!-- /student/insertstudentall.do post -->
	
	<form action="${path }/student/insertstudentall.do" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="pnum"></td>
			</tr>
			<tr>
				<td>메일</td>
				<td><input type="text" name="mail"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td><input type="submit" value="저장"></td>
			</tr>
		</table>
	</form>
	
	<!-- 
		update, delete 구현 
		전화번호, 이메일을 정하는 기능
		학생번호를 입력받아 삭제하는 기능
	-->
	
	<h2>DB에 저장된 데이터 조회하기</h2>
	<h3>저장된 학생수 조회하기</h3>
	<h4>
		<a href="${path }/student/studentcount.do">학생수 조회</a>
	</h4>
	
	<h4>
		<a href="${path }/student/studentdata.do?no=90">90번 학생 조회</a>
	</h4>
	
	<!-- 학생번호를 입력받아서 학생조회하기 -->
	
	10.154.26.150:6262/KM/
	
	<h4> 
		<a href="${path }/student/studentall.do">전체학생조회</a>
	</h4>
	
	
	
	
	
	
	
	
</body>
</html>
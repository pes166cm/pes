<%@ page import="java.util.List, com.jstl.model.dto.Food"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!--에디트 API 사이트 이용하기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코어태그 활용하기</title>
</head>
<body>
	<h2>저장, 출력하는 태그</h2>
	<p> 
		c:set var="" value="" [scope=""] -> 내장객체()에 데이터를 저장하는 태그<br>
		c:out value="EL표현식" default="" espaceXml="" -> 내장객체에 저장되어있느 값을 페이지에 출력할때 사용하는 태그<br>
	</p>
	
	<h3>값 저장하기</h3>
	<c:set var="comment" value="오늘 비와요"/>
	<h4><c:out value="${comment }"/></h4>
	<h4>${comment }</h4>
	<c:set var="test" value="<script> alert('주룩주룩'); </script>"/> 
	<p><c:out value="${test }" escapeXml="false"/></p> <!-- 이건 ${test }가 true경우 문자열로 인식  -->
	<!-- 이건 ${test }가 false의 경우 위 script대로 실행  -->
	<c:set var="bs" value="유병승"/>
	<p><c:out value="${bs }" default="bs없어!"/> 야!</p>
	
		
	<h3>if, for문 이용하기</h3>
	<p>
		c:if test="$  {조건식 } <- EL표현식 " / c:if 
	</p>
	
	<c:set var="su" value="20"/>
	
	<c:if test="${su>10 }">
		<h3><c:out value="${su }"/>은 10보다 크다</h3>
	</c:if> 
	
	<c:if test="${su>20 }">
		<h3><c:out value="${su }"/>은 10보다 크다</h3>
	</c:if> <!-- 이건 false라서 출력 안됨 -->
	

	<c:if test="${su<=20 }">
		<h3><c:out value="${su }"/>은 20보다 같거나 작다</h3>
	</c:if> 
	
	<c:if test="${su>5 }">
		<c:if test="${su>10 }">
			<h2>20보다 크네</h2>
		</c:if>
	</c:if>
	
	
	<h2>c:choose태그이용하기</h2>
	<p>
		c:choose태그<br>
			c:when test=""<br>
			c:when test=""<br>
			c:otherwise -> else문<br>
	</p>
	
	<c:set var="su2" value="13"/>
	
	<c:choose>
		<c:when test="${su2 < 10 }">
			<p>10보다 작은 값</p>
		</c:when>
		<c:when test="${su2 < 15 }">
			<p>15보다 작은 값</p>
		</c:when>
		<c:otherwise>
			<p>10보다 작지 않고 15보다도 크지 작지 않은 값</p>
		</c:otherwise>
	</c:choose>
	
	
	<h2>반복문 사용하기</h2>
	<p>
		c:forEach태그를 이용한다<br>
		begin : 시작하는 숫자<br>
		end : 끝나는 숫자<br>
		step : 증감하는 숫자 <br>
		var : 변화되는 값을 저장하는 변수<br>
		items : 순회할 데이터를 지정(배열, Collection)<br>
		varStatus : 반북문에 대한 정보를 저장하는 객체 (index, 반복한 횟수 등을 저장)<br>
	</p>
	
	<h2>1부터 10까지 출력하기</h2>
	<c:forEach var="i" begin="1" end="10" step="1">
		<p>비에 젖은 인간이 ${i }명</p>
	</c:forEach>
	
	
	
	<h3>리스트나 배열에 있는 데이터 출력하기</h3>
	<%
		List<String> names=List.of("김상훈","김용민","박은서","심지호","최유희","정은찬");
		request.setAttribute("names", names);
	%>
	
	<h5>김씨만 출력하기</h5>
	<ul>
		<c:forEach var="name" items="${names }">
			<c:if test="${String.valueOf(name.charAt(0)) eq '김' }">
			<li><c:out value="${name }"/></li>
			</c:if>
		</c:forEach>
	</ul>
	
	
	<%
		List<Food> foods=List.of(
				new Food("치킨",20000,"맛있다. 지금 먹고싶다."),
				new Food("낙곱새",24000,"볶음밥은 꼭 먹어줘야 한다."),
				new Food("초밥",15000,"유희가 만든 초밥 먹어보고 싶다."),
				new Food("지지고", 4500,"솔직히 좀 질린다."),
				new Food("취두부",5000,"존내짜다.")
				);
		request.setAttribute("foods", foods);
	%>
	
	<table style="border:1px solid pink" width="400px">
		<tr>
			<th>이름</th>
			<th>가격</th>
			<th>맛</th>
		</tr>
		<c:forEach var="f" items="${foods }">
			<c:if test="${f.price<10000 }">
				<tr>
					<td><c:out value="${f.name }"/></td>
					<td><c:out value="${f.price }"/></td>
					<td><c:out value="${f.flavor }"/></td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
	
	
	<h3>다른 페이지를 가져오기</h3>
	<p>
		c:import 태그 -> jsp:incolude와 비슷함
		var="" url="" 
	</p>
	<c:import var="header1" url="/view/common/header.jsp">
		<c:param name="title" value="import해서 불러온 "/>
		<c:param name="style" value="color:lightgreen;background-color:coral;"/>
	</c:import>
	
	${header1 }
	
</body>
</html>
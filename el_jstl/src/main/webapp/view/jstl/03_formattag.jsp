<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formattag</title>
</head>
<body>

	<c:set var="numbertest" value="12345678"/>
	<h3>기본 숫자 출력 <c:out value="${numbertest }"/></h3>
	
	<h3>fmt로 숫자 출력 : <fmt:formatNumber value="${numbertest }"/></h3>
	
	<%-- <fmt:setLocale value="ko_KR"/> --%>
	<h3>화폐단위를 추가해서 숫자 출력 : <fmt:formatNumber value="${numbertest }" type="currency"/></h3>
	
	<h3>#패턴으로 숫자표시하기 : <fmt:formatNumber value="${numbertest }" pattern="###,###,###"/></h3>
	
	<h3>0패턴으로 숫자표시하기 : <fmt:formatNumber value="${numbertest }" pattern="000,000,000"/></h3>
	
	<%-- <fmt:setLocale value="en_US"/> --%>
	<h3><fmt:formatNumber value="15.5" pattern="###,###.00" type="currency"/></h3>
	
	<h3>날짜형식 출력하기</h3>
	<c:set var="today" value="<%=new java.util.Date() %>"/>
	
	<h3><c:out value="${today}"/></h3>
	<p>
		fmt:formatDate태그<br>
			type <br>
				date : 년, 월, 일만 출력<br>
				time : 시간만 출력<br>
				both : 년월일 시분초를 출력<br>
			dateStyle : 날짜를 출력할때 패턴설정 (default, short, long, full)<br>
			timeStye : 시간을 출력할때 패턴설정 (medium, short, long, full)<br>
	</p>
	

	<h3><fmt:formatDate value="${today }"/></h3>	
	<h3><fmt:formatDate value="${today }" type="date"/> <= date</h3>
	<h3><fmt:formatDate value="${today }" type="time"/> <= time</h3>
	<h3><fmt:formatDate value="${today }" type="both"/> <= both</h3>
	
	<h3><fmt:formatDate value="${today }" type="date" dateStyle="short"/> <= dateStyle - short</h3>
	<h3><fmt:formatDate value="${today }" type="time" timeStyle="short"/> <=  timeStyle - short</h3>
	
	<h3><fmt:formatDate value="${today }" type="date" dateStyle="long"/> <= dateStyle - long</h3>
	<h3><fmt:formatDate value="${today }" type="time" timeStyle="long"/> <=  timeStyle - long</h3>
	
	<h3><fmt:formatDate value="${today }" type="date" dateStyle="full"/> <= dateStyle - full</h3>
	<h3><fmt:formatDate value="${today }" type="time" timeStyle="full"/> <=  timeStyle - full</h3>
	
	<h3><fmt:formatDate value="${today }" type="both" dateStyle="short" timeStyle="full"/> <= dateStyle과 timeStyle을 같이 사용할 수 있다 </h3>
	
	<h3>패턴으로 스타일 커스터마이징하기</h3>
	<p>
		yy(년) MM(월) dd(일) hh(시) mm(분) ss(초) E(요일) 패턴으로 날짜를 표시
	</p>
	<h4>
		<fmt:formatDate value="${today }" type="date"/>
	</h4>
	
	<h4>
		<fmt:formatDate value="${today }" type="date" pattern="yyyy-MM-dd"/>
	</h4>
	
	<h4>
		<fmt:formatDate value="${today }" type="date" pattern="yyyy/MM/dd"/>
	</h4>
		<h4>
		<fmt:formatDate value="${today }" type="date" pattern="yyyy-MM-dd (E)"/>
	</h4>
	
	
	<h4>
		<fmt:formatDate value="${today }" type="time" pattern="hh:mm:ss"/>
	</h4>
	
	<h3>Locale 설정에 따라 날짜를 출력하는 방식 달라짐</h3>
	<fmt:setLocale value="ja_JP"/>
	<h4>일본
		<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/>
	</h4>
	
	<fmt:setLocale value="fr_FR"/>
	<h4>프랑스
		<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/>
	</h4>
	
	<fmt:setLocale value="en_US"/>
	<h4>미국
		<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/>
	</h4>
	
	
	
	
	
	
	
	
	
	
</body>
</html>
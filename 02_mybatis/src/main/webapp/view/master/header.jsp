<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatis를 이용함</title>
<link rel="stylesheet" href="/css/style.css">
<script src="${path }/js/jquery-3.7.1.min.js"></script>
</head>
<body>
	<div id="container">
		<header>
			<h1>박은서가 찌끄린거</h1>
			<div class="login-container"> 
				<form id="loginFrm" method="post" action="#"></form>
					<table>
						<tr>
							<td>
								<input type="text" name="userId" id="userId" placeholder="아이디입력" value="${cookie.saveId!=null?cookie.saveId.value:'' }">
							</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<input type="password" name="password" id="password" placeholder="패스워드입력">
							</td>
							<td>
								<input type="submit" value="로그인">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="checkbox" name="saveId" id="saveId" ${cookie.saveId!=null?"checked":"" }>
								<label for="saveId">아이디저장</label>
								<input type="button" value="회원가입" onclick="location.replace('${path}/#')">
						</tr>
						
					</table>
					
				</form>
			
			</div>
		</header>
	
	</div>


</body>
</html>
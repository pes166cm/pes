<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="master/header.jsp"/>


<section>
<div class="container">
	<p class="title">기록하기</p>
	<form action="/mainpage" method="post" name="frm">
		<table width="500px">
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글 올리기" onclick="return checkForm()">
				</td>
			</tr>
		</table>
	</form>
</div>
</section>
<jsp:include page="master/footer.jsp"/>

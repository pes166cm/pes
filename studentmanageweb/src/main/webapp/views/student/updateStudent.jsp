<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2{
		text-align: center;
	}
	form{
		text-align: center;
		border: 1px solid black;
	}
</style>
</head>
<body>

<h2>학생수정</h2>

<form>
		<input type="text" size="15" value="이름입력"><br>
		
		<input type="text" size="15" value="나이입력"><br>
		
		<select style="width:100px; height:22px;">
			<option>학년</option>
			<option>1</option>
			<option>2</option>
			<option>3</option>
		</select><br>
		
		<input type="text" size="15" value="반"><br>
		
		<input type="text" size="15" value="키"><br>
		
		<input type="text" size="15" value="주소"><br>
		
		<input type="text" size="15" value="전화번호"><br>
		
		<input type="radio" name="gender">남<input type="radio" name="gender">여<br>
		
		<button>수정</button> <button>취소</button><br>
</form>



</body>
</html>
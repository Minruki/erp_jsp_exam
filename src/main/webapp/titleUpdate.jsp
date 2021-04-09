<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 수정</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>직책 정보 수정 폼</h2>
	<form action="TitleUpdateServlet" method="get">
		<fieldset>
			<legend>직책 정보</legend>
			<ul>
				<li>
					<label for="titleNo">직책번호</label>
					<input type="number" name="no" size="20" id="titleNo" value="${param.no}" >
				</li>
				<li>
					<label for="titleName">직책명</label>
					<input type="text" name="name" size="20" value="${param.name}" id="titleName">
				</li>
				<li>
					<input type="submit" value="수정"><input type="reset" value="취소"> 
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>
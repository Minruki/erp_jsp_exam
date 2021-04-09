<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 추가</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>직책 정보 입력 폼</h2>
	<form action="TitleInsertServlet" method="get">
		<fieldset>
			<legend>직책 정보</legend>
			<ul>
				<li>
					<label for="titleNo">직책번호</label>
					<input type="number" name="titleNo" size="20" id="titleNo" autofocus required>
				</li>
				<li>
					<label for="titleName">직책명</label>
					<input type="text" name="titleName" size="20" id="titleName">
				</li>
				<li>
					<input type="submit" value="추가"><input type="reset" value="취소"> 
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>
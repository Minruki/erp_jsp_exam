
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 정보</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%-- ${title } --%>
	<fieldset>
		<legend>직책 정보</legend>
		<ul>
			<li>
				<label for="titleNo">직책번호</label>
				<input type="number" name="titleNo" size="20" id="titleNo" value="${title.titleNo }" >
			</li>
			<li>
				<label for="titleName">직책명</label>
				<input type="text" name="titleName" size="20" value="${title.titleName }" id="titleName" >
			</li>
			<li>
				<a href="TitleDelServlet?no=${title.titleNo }">삭제</a>
				<a href="titleUpdate.jsp?no=${title.titleNo }&name=${title.titleName }" >수정</a>
			</li> 
		</ul>
		</fieldset>
</body>
</html>
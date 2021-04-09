<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 추가</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>부서 정보 입력 폼</h2>
	<form action="DeptInsertServlet" method="get">
		<fieldset>
			<legend>부서 정보</legend>
			<ul>
				<li>
					<label for="deptNo">부서번호</label>
					<input type="number" name="deptNo" size="20" id="deptNo" autofocus required>
				</li>
				<li>
					<label for="deptName">부서명</label>
					<input type="text" name="deptName" size="20" id="deptName">
				</li>
					<li>
					<label for="floor">위치</label>
					<input type="text" name="floor" size="20" id="floor">
				</li>
				<li>
					<input type="submit" value="추가"><input type="reset" value="취소"> 
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>
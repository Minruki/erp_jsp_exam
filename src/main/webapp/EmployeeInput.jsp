<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 추가</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>사원 정보 입력 폼</h2>
	<form action="EmployeeInsertServlet" method="get">
		<fieldset>
			<legend>사원 정보</legend>
			<ul>
				<li>
					<label for="empNo">사원 번호</label>
					<input type="number" name="empNo" size="20" id="empNo" autofocus required>
				</li>
				<li>
					<label for="empName">사원명</label>
					<input type="text" name="empName" size="20" id="empName">
				</li>
				<li>
					<label for="title">직책</label>
					<input type="text" name="title" size="20" id="title">
				</li>
					<li>
					<label for="manager">직속 상사</label>
					<input type="text" name="manager" size="20" id="manager">
				</li>
					<li>
					<label for="salary">급여</label>
					<input type="text" name="salary" size="20" id="salary">
				</li>
					<li>
					<label for="dept">부서</label>
					<input type="text" name="dept" size="20" id="dept">
				</li>
				
				<li>
					<input type="submit" value="추가"><input type="reset" value="취소"> 
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>
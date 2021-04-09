<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 수정</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>사원 정보 수정 폼</h2>
	<form action="EmployeeUpdateServlet" method="get">
		<fieldset>
			<legend>사원 정보</legend>
			<ul>
				<li>
					<label for="empNo">사원번호</label>
					<input type="number" name="empNo" size="20" id="empNo" value="${param.empNo}" >
				</li>
				<li>
					<label for="empName">사원명</label>
					<input type="text" name="empName" size="20" value="${param.empName}" id="empName">
				</li>
				<li>
					<label for="title">직책</label>
					<input type="text" name="title" size="20" value="${param.title}" id="title">
				</li>
				<li>
					<label for="manager">직속상사</label>
					<input type="text" name="manager" size="20" value="${param.manager}" id="manager">
				</li>
				<li>
					<label for="salary">급여</label>
					<input type="text" name="salary" size="20" value="${param.salary}" id="salary">
				</li>
				<li>
					<label for="dept">부서</label>
					<input type="text" name="dept" size="20" value="${param.dept}" id="dept">
				</li>
				<li>
					<label for="hireDate">입사일</label>
					<input type="date" name="hireDate" size="20" id="hireDate">
				</li>
				
				<li>
					<input type="submit" value="수정"><input type="reset" value="취소"> 
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>
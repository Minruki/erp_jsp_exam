<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 정보</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%-- ${title } --%>
	<fieldset>
		<legend>부서 정보</legend>
		<ul>
			<li>
				<label for="deptNo">부서번호</label>
				<input type="number" name="deptNo" size="20" id="deptNo" value="${department.deptNo }" >
			</li>
			<li>
				<label for="deptName">부서명</label>
				<input type="text" name="deptName" size="20" value="${department.deptName }" id="deptName" >
			</li>
			<li>
				<label for="floor">위치</label>
				<input type="text" name="floor" size="20" value="${department.floor }" id="floor" >
			</li>
			
			<li>
				<a href="DeptDelServlet?deptNo=${department.deptNo }">삭제</a>
				<a href="DeptUpdate.jsp?deptNo=${department.deptNo }
				&deptName=${department.deptName }
				&floor=${department.floor }">수정</a>
			</li> 
		</ul>
		</fieldset>
</body>
</html>
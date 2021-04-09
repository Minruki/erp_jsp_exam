<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%-- ${title } --%>
	<fieldset>
		<legend>사원 정보</legend>
		<ul>
			<li>
				<label for="empNo">사원 번호</label>
				<input type="number" name="empNo" size="20" id="empNo" value="${employee.empNo }" >
			</li>
			<li>
				<label for="empName">사원명</label>
				<input type="text" name="empName" size="20" value="${employee.empName }" id="empName" >
			</li>
			<li>
				<label for="title">직책 번호</label>
				<input type="number" name="title" size="20" id="title" value="${employee.getTitle().getTitleNo() }"  >
			</li>
			<li>
				<label for="manager">직속 상사</label>
				<input type="number" name="manager" size="20" value="${employee.manager.getEmpNo() }" id="manager" >
			</li>
			
			<li>
				<label for="salary">월급</label>
				<input type="number" name="salary" size="20" value="${employee.salary }" id="salary" >
			</li>
			<li>
				<label for="dept">부서 번호</label>
				<input type="number" name="dept" size="20" value="${employee.getDept().getDeptNo() }" id="dept" >
			</li>
			
			
			<li>
				<a href="EmployeeDelServlet?empNo=${employee.empNo }">삭제</a>
				<a href="EmployeeUpdate.jsp?empNo=${employee.empNo }
						&empName=${employee.empName }
						&title=${employee.getTitle().getTitleNo() }
						&manager=${employee.manager.getEmpNo() }
						&salary=${employee.salary }
						&dept=${employee.getDept().getDeptNo() }">수정</a>
			</li> 
		</ul>
		</fieldset>
</body>
</html>
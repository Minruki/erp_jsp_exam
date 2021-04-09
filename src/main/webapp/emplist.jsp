<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 목록</title>
<link rel="stylesheet" href="css/emplist.css">
</head>
<body>
<%-- ${list } --%>

	<h2>사원 목록</h2>
	<table border="1">
		<thead>
			<tr>
			<td>사원번호</td>
			<td>사원명</td>
			<td>직책</td>
			<td>직속상사</td>
			<td>급여</td>
			<td>부서</td>
			<td>입사일</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="employee" items="${list }">
			<tr>
				<td>${employee.empNo }</td>
				<td><a href="EmployeeGetServlet?empNo=${employee.empNo }">${employee.empName }</a></td>
				<td>${employee.title.titleName}</td>
				<td>${employee.manager.empName }(${employee.manager.empNo })</td>			
				<td><fmt:formatNumber value="${employee.salary }" pattern=" #,### "/>	</td>			
				<td>${employee.dept.deptName }</td>
				<td><fmt:formatDate value="${employee.hireDate }" pattern="yyyy년 MM월 dd일"/></td>
								

			</tr>
		</c:forEach>
		</tbody>
		
	</table>
	
</body>
</html>
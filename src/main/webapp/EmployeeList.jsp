<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 목록</title>
<link rel="stylesheet" href="css/titleList.css">
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
			<td>부서(층)</td>
			<td>입사일</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="employee" items="${list }">
			<tr>
				<td>${employee.empNo }</td>
				<td><a href="EmployeeGetServlet?empNo=${employee.empNo }">${employee.empName }</a></td>
				<td>${employee.title.titleName}(${employee.title.titleNo})</td>
				<td>${employee.manager.empName }(${employee.manager.empNo })</td>			
				<td><fmt:formatNumber value="${employee.salary }" pattern="\ #,### 원"/>	</td>			
				<td>${employee.dept }</td>
				<td><fmt:formatDate value="${employee.hireDate }" pattern="yyyy-MM-dd"/></td>
								

			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr><td colspan="7"><a href="EmployeeInput.jsp">사원 추가</a></td></tr>
		</tfoot>
	</table>
	
</body>
</html>
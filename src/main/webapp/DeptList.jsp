<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 목록</title>
<link rel="stylesheet" href="css/titleList.css">
</head>
<body>
<%-- ${list } --%>
	<h2>부서 목록</h2>
	<table border="1">
		<thead>
			<tr>
			<td>부서번호</td>
			<td>부서명</td>
			<td>위치</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="department" items="${list }">
			<tr>
				<td>${department.deptNo }</td>
				<td><a href="DeptGetServlet?deptNo=${department.deptNo }">${department.deptName }</a>
				<td>${department.floor }</td>
				
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr><td colspan="3"><a href="DeptInput.jsp">부서 추가</a></td></tr>
		</tfoot>
	</table>
	
</body>
</html>
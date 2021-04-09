<%@ page import="erp_jsp_exam.ds.JndiDS" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="con" value="${JndiDS.getConnection() }" />


<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>데이터베이스 연동 테스트</title>

<link rel="stylesheet" href="css/style.css">
</head>
<body> 
	<c:out value="${con }"></c:out><br>

	<nav>
		<ul>
			<li><a href="TitleListServlet">직책 관리</a></li>
			<li><a href="DeptListServlet">부서 관리</a></li>
			<li><a href="EmployeeListServlet">사원 관리</a></li>
		</ul>
		</nav>

</body>
</html>
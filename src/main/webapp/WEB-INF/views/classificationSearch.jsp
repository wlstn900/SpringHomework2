<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Insert title here</title>
</head>
<body>
	<h2>이수 구분별 학점 조회</h2>
	<hr>
	<table border="1">
		<thead>
			<tr>
				<td>교필</td>
				<td>핵교A</td>
				<td>핵교B</td>
				<td>일교</td>
				<td>전지</td>
				<td>전기</td>
				<td>전선</td>
				<td>총학점</td>
			</tr>
		</thead>
		<tr>
			<td><c:out value="${grades.get('교필')}"></c:out></td>
			<td><c:out value="${grades.get('핵교A')}"></c:out></td>
			<td><c:out value="${grades.get('핵교B')}"></c:out></td>
			<td><c:out value="${grades.get('일교')}"></c:out></td>
			<td><c:out value="${grades.get('전지')}"></c:out></td>
			<td><c:out value="${grades.get('전기')}"></c:out></td>
			<td><c:out value="${grades.get('전선')}"></c:out></td>
			<td><c:out value="${grades.get('총학점')}"></c:out></td>
		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
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

	<table>
		<thead>
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>과목코드</th>
				<th>과목명</th>
				<th>이수 구분</th>
				<th>학점</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="course" items="${courses}">
				<tr>
					<td><c:out value="${course.year}"></c:out></td>
					<td><c:out value="${course.semester}"></c:out></td>
					<td><c:out value="${course.subjectCode}"></c:out></td>
					<td><c:out value="${course.subject}"></c:out></td>
					<td><c:out value="${course.classification}"></c:out></td>
					<td><c:out value="${course.grade}"></c:out></td>
				<tr>
			</c:forEach>
		</tbody>
		<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
	</table>
</body>
</html>
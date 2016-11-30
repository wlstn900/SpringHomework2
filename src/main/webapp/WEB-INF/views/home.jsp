<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h2>종합 정보 시스템에 오신것을 환영합니다</h2>
	<hr>
	<ul>
		<li><a href="${pageContext.request.contextPath}/semesterSearch">학기별
				이수 학점 조회</a><br></li>
		<li><a href="${pageContext.request.contextPath}/classificationSearch">
				구분별 학점 조회</a><br></li>
		<li><a href="${pageContext.request.contextPath}/enrolment">수강
				신청하기</a><br></li>
		<li><a href="${pageContext.request.contextPath}/enrolmentSearch">수강
				신청 조회 메뉴</a><br></li>
	</ul>

</body>
</html>

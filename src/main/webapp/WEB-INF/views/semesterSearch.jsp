<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Insert title here</title>
</head>
<body>
	<h2>학기별 이수 학점 조회</h2>
	<hr>

	<table border="1">

		<thead>
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>이수학점</th>
				<th>상세보기</th>
			</tr>
		</thead>
		<tr>
			<td>2012</td>
			<td>1</td>
			<td><c:set var="sum" value="0"></c:set> <c:forEach var="course"
					items="${courses}">
					<c:if test="${course.year==2012&&course.semester==1}">
						<c:set var="sum" value="${sum+course.grade}"></c:set>
					</c:if>
				</c:forEach> <c:out value="${sum}"></c:out></td>
			<td><a
				href="${pageContext.request.contextPath}/detailView2012_1">링크</a></td>
		</tr>

		<tr>
			<td>2012</td>
			<td>2</td>
			<td><c:set var="sum" value="0"></c:set> <c:forEach var="course"
					items="${courses}">
					<c:if test="${course.year==2012&&course.semester==2}">
						<c:set var="sum" value="${sum+course.grade}"></c:set>
					</c:if>
				</c:forEach> <c:out value="${sum}"></c:out></td>
			<td><a
				href="${pageContext.request.contextPath}/detailView2012_2">링크</a></td>
		</tr>

		<tr>
			<td>2013</td>
			<td>1</td>
			<td><c:set var="sum" value="0"></c:set> <c:forEach var="course"
					items="${courses}">
					<c:if test="${course.year==2013&&course.semester==1}">
						<c:set var="sum" value="${sum+course.grade}"></c:set>
					</c:if>
				</c:forEach> <c:out value="${sum}"></c:out></td>
			<td><a
				href="${pageContext.request.contextPath}/detailView2013_1">링크</a></td>
		</tr>

		<tr>
			<td>2015</td>
			<td>2</td>
			<td><c:set var="sum" value="0"></c:set> <c:forEach var="course"
					items="${courses}">
					<c:if test="${course.year==2015&&course.semester==2}">
						<c:set var="sum" value="${sum+course.grade}"></c:set>
					</c:if>
				</c:forEach> <c:out value="${sum}"></c:out></td>
			<td><a
				href="${pageContext.request.contextPath}/detailView2015_2">링크</a></td>
		</tr>

		<tr>
			<td>2016</td>
			<td>1</td>
			<td><c:set var="sum" value="0"></c:set> <c:forEach var="course"
					items="${courses}">
					<c:if test="${course.year==2016&&course.semester==1}">
						<c:set var="sum" value="${sum+course.grade}"></c:set>
					</c:if>
				</c:forEach> <c:out value="${sum}"></c:out></td>
			<td><a
				href="${pageContext.request.contextPath}/detailView2016_1">링크</a></td>
		</tr>

		<tr>
			<td>2016</td>
			<td>2</td>
			<td><c:set var="sum" value="0"></c:set> <c:forEach var="course"
					items="${courses}">
					<c:if test="${course.year==2016&&course.semester==2}">
						<c:set var="sum" value="${sum+course.grade}"></c:set>
					</c:if>
				</c:forEach> <c:out value="${sum}"></c:out></td>
			<td><a
				href="${pageContext.request.contextPath}/detailView2016_2">링크</a></td>
		</tr>



	</table>

</body>
</html>
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
	<h2>�̼� ���к� ���� ��ȸ</h2>
	<hr>
	<table border="1">
		<thead>
			<tr>
				<td>����</td>
				<td>�ٱ�A</td>
				<td>�ٱ�B</td>
				<td>�ϱ�</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>������</td>
			</tr>
		</thead>
		<tr>
			<td><c:out value="${grades.get('����')}"></c:out></td>
			<td><c:out value="${grades.get('�ٱ�A')}"></c:out></td>
			<td><c:out value="${grades.get('�ٱ�B')}"></c:out></td>
			<td><c:out value="${grades.get('�ϱ�')}"></c:out></td>
			<td><c:out value="${grades.get('����')}"></c:out></td>
			<td><c:out value="${grades.get('����')}"></c:out></td>
			<td><c:out value="${grades.get('����')}"></c:out></td>
			<td><c:out value="${grades.get('������')}"></c:out></td>
		</tr>
	</table>
</body>
</html>
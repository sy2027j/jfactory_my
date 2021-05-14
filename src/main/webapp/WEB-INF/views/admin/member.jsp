<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 목록</title>
</head>
<body>
	<c:forEach items="${List }" var="member">
		<c:out value="${member.getMem_id()}"></c:out>
	</c:forEach>
</body>

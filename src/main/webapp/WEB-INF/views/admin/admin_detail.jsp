<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>관리자 상세정보</title>
</head>
<body>
	<h1>관리자 상세정보</h1>
	<hr>
	<table class="table">
		<STYLE TYPE="text/css">
table {
	font-size: 100%;
}

table.t1 {
	border: #d3d3d3 solid;
	border-width: 1px 0px 1px 0px;
	overflow: auto;
}

.data_td {
	text-align: left;
	padding-left: 10%;
	width: 400px;
}
</STYLE>
		<tr>
			<td><b>ID</b></td>
			<td class="data_td">${memdetaildto.getmem_id()}</td>
			<td></td>
		<tr>
		<tr>
			<td><b>등급</b></td>
			<td class="data_td">${memdetaildto.getMem_level()}</td>
		<tr>
		<tr>
			<td><b>이름</b></td>
			<td class="data_td">${memdetaildto.getMem_realname()}</td>
		<tr>
			<td><b>이메일</b></td>
			<td class="data_td">${memdetaildto.getMem_email()}</td>
		<tr>
		<tr>
			<td><b>성별</b></td>
			<td class="data_td"><c:if
					test="${memdetaildto.getMem_sex()eq 0}">여성</c:if> <c:if
					test="${memdetaildto.getMem_sex()eq 1}">남성</c:if> <c:if
					test="${memdetaildto.getMem_sex()eq 2}"></c:if></td>
		<tr>
		<tr>
			<td><b>생년월일</b></td>
			<td class="data_td">${memdetaildto.getMem_birth_year() }.${memdetaildto.getMem_birth_month() }.${memdetaildto.getMem_birth_day() }</td>
		<tr>
		<tr>
			<td><b>전화번호</b></td>
			<td class="data_td">0${memdetaildto.getMem_phone() }-${memdetaildto.getMem_phone1() }-${memdetaildto.getMem_phone2() }</td>
		<tr>
		<tr>
			<td><b>주소</b></td>
			<td class="data_td">(${memdetaildto.getMem_zipcode()})&nbsp;&nbsp;${memdetaildto.getMem_address1()}</td>
		<tr>
		<tr>
			<td><b>상세주소</b></td>
			<td class="data_td">${memdetaildto.getMem_address2()}</td>
		<tr>
		<tr>
			<td><b>피부타입</b></td>
			<td class="data_td">${memdetaildto.getMem_skintype()}</td>
		<tr>
		<tr>
			<td><b>피부고민</b></td>
			<td class="data_td"><c:if
					test="${!empty memdetaildto.getMem_skintrouble1()}">${memdetaildto.getMem_skintrouble1()},</c:if>
				${memdetaildto.getMem_skintrouble2()}</td>
		<tr>
		<tr>
			<td><b>누적 주문 횟수</b></td>
			<td class="data_td">${memdetaildto.getMem_count()}</td>
		<tr>
		<tr>
			<td><b>가입일</b></td>
			<td class="data_td">${memdetaildto.getMem_register_datetime()}</td>
		<tr>
	</table>

</body>
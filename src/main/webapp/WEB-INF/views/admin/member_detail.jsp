<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>회원 상세정보</title>
</head>
<body>
	<h1>회원 상세정보</h1>
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

	<br>
	<h2>주문한 상품</h2>
	<div class="memberManager">
		<table class="t1" id="memberList" style="width: 730px">
			<colgroup>
				<col style="width: 25%;">
				<col style="width: 25%;">
				<col style="width: 25%;">
				<col style="width: 25%;">
			</colgroup>
			<thead>
				<tr>
					<th>주문일자</th>
					<th>주문번호</th>
					<th>결제금액</th>
					<th>처리현황</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orderList}" var="orderList">
					<tr
						onClick="window.open('admin_order_detail?or_id=${orderList.getOr_id()}', '주문 상세 정보', 'width=502, height=600, left=100, top=50');">
						<td style="text-align: center;"><c:out
								value="${orderList.getOr_datetime()}" /></td>
						<td style="text-align: center;"><c:out
								value="${orderList.getOr_id() }" /></td>
						<td style="text-align: center;"><c:out
								value="${orderList.getOr_price() }" /> 원</td>
						<td style="text-align: center;"><c:if
								test="${orderList.getOr_cancel_state() eq 1}">주문 취소</c:if> <c:if
								test="${orderList.getOr_cancel_state() eq 0}">결제 완료</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<h2>주문취소한 상품</h2>
	<div class="memberManager">
		<table class="t1" id="memberList" style="width: 730px">
			<colgroup>
				<col style="width: 33%;">
				<col style="width: 33%;">
				<col style="width: 33%;">
			</colgroup>
			<thead>
				<tr>
					<th>주문일자</th>
					<th>주문번호</th>
					<th>결제금액</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orderCancelList}" var="orderCancelList">
					<tr
						onClick="window.open('admin_order_detail?or_id=${orderCancelList.getOr_id()}', '주문 상세 정보', 'width=502, height=600, left=100, top=50');">
						<td style="text-align: center;"><c:out
								value="${orderCancelList.getOr_datetime()}" /></td>
						<td style="text-align: center;"><c:out
								value="${orderCancelList.getOr_id() }" /></td>
						<td style="text-align: center;"><c:out
								value="${orderCancelList.getOr_price() }" /> 원</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<h2>총 구매 금액</h2>
	<h3>${memdetaildto.getMem_total_cash()}원</h3>
	<br>
	<h2>1:1 문의 내역</h2>
	<div class="memberManager">
		<table class="t1" id="memberList" style="width: 730px">
			<colgroup>
				<col style="width: 25%;">
				<col style="width: 25%;">
				<col style="width: 25%;">
				<col style="width: 25%;">
			</colgroup>
			<thead>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>답변상태</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${QnaList}" var="qnalist">
					<tr
						onClick="window.open('admin_cm_qna_view?qna_no=${qnalist.getQna_no()}')">
						<td style="text-align: center;"><c:out
								value="${qnalist.getQna_title()}" /></td>
						<td style="text-align: center;"><c:out
								value="${qnalist.getmem_id()}" /></td>
						<td style="text-align: center;"><c:out
								value="${qnalist.getQna_datetime() }" /></td>
						<td style="text-align: center;"><c:if
								test="${qnalist.getQna_response() eq 1}">
								<span style="color: blue">답변완료</span>
							</c:if> <c:if test="${qnalist.getQna_response() eq 0}">
								<span style="color: red">답변아직</span>
							</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<h2>메모</h2>
	<textarea rows="5" cols="50" id="gdsDes" name="gdsDes">${memdetaildto.getMem_adminmemo()}</textarea>
	<br>
	<button type="submit" id="update_Btn">완료</button>
	<button type="submit" id="back_Btn">취소</button>


</body>
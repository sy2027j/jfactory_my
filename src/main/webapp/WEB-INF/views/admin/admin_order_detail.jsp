<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<style>
table.t1 {
	border: #d3d3d3 solid;
	border-width: 1px 0px 1px 0px
}

table.t2 {
	border: #000000 solid;
	border-width: 0px 1px 0px 1px
}

table {
	border-collapse: separate;
	border-spacing: 0 10px;
}
</style>
<script>
function resizeWindow(win) {
	var width = document.getElementById('rcvTable').clientWidth;
	var height = win.document.body.offsetHeight + 40;
	
	win.resizeTo(width,height);
}
</script>
<body onload="resizeWindow(this)">
	<div class="container">
		<div class="row">
			<h1>
				<strong>주문 정보</strong>
			</h1>
			<br />
			<%
			String or_id = request.getParameter("or_id");
			%>
			<div class="mb-5">
				<form id="cancelform" name="cancelform" action="order_cancel"
					method="post">
					<input type="hidden" id="or_id" name="or_id" value="<%=or_id%>">
					<input type="hidden" id="or_price" name="or_price"
						value="${ordermemdetail.getOr_price() }">
					<div class="memberManager">
						<table class="t1" style="width: 920px">
							<colgroup>
								<col style="width: 25px;">
								<col style="width: 25px;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" style="font-weight: normal; text-align: right;">&nbsp;&nbsp;주문번호</th>
									<td style="text-align: center;"><%=or_id%></td>
								</tr>
								<tr>
									<th scope="row" style="font-weight: normal; text-align: right;">&nbsp;&nbsp;주문일</th>
									<td style="text-align: center;"><c:out value="${ordermemdetail.getOr_datetime() }" /></td>
								</tr>
								<tr>
									<th scope="row" style="font-weight: normal; text-align: right;">&nbsp;&nbsp;&nbsp;주문상태</th>
									<td style="text-align: center;"><c:if
											test="${ordermemdetail.getOr_cancel_state() eq 1}">주문 취소</c:if>
										<c:if test="${ordermemdetail.getOr_cancel_state() eq 0}">결제 완료</c:if></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
				<br />
				<br />
				<h3 class="subTitle2">
					<strong>주문 상품 정보</strong>
				</h3>
				<br />
				<div class="tableType noLine noPdg">
					<table class="t1" style="width: 730px">
						<colgroup>
							<col style="width: 10%;">
							<col style="width: 50%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" style="text-align: center; font-weight: normal"></th>
								<th scope="col" style="text-align: center; font-weight: normal">제품명</th>
								<th scope="col" style="text-align: center; font-weight: normal">수량</th>
								<th scope="col" style="text-align: center; font-weight: normal">판매가</th>
							</tr>
						</thead>
						<tbody class="center">
							<c:forEach items="${orderdetailList}" var="ordetailList">
								<tr>
									<td class="pdtCont" style="text-align: center"><img
										src='<c:url value="/resources/image/product/${ordetailList.getPd_img() }"/>'
										alt="" width="90px"></td>
									<td class="pdtCont" style="text-align: center"><a
										style="color: black; text-decoration: none"
										href="product_detail?pd_name=${ordetailList.getPd_name()}">
											<span class="name"> &nbsp;<c:out
													value="${ordetailList.getPd_name() }" /><br />
											<c:out value="${ordetailList.getMy_memo() }" />
										</span>
									</a></td>
									<td style="text-align: center"><c:out
											value="${ordetailList.getPd_amount() }" /></td>
									<td style="text-align: center"><c:out
											value="${ordetailList.getPd_price() }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<br />
					<c:if test="${ordermemdetail.getOr_cancel_state() eq 0}">
						<form id="reform" name="reform" action="review_write_or"
							method="post">
							<input type="hidden" id="or_id" name="or_id" value="<%=or_id%>">
						</form>
					</c:if>
				</div>
				<br /> <input type="hidden" id="or_price" name="or_price"
					value="${ordermemdetail.getOr_price() }"> <input
					type="hidden" id="orr_price" name="orr_price" value="">
				<h3 class="subTitle2">
					<strong>총 결제 금액</strong>
				</h3>
				<br />
				<div class="tableType noLine noPdg">
					<table class="t1" style="width: 920px">
						<colgroup>
							<col style="width: 50%;">
							<col style="width: 50%;">
						</colgroup>
						<tbody class="center">
							<tr>
								<td style="text-align: left">&nbsp;총 주문 금액</td>
								<td style="text-align: center;"><label id="alllprice"></label>
									원&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: left">&nbsp;배송비</td>
								<td style="text-align: center;">2500 원&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: left">&nbsp;최종 결제 금액</td>
								<td style="text-align: center;"><c:out
										value="${ordermemdetail.getOr_price() }" /> 원&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
				<h3 class="subTitle2">
					<strong>내 배송지 정보</strong>
				</h3>
				<br />
				<div class="tableType noLine">
					<table id="rcvTable" class="t1" style="width: 920px">
						<colgroup>
							<col style="width: 20px;">
							<col style="width: 25px">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;받으실
									분</th>
								<td><c:out value="${ordermemdetail.getBuy_realname() }" />
								</td>
							</tr>
							<tr>
								<th scope="row" style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소</th>
								<td class="deliveryWriteWrap"><c:out
										value="${ordermemdetail.getBuy_zipcode() }" /><br /> <c:out
										value="${ordermemdetail.getBuy_address1() }" /><br /> <c:out
										value="${ordermemdetail.getBuy_address2() }" /></td>
							</tr>
							<tr>
								<th scope="row" style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;휴대폰번호</th>
								<td>0<c:out value="${ordermemdetail.getBuy_phone() }" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<br />
		</div>
	</div>

	<br />
	<br />
	<br />
	<script>
$(document).ready(function() {
	  var allprice = parseInt(document.getElementById("or_price").value);

	  let price = allprice-2500;
	  document.getElementById('alllprice').innerText = price;
	  $("#orr_price").attr("value", price);
	});

</script>

</body>

</html>
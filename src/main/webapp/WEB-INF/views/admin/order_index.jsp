<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
p {
	margin: 20px 0px;
}

div.box-footer { 
	position: absolute;
	bottom: -10%;
	left: 45%;
}
</style>
<body>
	<div id="layoutSidenav_content">
		<main>
			<br>
			<div class="container-fluid">
				<h1 class="mt-4">주문 조회</h1>
				<form method="get" action="orderSearch" class="form-inline"
					style="font-size: 15pt">
					<select id="searchType" name="searchType" size="1">
						<option value="mem_id">주문자</option>
						<option value="or_id">주문번호</option>
						<option value="or_price">가격</option>
						<option value="all">전체</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						id="keyword" name="keyword" style="width: 500px; height: 35px;"
						type="text" placeholder="검색창">&nbsp;
					<button class="btn btn-secondary" type="submit">
						<span style="font-size: 15pt">검색</span>
					</button>
				</form>
			</div>
			<br>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">주문목록</h3>
					</div>
					<div class="card-body">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<th style="width: 120px">주문일자</th>
									<th style="width: 150px">주문번호</th>
									<th style="width: 100px">주문자</th>
									<th style="width: 120px">결제금액</th>
									<th style="width: 250px">배송지</th>
									<th style="width: 200px">휴대폰 번호</th>

								</tr>

								<c:forEach items="${orderList}" var="orderlist">
									<tr
										onClick="window.open('admin_order_detail?or_id=${orderlist.getOr_id()}', '주문 상세 정보', 'width=500, height=700, left=100, top=50');">
										<td><c:out value="${orderlist.getOr_datetime() }" /></td>
										<td><c:out value="${orderlist.getOr_id()}" /></td>
										<td><c:out value="${orderlist.getMem_id()}" /></td>									
										<td><c:out value="${orderlist.getOr_price() }원" /></td>
										<td><c:out
												value="(${orderlist.getBuy_zipcode() })  ${orderlist.getBuy_address1()}  ${orderlist.getBuy_address2()}" /></td>
										<td><c:out value="0${orderlist.getBuy_phone() }" /></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<div class="box-footer">
							<div class="text-center">
								<ul class="pagination">
									<!-- 이전prev -->
									<c:if test="${pm.prev }">
										<li class="page-item"><a class="page-link"
											href="order_index?page=${pm.startPage-1}">&laquo;</a></li>
									</c:if>
									<!-- 페이지블럭 -->
									<c:forEach var="idx" begin="${pm.startPage }"
										end="${pm.endPage }">
										<li class="page-item"><a class="page-link"
											href="order_index?page=${idx }">${idx}</a></li>
									</c:forEach>
									<!-- 다음next -->
									<c:if test="${pm.next && pm.endPage > 0}">
										<li class="page-item"><a class="page-link"
											href="order_index?page=${pm.endPage+1}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
	</div>
</body>
</html>

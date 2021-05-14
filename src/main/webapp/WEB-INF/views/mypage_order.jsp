<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<style>
table {
	width: 100%;
}

td.Order_button {
	border-top: none;
}

div.view {
	float: right;
	margin-top: -20px;
	margin-right: 15px;
}

div.mypage_top {
	margin-top: 80px;
}

div.orderlist {
	float: right;
	margin-top: -222px;
	margin-right: -25px;
}

div.mypage_orderlist {
	margin-top: -30px;
}

li a.current {
	background-color: #e6e6fa;
	color: gray;
}

ul.sidenav_list {
	background-color: #e6e6fa;
	color: gray;
	width: 175px;
	list-style-type: none;
	margin-top: -36px;
	padding: 0;
	list-style: none;
}

ul.userpoint {
	float: right;
	margin-right: -100px;
	margin-top: -95px;
	width: 1000px;
}

li a {
	display: block;
	padding: 5px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

li a . current {
	background-color: #e6e6fa;
	color: white;
}

h2.subTitle1 {
	float: right;
	margin-top: -275px;
	margin-right: 560px;
}
</style>

<body>

	<div class="mypage_orderlist container">

		<div class="mypage_top container">
			<div class="row"></div>
			<div class="row">
				<div class="col-lg-12">
					<hr style="size: 100%">
					<span class="name">임연희</span>님은 &nbsp; <strong class="gradeW">
						라벤더</strong> 회원입니다. <br>
					<p class="totalGradePrice">
						다음등급까지 <strong>100,000 원</strong> <span class="fcolor2">부족</span>
						<span class="sub">(다음 등급 산정일 &nbsp; 2021.06.01)</span> <br>
						당월포함 직전6개월 구매금액 <strong>0 원</strong>
					</p>
					<ul class="userpoint container col-lg-offset-1 col-lg-5">
						<li><a href="/mypage_point" class="point linkArwBs">보유
								포인트 &emsp; <span class="length"> <span class="num">0</span>P
							</span>
						</a></li>
						<li><a href="/mypage_coupon" class="coupon linkArwBs">보유
								쿠폰 &emsp; <span class="length"><span class="num">1</span>장
							</span>
						</a></li>
					</ul>
					<hr style="size: 100%">
				</div>
			</div>

			<div>
				<ul class="sidenav_list">
					<li><a class="current" href="mypage_order"
						style="display: block; padding: 8px; text-decoration: none;">주문내역</a></li>
					<li><a class="current" href="mypage_view"
						style="display: block; padding: 8px; text-decoration: none;">최근
							본 상품</a></li>
					<li><a class="current" href="mypage_review"
						style="display: block; padding: 8px; text-decoration: none;">내가
							작성한 리뷰</a></li>
					<li><a class="current" href="mypage_ask"
						style="display: block; padding: 8px; text-decoration: none;">문의내역</a></li>
					<li><a class="current" href="mypage_coupon"
						style="display: block; padding: 8px; text-decoration: none;">보유
							쿠폰</a></li>
					<li><a class="current" href="mypage_point"
						style="display: block; padding: 8px; text-decoration: none;">보유
							포인트</a></li>
					<li><a class="current" href="mypage_infomation"
						style="display: block; padding: 8px; text-decoration: none;">회원정보
							수정</a></li>
				</ul>
			</div>
		</div>

		<!-- //주문내역 네비 -->
		<div class="order container">
			<!-- contents -->
			<div class="container col-lg-9">
				<section class="contents">
					<h2 class="subTitle1">주문내역</h2>
				</section>
			</div>

			<div class="orderlist container col-lg-10">
				<table class="table" id="orderlisttable">
					<thead class="table-header-bg" style="background-color: #e6e6fa">
						<tr>
							<th
								style="width: 5%; border-left: none; border-right: 1px solid #A4A4A4; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"></th>
							<th
								style="width: 15%; border-left: 1px solid #A4A4A4; border-right: 1px solid #A4A4A4; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"><center>구매날짜</center></th>
							<th colspan="2" align="center"
								style="width: 30%; border-left: 1px solid #A4A4A4; border-right: 1px solid #A4A4A4; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"><center>상품명</center></th>
							<th
								style="width: 8%; border-left: 1px solid #A4A4A4; border-right: 1px solid #A4A4A4; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"><center>수량</center></th>
							<th
								style="width: 8%; border-left: 1px solid #A4A4A4; border-right: 1px solid #A4A4A4; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"><center>금액</center></th>
							<th
								style="width: 15%; border-left: 1px solid #A4A4A4; border-right: 1px solid #A4A4A4; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"><center>주문
									상태</center></th>
						</tr>
					</thead>
					<tbody id="order" class="table-body-row" style="height: 50px;">
						<tr th:each="result : ${orderListResult}"
							onclick="window.open('mypage_orderdetail', '주문상세', 'width=480px,height=600px,toolbars=no,scrollbars=no');">
							<td class="order_num" style="vertical-align: middle;"
								th:text="${result.orderNum}"><center>1</center></td>
							<td class="order_date" style="vertical-align: middle;"
								th:text="${result.order_date}"><center></center></td>
							<td class="product_img" style="vertical-align: middle;"
								th:text="${result.orderproductimg}"><center>
									<img src="../images/아이쉐도우1.png" width=100 height=50>
								</center></td>
							<td class="product_name" style="vertical-align: middle;"
								th:text="${result.productName}"><center></center></td>
							<td class="Quantity" style="vertical-align: middle;"
								th:text="${result.Quantity}"></td>
							<td class="Price" style="vertical-align: middle;"
								th:text="${result.price}"></td>
							<td class="Order_state" style="vertical-align: middle;"
								th:text="${result.orderstate}"><center></center></td>
							<td class="Order_button" style="vertical-align: middle;"
								th:text="${result.orderbutton}"><center>
									<input type="button" name="orderbutton"
										th:value="${result.orderbutton}">
								</center></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<%@ include file="./footer.jsp"%>
</body>

</html>
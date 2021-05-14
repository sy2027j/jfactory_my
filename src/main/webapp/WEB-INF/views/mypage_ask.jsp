<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
div.ask {
	float: right;
	margin-top: -20px;
	margin-right: 15px;
}

div.mypage_top {
	margin-top: 80px;
}

div.asklist {
	float: right;
	margin-top: -200px;
	margin-right: 60px;
}

div.mypage_asklist {
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

h2.subTitle4 {
	float: right;
	margin-top: -256px;
	margin-right: 540px;
}

.ask_num {
	border-bottom: 1px solid #e6e6fa;
}

.ask_name {
	border-bottom: 1px solid #e6e6fa;
}

.ask_date {
	border-bottom: 1px solid #e6e6fa;
}

.ask_state {
	border-bottom: 1px solid #e6e6fa;
}
</style>

<body>

	<div class="mypage_asklist container">

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
					<ul class="userpoint">
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
					<li><a class="current" href="mypage_order">주문내역</a></li>
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
		<div class="ask container">
			<!-- contents -->
			<div class="container col-lg-9">
				<section class="contents">
					<h2 class="subTitle4">문의내역</h2>
				</section>
			</div>

			<div class="asklist container col-lg-9">
				<table class="table" id="asklisttable">
					<thead class="table-header-bg" style="background-color: #e6e6fa">
						<tr>
							<th style="width: 5%;"></th>
							<th style="width: 20%;"><center>제목</center></th>
							<th style="width: 8%;"><center>날짜</center></th>
							<th style="width: 8%;"><center>답변상태</center></th>
						</tr>
					</thead>
					<tbody id="ask" class="table-body-row">
						<tr th:each="result : ${viewListResult}">
							<td class="ask_num" style="vertical-align: middle;"
								th:text="${result.asknum}"><center>1</center></td>
							<td class="ask_name" style="vertical-align: middle;"
								th:text="${result.askname}"><center></center></td>
							<td class="ask_date" style="vertical-align: middle;"
								th:text="${result.askdate}"><center></center></td>
							<td class="ask_state" style="vertical-align: middle;"
								th:text="${result.askstate}"><center></center></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="./footer.jsp"%>
</body>

</html>
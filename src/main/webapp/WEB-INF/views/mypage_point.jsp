<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<style>
div.review {
	float: right;
	margin-top: -20px;
	margin-right: 15px;
}

div.mypage_top {
	margin-top: 80px;
}

div.reviewlist {
	float: right;
	margin-top: -200px;
	margin-right: 230px;
}

div.mypage_point {
	margin-top: -30px;
}

div.point {
	float: left;
	margin: 0 auto;
	margin-top: -270px;
	margin-left: 50px;
}

div.pointdetail {
	padding-top: 25px;
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

h2.subTitle3 {
	float: right;
	margin-top: -256px;
	margin-right: 500px;
}
</style>

<body>

	<div class="mypage_point container">

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
					<button type="button" id="" onclick="location.href='membership'">멤버십 혜택</button>
					
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

			<div class="col-md-3">
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
		<div class="point container">
			<div class="have_point container">
				<!-- contents -->
				<div class="container col-lg-9">
					<section class="contents">
						<h4 class="subTitle3">보유 포인트</h4>
						<hr>
					</section>
				</div>

				<div class="pointlist container col-lg-9">
					<table class="table" id="reviewlisttable">
						<thead class="table-header-bg" style="background-color: #e6e6fa">
							<tr>
								<th style="width: 30%;">보유 포인트</th>
								<th style="width: 30%;"><center>총 적립 포인트</center></th>
								<th style="width: 30%;"><center>총 사용 포인트</center></th>
							</tr>
						</thead>
						<tbody id="point" class="table-body-row">
							<tr th:each="result : ${pointListResult}">
								<td class="havepoint" style="vertical-align: middle;"
									th:text="${result.havepoint}"><center></center></td>
								<td class="savepoint" style="vertical-align: middle;"
									th:text="${result.savepoint}"><center></center></td>
								<td class="usepoint" style="vertical-align: middle;"
									th:text="${result.usepoint}"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="pointdetail container">
				<!-- contents -->
				<div class="container col-lg-9">
					<section class="contents">
						<h4 class="subTitle3">포인트 상세내역</h4>
						<hr>
					</section>
				</div>

				<div class="pointdetaillist container col-lg-9">
					<table class="table" id="reviewlisttable">
						<thead class="table-header-bg" style="background-color: #e6e6fa">
							<tr>
								<th style="width: 10%;"><center>날짜</center></th>
								<th style="width: 15%;"><center>유형</center></th>
								<th style="width: 20%;"><center>내용</center></th>
								<th style="width: 15%;"><center>적차감 이용처</center></th>
								<th style="width: 10%;"><center>구분</center></th>
								<th style="width: 10%;"><center>포인트</center></th>
							</tr>
						</thead>
						<tbody id="point" class="table-body-row">
							<tr th:each="result : ${pointListResult}">
								<td class="pointdate" style="vertical-align: middle;"
									th:text="${result.pointdate}"><center></center></td>
								<td class="pointype" style="vertical-align: middle;"
									th:text="${result.pointype}"><center></center></td>
								<td class="pointcontent" style="vertical-align: middle;"
									th:text="${result.pointcontent}"><center></center></td>
								<td class="pointuse" style="vertical-align: middle;"
									th:text="${result.pointuse}"><center></center></td>
								<td class="pointdivision" style="vertical-align: middle;"
									th:text="${result.pointdivision}"><center></center></td>
								<td class="savedetailpoint" style="vertical-align: middle;"
									th:text="${result.savedetailpoint}"><center></center></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>

		<%@ include file="./footer.jsp"%>
</body>

</html>



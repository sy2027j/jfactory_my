<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
div.mypage_top {
	margin-top: 80px;
}

li a.current {
	background-color: #e6e6fa;
	color: gray;
}

div.sidenav_list {
	background-color: #e6e6fa;
	color: gray;
	width: 175px;
	list-style-type: none;
	margin-top: 0px;
	padding: 0;
}

div.sidenav_list li {
	list-style: none;
	margin-left: -30px;
}

ul.userpoint {
	float: left;
	margin-left: 700px;
	margin-top: -80px;
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

h3 {
	float: left;
	margin-left: 23%;
	margin-top: 10px;
	font-weight: bold;
}

h2 {
	float: left;
	margin-left: 230px;
	margin-top: -60px;
}

div.coupon {
	padding-top: -1000px;
}

div.couponNav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	margin-top: -230px;
	margin-left: 21%;
}

div.couponNav li {
	float: left;
	border-right: solid 2px white;
}

div.couponNav li:last-child {
	border-right: none;
}

div.couponNav li a {
	display: block;
	background-color: #e6e6fa;
	color: black;
	padding: 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

div.couponNav li a.current {
	background-color: #E2A9F3;
	color: black;
}

div.couponNav li a:hover:not(.current) {
	background-color: #e6e6fa;
	color: black;
}

div.coupon_show {
	width: 300px;
	height: 170px;
	border-radius: 8px;
	background: #FAFAFA;
	float: left;
	margin-left: 270px;
	margin-top: 25px;
	padding: 30px;
	border-style: solid;
	border-width: 1.5px;
	border-color: #D8D8D8;
}

div.contents {
	margin-top: 0px;
}

ul.userpoint li {
	list-style: none;
}

#coupon_date {
	font-size: 3px;
	float: right;
	margin-right: -25px;
	margin-top: 4px;
}

#coupon_characteristics_label {
	font-size: 10px;
	font-weight: bold;
	padding-left: 5px;
	padding-right:5px;
	float: left;
	margin-left: -20px;
	margin-top: -140px;
	text-align: center;
	border-radius: 50px;
	border-style: solid;
	border-width: 2px;
	background-color:#E2A9F3;
	border-color: #E2A9F3;
	color: white;
}


#use_coupon_button {
	font-size: 20px;
	color: black;
	width: 110px;
	height: 25px;
	font-size: 15px;
	border-style: solid;
	border-width: 1px;
	border-color: #E2A9F3;
	border-radius: 5px;
	margin-top: 20%;
	margin-left: 25%;
}
</style>

<body>
	<div class="mypage_coupon container">
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

			<div class="contents">
				<div class="sidenav_list">
					<ul>
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
			<div class="coupon container co-lg-10">
				<h2>보유 쿠폰</h2>
				<div class="couponNav container co-lg-10">
					<ul class="couponNav">
						<li><a class="have_couponNav current" href="mypage_coupon" style="width:400px;">보유
								쿠폰</a></li>
						<li><a class="use_couponNav" href="mypage_usecoupon" style="width:400px;">사용
								쿠폰</a></li>
					</ul>
				</div>
			</div>
			<div class="coupon_show container col-lg-3">
				<h3>무료배송</h3>
				<button type="button" id="use_coupon_button" onclick="">쿠폰
					사용하기</button>
				<label id="coupon_date">2021-05-14 &nbsp;~&nbsp; 2022-05-22</label>
				<div class="coupon_characteristics">
					<label id="coupon_characteristics_label">생일축하 쿠폰</label>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
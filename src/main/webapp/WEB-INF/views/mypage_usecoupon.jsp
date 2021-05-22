<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp" %>
<!DOCTYPE html>
<html lang="en">
<body>
<div class="container">
<div class="row" >
    <div class="col-sm-2">
       <ul class="nav nav-pills flex-column" style="background-color:#e6e6fa;">
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_order">주문내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_view">최근 본 상품</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_review">내가 작성한 리뷰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_ask">문의내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_coupon">보유쿠폰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_information">회원정보수정</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
			<div class="coupon container co-lg-10">
				<h2>사용 쿠폰</h2>
				<div class="couponNav container co-lg-10">
					<ul class="couponNav">
						<li><a class="have_couponNav" href="mypage_coupon">보유 쿠폰</a></li>
						<li><a class="use_couponNav current" href="mypage_usecoupon">사용
								쿠폰</a></li>
					</ul>
				</div>
			</div>
			<div class="coupon_show container col-lg-3">
				<h4>5천원 할인</h4>
				<button type="button" id="use_coupon_button" onclick="">쿠폰 사용 주문</button>
				<label id="coupon_date">쿠폰 사용일: &nbsp; 2021-05-14</label>
				<div class="coupon_characteristics">
					<label id="coupon_characteristics_label">라벤더등급 쿠폰 혜택</label>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
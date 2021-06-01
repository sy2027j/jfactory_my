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
          <a style="color:black; text-decoration:none "class="nav-link" href="information_check">회원정보수정</a>
        </li>
      </ul>
      <hr class="d-sm-none">
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



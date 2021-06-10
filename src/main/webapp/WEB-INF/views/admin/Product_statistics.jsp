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
			<div class="container-fluid" style="padding-left: 5%;">
				<h1 class="mt-4">상품별 현황 조회</h1>
				<form method="get" id="Product_statistics_Category" name="Product_statistics_Category"
					action="Product_statistics" style="font-size: 15pt">
					<div style="padding-top: 20px;">
						<select id="searchType" name="searchType" size="1"
							onchange="select()">
							<option value="all">전체</option>
							<option value="Category_eye">아이</option>
							<option value="Category_lip">립</option>
							<option value="Category_skin">스킨케어</option>
							<option value="Category_face">페이스</option>
							<option value="Category_cleansing">클렌징</option>
						</select>
					</div>
				</form>
				<form method="get" action="Product_statistics_Search"
					style="font-size: 15pt">
					<div style="padding-top: 10px;">
						<input id="keyword" name="keyword"
							style="width: 500px; height: 35px;" type="text" placeholder="검색창">&nbsp;
						<button class="btn btn-secondary" type="submit">
							<span style="font-size: 15pt">검색</span>
						</button>
					</div>
				</form>
			</div>
			<br>
			<div class="col-lg-12" style="padding-left: 5%; padding-right: 5%;">
				<ol class="breadcrumb" style="background-color: #e6e6fa;">
					<li class="breadcrumb-item"><a href="index.html"><span
							style="color: black;">상품 목록</span></a></li>
				</ol>
				<div class="row"> 
					<c:forEach items="${Product_statisticslist}" var="pdlist">
						<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item"
							onclick="location.href='product_statistics_detail?pd_name=${pdlist.getPd_name()}&pd_category=${pdlist.getPd_category() }'">
							<div class="card h-100">
								<a href="#"><img class="card-img-top"
									src='<c:url value="/resources/image/product/${pdlist.getPd_main_stored_file() }"/>'
									alt=""></a>
								<div class="card-body">
									<h5 class="card-title">
										<a href="#"><span style="color: black; font-size: 15pt">${pdlist.getPd_name() }</span></a>
									</h5>
									${pdlist.getPd_price() }원
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function select(){
			// 선택된 데이터 가져오기
			document.Product_statistics_Category.submit();
		}
	</script>
</body>
</html>

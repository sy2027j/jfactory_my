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
				<h1 class="mt-4">REVIEW</h1>
				<form method="get" action="reviewSearch" class="form-inline"
					style="font-size: 15pt">
					<select id="searchType" name="searchType" size="1">
						<option value="mem_id">작성자</option>
						<option value="re_title">제목</option>
						<option value="pd_name">제품명</option>
						<option value="all">전체</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="keyword" name="keyword"
						style="width: 500px; height: 35px;" type="text" placeholder="검색창">&nbsp;
					<button class="btn btn-secondary" type="submit">
						<span style="font-size: 15pt">검색</span>
					</button>
				</form>
			</div>
			<br>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">상품평</h3>
					</div>
					<div class="card-body">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<th style="width: 300px">글제목</th>
									<th style="width: 300px">제품명</th>
									<th style="width: 100px">작성자</th>
									<th style="width: 150px">작성일</th>
									<th style="width: 100px">조회수</th>
									<th style="width: 100px">만족도</th>
									<th style="width: 70px">삭제</th>
								</tr>

								<c:forEach items="${searchList}" var="reviewlist">
									<tr>
										<td><a style="color: black; text-decoration: none"
											href="admin_cm_review_view?re_no=${reviewlist.getRe_no()}"><c:out
													value="${reviewlist.getRe_title()}" /></a></td>
										<td><c:out value="${reviewlist.getPd_name() }" /></td>
										<td><c:out value="${reviewlist.getMem_id() }" /></td>
										<td><c:out value="${reviewlist.getRe_datetime() }" /></td>
										<td><c:out value="${reviewlist.getRe_count() }회" /></td>
										<td><c:out value="${reviewlist.getRe_score() }점" /></td>
										<td style="text-align: center; vertical-align: middle"><a
											href="delete_review?re_no=${reviewlist.getRe_no()}">삭제</a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
	</div>
</body>
</html>

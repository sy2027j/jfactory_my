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
				<form method="get" action="SelectServlet" class="form-inline"
					style="font-size: 15pt">
					<select id="select" name="select" size="1">
						<option value="ID">만족도순</option>
						<option value="ID">조회순</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
								</tr>

								<c:forEach items="${ReviewList}" var="reviewlist">
									<tr>
										<td><a style="color: black; text-decoration: none"
											href="admin_cm_review_view?re_no=${reviewlist.getRe_no()}"><c:out
													value="${reviewlist.getRe_title()}" /></a></td>
										<td><c:out value="${reviewlist.getPd_name() }" /></td>
										<td><c:out value="${reviewlist.getMem_id() }" /></td>
										<td><c:out value="${reviewlist.getRe_datetime() }" /></td>
										<td><c:out value="${reviewlist.getRe_count() }회" /></td>
										<td><c:out value="${reviewlist.getRe_score() }점" /></td>
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
											href="cm_review?page=${pm.startPage-1}">&laquo;</a></li>
									</c:if>
									<!-- 페이지블럭 -->
									<c:forEach var="idx" begin="${pm.startPage }"
										end="${pm.endPage }">
										<li class="page-item"><a class="page-link"
											href="cm_review?page=${idx }">${idx}</a></li>
									</c:forEach>
									<!-- 다음next -->
									<c:if test="${pm.next && pm.endPage > 0}">
										<li class="page-item"><a class="page-link"
											href="cm_review?page=${pm.endPage+1}">&raquo;</a></li>
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

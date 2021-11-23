<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
</head>
<body>
	<div id="layoutSidenav_content">
		<div class="container-fluid">
			<h1 class="mt-4">Q&A</h1>
			<form method="get" action="qnaSearch" class="form-inline" style="font-size: 15pt">
				<select id="searchType" name="searchType" size="1">
					<option value="mem_id">작성자</option>
					<option value="qna_title">제목</option>
					<option value="qna_response">답변상태</option>
					<option value="all">전체</option>
				</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input id="keyword" name="keyword" style="width: 500px; height: 35px;" type="text" placeholder="검색창">&nbsp;
				<button class="btn btn-secondary" type="submit">
					<span style="font-size: 15pt">검색</span>
				</button>
			</form>
		</div>
		<br>
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">게시글 목록</h3>
				</div>
				<div class="card-body">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th style="width: 100px">제목</th>
								<th style="width: 100px">작성자</th>
								<th style="width: 80px">작성일</th>
								<th style="width: 60px">답변상태</th>
							</tr>
							<c:forEach items="${QnaList}" var="qnalist">
								<tr>
									<td>
										<a style="color: black; text-decoration: none" href="admin_cm_qna_view?qna_no=${qnalist.getQna_no()}">
											<c:out value="${qnalist.getQna_title()}" />
										</a>
									</td>
									<td><c:out value="${qnalist.getmem_id() }" /></td>
									<td><c:out value="${qnalist.getQna_datetime() }" /></td>
									<td>
										<c:if test="${qnalist.getQna_response() eq 1}">
											<span style="color: blue">답변완료</span>
										</c:if>
										<c:if test="${qnalist.getQna_response() eq 0}">
											<span style="color: red">답변아직</span>
										</c:if>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="box-footer">
						<div class="text-center">
							<ul class="pagination">
								<!-- 이전prev -->
								<c:if test="${pm.prev }">
									<li class="page-item"><a class="page-link" href="cm_qna?page=${pm.startPage-1}">&laquo;</a></li>
								</c:if>
								<!-- 페이지블럭 -->
								<c:forEach var="idx" begin="${pm.startPage }" end="${pm.endPage }">
									<li class="page-item"><a class="page-link" href="cm_qna?page=${idx }">${idx}</a></li>
								</c:forEach>
								<!-- 다음next -->
								<c:if test="${pm.next && pm.endPage > 0}">
									<li class="page-item"><a class="page-link" href="cm_qna?page=${pm.endPage+1}">&raquo;</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div style="align:right">
			<button type="button" class="btn btn-success btn-flat" id="writeBtn" onclick="location.href='write_notice'">
				<i class="fa fa-pencil"></i> 글쓰기
			</button>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>

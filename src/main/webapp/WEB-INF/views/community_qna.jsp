<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<hr>
<style>
p {
	margin: 20px 0px;
}
div.box-footer{
    position: absolute;
    bottom: -40%;
    left: 45%;
}
</style>
<style>
table {
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

th {
	background-color: #e6e6fa;
	text-align: center;
}

td {
	text-align: center;
}
</style>

<div class="container">
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">Q&A</h1>
			</div>
			<br>
			<div class="memberManager">
				<table class="table table-hover" id="qnalist"
					style="table-layout: fixed;">
					<tr>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>답변상태</th>
					</tr>
					<tr>
						<c:forEach items="${QnaList}" var="qnalist">
							<tr onclick="location.href='cm_qna_view?qna_no=${qnalist.getQna_no()}&id=${qnalist.getmem_id()}'">
								<td><c:out value="${qnalist.getQna_title()}" /></td>
								<td><c:out value="${qnalist.getmem_id() }" /></td>
								<td><c:out value="${qnalist.getQna_datetime() }" /></td>
								<td><c:if test="${qnalist.getQna_response() eq 1}">
										<span style="color: blue">답변완료</span>
									</c:if> <c:if test="${qnalist.getQna_response() eq 0}">
										<span style="color: red">답변대기</span>
									</c:if></td>
							</tr>
						</c:forEach>
					</tr>
				</table>
				<div class="box-footer">
					<div class="text-center">
						<ul class="pagination">
							<!-- 이전prev -->
							<c:if test="${pm.prev }">
								<li class="page-item"><a class="page-link"
									href="community_qna?page=${pm.startPage-1}">&laquo;</a></li>
							</c:if>
							<!-- 페이지블럭 -->
							<c:forEach var="idx" begin="${pm.startPage }"
								end="${pm.endPage }">
								<li class="page-item"><a class="page-link" href="community_qna?page=${idx }">${idx}</a></li>
							</c:forEach>
							<!-- 다음next -->
							<c:if test="${pm.next && pm.endPage > 0}">
								<li class="page-item"><a class="page-link" href="community_qna?page=${pm.endPage+1}">&raquo;</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
	</div>
	<button type="button"
		style="float: right; background-color: #e6e6fa; color: black; border-color: #e6e6fa"
		class="btn btn-primary" onclick="location.href='cm_qna_write'">글쓰기</button>
</div>
</main>

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

<%@ include file="./footer.jsp"%>
</body>
</html>
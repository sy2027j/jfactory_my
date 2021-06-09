<%@page import="javax.print.DocFlavor.STRING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="./Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
p {
	margin: 20px 0px;
}

div.box-footer {
	position: absolute;
	left: 50%;
	margin-top: 2%;
}

div.row {
	padding-bottom: 5%;
}
</style>

<body>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">회원검색결과</h1>
				<form method="get" id="mem_Search" name="mem_Search"
					action="memberSearch" class="form-inline" style="font-size: 15pt">
					<select id="searchType" name="searchType" size="1">
						<option value="mem_id">ID</option>
						<option value="mem_realname">이름</option>
						<option value="mem_email">이메일</option>
						<option value="all">전체</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						id="keyword" name="keyword" style="width: 500px; height: 35px;"
						type="text" placeholder="검색창">&nbsp;
					<button class="btn btn-secondary" type="submit">
						<span style="font-size: 15pt">검색</span>
					</button>
				</form>
			</div>
			<br>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> 회원차트
				</div>
				<div class="memberManager">
					<table class="table table-hover" id="adminMemberList">
						<thead>
							<tr>
								<th>등급</th>
								<th>ID</th>
								<th>이름</th>
								<th>생년월일</th>
								<th>번호</th>
								<th>주문횟수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${searchList}" var="searchlist">
								<tr
									onClick="window.open('member_detail?mem_id=${searchlist.getmem_id()}', '회원 상세 정보', 'width=500, height=700, left=100, top=50');">
									<td><c:out value="${searchlist.getMem_level()}" /></td>
									<td><c:out value="${searchlist.getmem_id()}" /></td>
									<td><c:out value="${searchlist.getMem_realname() }" /></td>
									<td><c:out
											value="${searchlist.getMem_birth_year() }.${searchlist.getMem_birth_month() }.${searchlist.getMem_birth_day() }" /></td>
									<td><c:out
											value="${searchlist.getMem_phone() }-${searchlist.getMem_phone1() }-${searchlist.getMem_phone2() }" /></td>
									<td><c:out value="${searchlist.getMem_count() }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
					<script
						src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
					<script
						src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
				</div>
			</div>
	</div>
	</main>

</body>
</html>
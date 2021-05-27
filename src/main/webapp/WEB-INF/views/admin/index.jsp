<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp"%>
<!DOCTYPE html>
<html lang="en">


<body>
	<div id="layoutSidenav_content">
		<main>
		<div class="container-fluid">
			<h1 class="mt-4">회원조회</h1>
			<form method="get" action="SelectServlet" class="form-inline"
				style="font-size: 15pt">
				<select id="select" name="select" size="1">
					<option value="정렬">ID</option>
					<option value="ID">ID</option>
					<option value="이름">이름</option>
					<option value="전화번호">전화번호</option>
				</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					style="width: 500px; height: 35px;" " type="text" placeholder="검색창">&nbsp;
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
						<c:forEach items="${List}" var="member">
							<tr onClick="window.open('member_detail?mem_id=${member.getmem_id()}', '회원 상세 정보', 'width=600, height=700, left=100, top=50');">
								<td><c:out value="${member.getMem_level()}" /></td>
								<td><c:out value="${member.getmem_id()}" /></td>
								<td><c:out value="${member.getMem_realname() }" /></td>
								<td><c:out
										value="${member.getMem_birth_year() }.${member.getMem_birth_month() }.${member.getMem_birth_day() }" /></td>
								<td><c:out
										value="${member.getMem_phone() }-${member.getMem_phone1() }-${member.getMem_phone2() }" /></td>
								<td><c:out value="${member.getMem_count() }" /></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	</main>
</body>
</html>

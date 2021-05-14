<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
table {
	display: flex;
	display: -webkit-box;
	display: -ms-flexbox;
	overflow-x: auto;
	overflow-y: hidden;
	float: left;
	margin-left: 25px;
	margin-top: 25px;
}

tbody {
	display: flex;
}

td {
	display: block;
	height: 40px;
	width: 270px;
	background-color: white;
	border: black solid 1px;
	border-right: none;
}

th {
	display: block;
	height: 40px;
	width: 130px;
	background-color: white;
	border: black solid 1px;
	border-left: none;
}

h2 {
	text-align: center;
}

div.orderdetail_table {
	margin: 0 auto;
}

#order_detail_button {
    float: left;
	margin-left: 28px;	
	margin-top: 30px;	
	width: 400px;
	height: 50px;
	background-color: black;
	color: white;
}
</style>
<head>
</head>
<body>
	<div class="container">
		<h2>주문 상세</h2>
		<hr>

		<div class="orderdetail_table container">
			<table class="table" id="orderdetail_table">

				<tr style="">
					<th>주문번호</th>
					<th>주문자(아이디)</th>
					<th>회원등급</th>
					<th>주문일</th>
					<th>결제방법</th>
					<th>영수증 여부</th>
					<th>주문상태</th>
					<th>배송완료일</th>
				</tr>


				<tr class="order_data" style="width: 300px;">
					<td class="order_num" style="vertical-align: middle;"
						th:text="${result.orderNum}"><center></center></td>
					<td class="order_id" style="vertical-align: middle;"
						th:text="${result.order_id}"><center></center></td>
					<td class="mem_rank" style="vertical-align: middle;"
						th:text="${result.mem_rank}"><center></center></td>
					<td class="order_date" style="vertical-align: middle;"
						th:text="${result.order_date}"><center></center></td>
					<td class="order_pay" style="vertical-align: middle;"
						th:text="${result.order_pay}"><center></center></td>
					<td class="order_receipt" style="vertical-align: middle;"
						th:text="${result.order_receipt}"><center></center></td>
					<td class="order_state" style="vertical-align: middle;"
						th:text="${result.order_state}"><center></center></td>
					<td class="order_Completion_Date" style="vertical-align: middle;"
						th:text="${result.order_Completion_Date}"><center></center></td>
				</tr>

			</table>
		</div>

		<button type="button" id="order_detail_button"
			onclick="window.close()">확인</button>
	</div>
</body>
</html>

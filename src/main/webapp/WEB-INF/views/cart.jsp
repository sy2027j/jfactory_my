 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<div class="container col-lg-9" style="padding-top: 3%;">
		<div id="header">
			<div id="wrapper">
				<div id="content">
					<h3 class="cart_Title" align="center">장바구니</h3>
					<div class="delete container col-lg-1" style="align: right">
						<input type="button" value="선택삭제" onclick="삭제하는 부분 구현">
					</div>
					<div class="container col-lg-9"
						style="padding-top: 7%; padding-bottom: 10%;">
						<table class="table" id="customerlisttable">
							<thead class="table-header-bg" style="background-color: #e6e6fa">
								<tr>
									<th style="width: 2%;"></th>
									<th style="width: 5%;"></th>
									<th style="width: 20%;"><center>상품명</center></th>
									<th style="width: 8%;"><center>수량</center></th>
									<th style="width: 8%;"><center>금액</center></th>
								</tr>
							</thead>
							<tbody id="cart" class="table-body-row">
								<tr th:each="result : ${cartListResult}">
									<td class="product_choice" style="vertical-align: middle"><center>
											<input type="checkbox" name="cartListBox"
												th:value="${result.cartNumber}">
										</center></td>
									<td class="product_img" style="vertical-align: middle"
										th:text="${result.cartNumber}"><center>
											<img src="../images/아이쉐도우1.png" width=100 height=50>
										</center></td>
									<td class="product_name" style="vertical-align: middle"
										th:text="${result.productName}"><center></center></td>
									<td class="Quantity" style="vertical-align: middle"
										th:text="${result.Quantity}"></td>
									<td class="Price" style="vertical-align: middle"
										th:text="${result.price}"></td>
								</tr>
							</tbody>
						</table>

						<label for="all_price"
							style="text-align: right; border: 1px solid black; width: 100%; height: 35px; font-weight: bold;">상품금액
							변수 + 배송비 변수 = 총 금액변수</label>
						<div class="shopping container col-lg-1"
							style="padding-top: 7%; align: right">
							<input type="button" value="계속 쇼핑하기" onclick="location.href='eye_product_list'">
						</div>
						<div class="pay container col-lg-2"
							style="padding-top: 7%; align: right">
							<input type="button" value="결제" onclick="결제 넘어가는 부분">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br/><br/><br/><br/><br/><br/><br/>
	<%@ include file="./footer.jsp"%>
</body>

</html>
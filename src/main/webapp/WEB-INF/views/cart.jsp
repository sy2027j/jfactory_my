<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
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
  	
  	<c:if test="${member == null }">
  		<script type="text/javascript">
  			alert("로그인 하세요.");
  			window.location = '/ex/login';
		</script>
  	
  	</c:if>
  	
            <div id="layoutSidenav_content">
                <main><br/>
                    <div class="container-fluid" style="float:center">
                        <h3 class="mt-4" style="text-align:center">장바구니</h3> 
                      </div>
                      <br>
                      <button type="button" style="float:left; background-color:#e6e6fa; color:black; border-color:#e6e6fa" class="btn btn-primary" onclick="location.href='cm_qna_write'">선택</button><br/>
                            <div class="memberManager">   
                        <br/>
                        <div class="form-group">
            <input class="form-control" type="hidden" id="mem_id" name="mem_id" value="${member.mem_id }"> </div>
                        <table class="table" id="qnalist" style="table-layout:fixed;">
                              <thead class="table-header-bg" style="background-color: #e6e6fa">
                              <tr>
									<th style="width: 2%;"></th>
									<th style="width: 5%;"></th>
									<th style="width: 20%;">상품명</th>
									<th style="width: 8%;">수량</th>
									<th style="width: 8%;">금액</th>
								</tr>
								</thead>
                              <tbody id="cart" class="table-body-row">
								<tr th:each="result : ${cartListResult}">
									<td class="product_choice" style="vertical-align: middle">
											<input type="checkbox" name="cartListBox">
										</td>
									<td class="product_img" style="vertical-align: middle"
										th:text="${result.cartNumber}">
											<img src="../images/아이쉐도우1.png" width=100 height=50>
										</td>
									<td class="product_name" style="vertical-align: middle"
										th:text="${result.productName}"><center></center></td>
									<td class="Quantity" style="vertical-align: middle"
										th:text="${result.Quantity}"></td>
									<td class="Price" style="vertical-align: middle"
										th:text="${result.price}"></td>
								</tr>
                        </tbody>
						</table>
                     </div>
                     
                     <div>
                     <hr>
                     <label for="all_price" style="text-align: right; width: 100%; height: 25px; font-weight: bold;">
                     상품금액 변수 + 배송비 변수 = 총 금액변수
                     </label>
                     <hr>
                     </div>
                     
                     <br/>
                     
	<div  align="center">
      <button style="border-color:white; background-color:#e6e6fa; font-size:15px; color:black; WIDTH: 100pt; HEIGHT: 30pt" type="button" class="btn btn-secondary btn-lg">주문 결제하기</button>
      <button style="border-color:white; background-color:black; font-size:15px; color:white; WIDTH: 100pt; HEIGHT: 30pt " type="button" class="btn btn-secondary btn-lg" onclick="location.href='eye_product_list'">계속 쇼핑하기</button>
    </div>
                     </main>
                        </div>
                    </div>
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                
<%@ include file="./footer.jsp" %>
</body>
</html>
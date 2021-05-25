 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
<div class="container">

 <div class="col-sm-8">
      <h2>주문내역</h2>
      <hr>
       <div class="mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1" ></i>
                                	장바구니
                            </div>
                            <div class="memberManager">    
								<table class="table table-hover" id="memberList">  
									<thead>
										<tr>
											<th>구매날짜</th>
											<th>상품명</th>
											<th>수량</th>  
											<th>금액</th>
											<th>주문상태</th>
											
										</tr>
									</thead>
										<tbody>
											
									</tbody>
								</table>
							</div>
		  </div>
		   
		</div>
	</div>
	</div>
	  <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

<%@ include file="./footer.jsp"%>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>    
<!DOCTYPE html>
<html lang="en">
<body>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">주문조회</h1> 
                        	    <form method="get" action="SelectServlet" class="form-inline" style="font-size:15pt">
								      <select id="select" name="select" size="1">
								         <option value="정렬">ID</option>
								         <option value="ID">ID</option>
								         <option value="이름">이름</option>
								         <option value="전화번호">전화번호</option>
								      </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     							 <input style="width:500px;height:35px;"" type="text" placeholder="검색창" >&nbsp;
      								<button class="btn btn-secondary" type="submit"><span style="font-size:15pt">검색</span></button>
    						</form>
                      </div>
                      <br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                	주문차트
                            </div>
                            <div class="memberManager">    
								<table class="table table-hover" id="orderList">  
									<thead>
										<tr>
											<th>ID</th>
											<th>이름</th>
											<th>번호</th>  
											<th>주문 제품</th>
											<th>주문 날짜</th>
											<th>가격</th>
										</tr>
									</thead>
										<tbody>
										<tr>
											<td>BBBBB</td>
											<td>임연희</td>
											<td>01033333333</td>
											<td>발그레 복숭아 뀨 블러셔</td>
											<td>21.04.02</td>
											<td>3,000</td>
										</tr>	
									</tbody>
								</table>
							</div>
                        </div>
                    </div>
                </main>
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<body>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">재고관리</h1> 
                        	    <form method="get" action="SelectServlet" class="form-inline" style="font-size:15pt">
								      <select id="select" name="select" size="1">
								         <option value="정렬">카테고리</option>
								         <option value="ID">제품명</option>
								      </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     							 <input style="width:500px;height:35px;"" type="text" placeholder="검색창" >&nbsp;
      								<button class="btn btn-secondary" type="submit"><span style="font-size:15pt">검색</span></button>
    						</form>
                      </div>
                      <br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                	재고 관리
                            </div>
                            <div class="memberManager">    
								<table class="table table-hover" id="memberList">  
									<thead>
										<tr>
											<th>등록날짜</th>
											<th>카테고리</th>
											<th>제품명</th>  
											<th>재고수</th>
										</tr>
									</thead>
										<tbody>
										<c:forEach items="${StockList}" var="stocklist"> 
										<tr>
											<td><c:out value="${stocklist.getPd_datetime() }"/></td>
											<td><c:out value="${stocklist.getPd_category() }"/></td>
											<td><c:out value="${stocklist.getPd_name() }"/></td>
											<td><c:out value="${stocklist.getPd_stock() }"/></td>
										</tr>	
										</c:forEach>
									</tbody>
								</table>
								
							</div>
                        </div>
                        		<button type="button" class="btn btn-primary">변경</button>
                   				<button type="button" class="btn btn-danger">삭제</button>
                    </div>
                </main>
    </body>
</html>

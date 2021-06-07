<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
p {
   margin: 20px 0px;
}

div.box-footer {
   position: absolute;
   left: 43%;
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
            <h1 class="mt-4">상품 관리</h1>
            <form method="get" action="SelectServlet" class="form-inline"
               style="font-size: 15pt">
               <select id="select" name="select" size="1">
                  <option value="정렬">카테고리</option>
                  <option value="ID">제품명</option>
               </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
                  style="width: 500px; height: 35px;" " type="text"
                  placeholder="검색창">&nbsp;
               <button class="btn btn-secondary" type="submit">
                  <span style="font-size: 15pt">검색</span>
               </button>
            </form>
         </div>
         <br>
         <div class="card mb-4">
            <div class="card-header">
               <i class="fas fa-table mr-1"></i> 재고 관리
            </div>
            <div class="memberManager">
               <table class="table table-hover" id="memberList">
                  <thead>
                     <tr style="text-align: center">
                        <th style="text-align: center">등록날짜</th>
                        <th style="text-align: center">카테고리</th>
                        <th style="text-align: center">제품명</th>
                        <th style="text-align: center">삭제</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${StockList}" var="stocklist">
                        <tr>
                           <td style="text-align: center"
                              onClick="window.open('/ex/product_detail?pd_name=${stocklist.getPd_name()}', '상품 관리');"><c:out
                                 value="${stocklist.getPd_datetime() }" /></td>
                           <td style="text-align: center"
                              onClick="window.open('/ex/product_detail?pd_name=${stocklist.getPd_name()}', '상품 관리');"><c:out
                                 value="${stocklist.getPd_category() }" /></td>
                           <td style="text-align: center"
                              onClick="window.open('/ex/product_detail?pd_name=${stocklist.getPd_name()}', '상품 관리');"><c:out
                                 value="${stocklist.getPd_name() }" /></td>
                           <td style="text-align: center; vertical-align: middle"><a
                              href="delete_product?pd_name=${stocklist.getPd_name()}">삭제</a></td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
               <div class="box-footer">
                  <div class="text-center">
                     <ul class="pagination">
                        <!-- 이전prev -->
                        <c:if test="${pm.prev }">
                           <li class="page-item"><a class="page-link"
                              href="pd_index?page=${pm.startPage-1}">&laquo;</a></li>
                        </c:if>
                        <!-- 페이지블럭 -->
                        <c:forEach var="idx" begin="${pm.startPage }"
                           end="${pm.endPage }">
                           <li class="page-item"><a class="page-link"
                              href="pd_index?page=${idx }">${idx}</a></li>
                        </c:forEach>
                        <!-- 다음next -->
                        <c:if test="${pm.next && pm.endPage > 0}">
                           <li class="page-item"><a class="page-link"
                              href="pd_index?page=${pm.endPage+1}">&raquo;</a></li>
                        </c:if>
                     </ul>
                  </div>
               </div> 
            </div>
         </div>
         <button type="button" class="btn btn-primary">변경</button>
         <button type="button" class="btn btn-danger">삭제</button>
   </div>
</body>
</html>
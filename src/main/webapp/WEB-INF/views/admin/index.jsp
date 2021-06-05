<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
p {
   margin: 20px 0px;
}
div.box-footer{
    position: absolute;
    left: 50%;
    margin-top: 2%; 
}

div.row{
padding-bottom: 5%;
}
</style>

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
                  style="width: 500px; height: 35px;" type="text" placeholder="검색창">&nbsp;
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
                        <tr
                           onClick="window.open('member_detail?mem_id=${member.getmem_id()}', '회원 상세 정보', 'width=600, height=700, left=100, top=50');">
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
               <div class="box-footer">
                  <div class="text-center">
                     <ul class="pagination">
                        <!-- 이전prev -->
                        <c:if test="${pm.prev }">
                           <li class="page-item"><a class="page-link"
                              href="index?page=${pm.startPage-1}">&laquo;</a></li>
                        </c:if>
                        <!-- 페이지블럭 -->
                        <c:forEach var="idx" begin="${pm.startPage }"
                           end="${pm.endPage }">
                           <li class="page-item"><a class="page-link"
                              href="index?page=${idx }">${idx}</a></li>
                        </c:forEach>
                        <!-- 다음next -->
                        <c:if test="${pm.next && pm.endPage > 0}">
                           <li class="page-item"><a class="page-link"
                              href="index?page=${pm.endPage+1}">&raquo;</a></li>
                        </c:if>
                     </ul>
                  </div>
               </div>

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
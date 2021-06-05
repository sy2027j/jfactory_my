<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<head>
<link href='<c:url value="/resources/css/styles.css"/>' rel="stylesheet">
<link
   href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
   rel="stylesheet" crossorigin="anonymous" />
<title>관리자 등록</title>
</head>
<body>
   <br />

   <div class="container-fluid">
      <form method="get" action="SelectServlet" class="form-inline"
         style="font-size: 15pt">
         <select id="select" name="select" size="1">
            <option value="정렬">ID</option>
            <option value="ID">ID</option>
            <option value="이름">이름</option>
            <option value="전화번호">전화번호</option>
         </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
            style="width: 300px; height: 35px;" " type="text" placeholder="검색창">&nbsp;
      </form>
   </div>
   <br>
   <div class="card mb-4">
      <div class="memberManager">
         <table class="table table-hover" id="adminMemberList"
            style="width: 800px; table-layout: fixed;">
            <thead>
               <tr>
                  <th>ID</th>
                  <th>이름</th>
                  <th>번호</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${List2}" var="member">
                  <tr
                     onclick="window.open('admin_addcheck?mem_id=${member.getmem_id()}','관리자 추가하기','width=400, height=200');">
                     <td><c:out value="${member.getmem_id() }" /></td>
                     <td><c:out value="${member.getMem_realname() }" /></td>
                     <td><c:out
                           value="${member.getMem_phone() }-${member.getMem_phone1() }-${member.getMem_phone2() }" /></td>

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
                        href="admin_addlist?page=${pm.startPage-1}">&laquo;</a></li>
                  </c:if>
                  <!-- 페이지블럭 -->
                  <c:forEach var="idx" begin="${pm.startPage }" end="${pm.endPage }">
                     <li class="page-item"><a class="page-link"
                        href="admin_addlist?page=${idx }">${idx}</a></li>
                  </c:forEach>
                  <!-- 다음next -->
                  <c:if test="${pm.next && pm.endPage > 0}">
                     <li class="page-item"><a class="page-link"
                        href="admin_addlist?page=${pm.endPage+1}">&raquo;</a></li>
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
   <button type="button" id="back_Btn"
      onclick="location.href=window.close()">취소</button>

</body>
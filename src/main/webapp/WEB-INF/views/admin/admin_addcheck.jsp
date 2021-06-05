<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href='<c:url value="/resources/css/styles.css"/>' rel="stylesheet">
<link
   href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
   rel="stylesheet" crossorigin="anonymous" />
<title>관리자 등록 확인</title>
</head>
<body>
   <%
   String mem_id = request.getParameter("mem_id");
   %>
   <br />
   <!-- 메인 관리자 세션이 아니면 권한 없다고 뜨기 -->
   <form id="admin_addcheck" name="admin_addcheck" method="post"
      action=admin_addcheck>
      <div class="container-fluid">
         <div>
            <h4>관리자로 등록하시겠습니까?</h4>
         </div>
         <br>
         <div class="card mb-4">
            <div class="memberManager">
               <input type="hidden" name="mem_id" id="mem_id" value="<%=mem_id%>">
            </div>
         </div>
      </div>
      <br>

      <button type="button" id="button" onclick="AddAdmin();">추가</button>

      <button type="button" id="back_Btn"
         onclick="location.href=window.close()">취소</button>
   </form>

   <script type="text/javascript">
      function AddAdmin() {
         document.admin_addcheck.submit();
      }
   </script>
</body>
</html>
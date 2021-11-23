<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./Header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<div id="layoutSidenav_content">
   <main>
      <div class="container-fluid">
         <h1 class="mt-4">관리자 조회</h1>
         <div class="input-group">
            <form method="get" action="adminSearch" class="form-inline"
               style="font-size: 15pt">
               <select id="searchType" name="searchType" size="1">
                  <option value="mem_id">ID</option>
                  <option value="mem_realname">이름</option>
                  <option value="mem_email">이메일</option>
                  <option value="all">전체</option>
               </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               <input id="keyword" name="keyword"
                  style="width: 500px; height: 35px;" " type="text"
                  placeholder="검색창">&nbsp;
            <button class="btn btn-secondary" type="submit">
               <span style="font-size: 15pt">검색</span>
            </button>
            &nbsp;
            <c:if test="${ superadmin != null }">
            <button class="btn btn-secondary" type="button"
               onclick="window.open('admin_addlist','회원 목록','width=500, height=600');">
               <span style="font-size: 15pt">불러오기</span>
            </button>
            </c:if>
            &nbsp;
            <button class="btn btn-secondary" type="submit">
               <span style="font-size: 15pt">삭제</span>
            </button>
            </form>
         </div>
      </div>
      <br>
      <div class="card mb-4">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 관리자 차트
         </div>
         <div class="memberManager">
            <table class="table table-hover" id="adminMemberList">
                  <tr>
                     <th>권한</th>
                     <th>ID</th>
                     <th>이메일</th>
                     <th>이름</th>
                     <th>생년월일</th>
                     <th>번호</th>
                  </tr>
                  <c:forEach items="${AdminList}" var="admin">
                     <tr 
                     onClick="window.open('admin_detail?mem_id=${member.getmem_id()}', '회원 상세 정보', 'width=520, height=460, left=100, top=50');">
                        <td><c:out value="${admin.getMem_is_admin()}"/></td>
                        <td><c:out value="${admin.getmem_id()}"/></td>
                        <td><c:out value="${admin.getMem_email() }"/></td>
                        <td><c:out value="${admin.getMem_realname() }"/></td>
                        <td><c:out value="${admin.getMem_birth_year() }.${admin.getMem_birth_month() }.${admin.getMem_birth_day() }"/></td>
                        <td><c:out value="0${admin.getMem_phone() }-${admin.getMem_phone1() }-${admin.getMem_phone2() }"/></td>
                     </tr>
                  </c:forEach>
            </table>
         </div>
      </div>
      
</div>
</main>
</body>
</html>

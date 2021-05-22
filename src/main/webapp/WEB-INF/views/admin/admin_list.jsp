<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html lang="en">
    <head>
        <link href='<c:url value="/resources/css/styles.css"/>' rel="stylesheet">
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <title>관리자 목록 불러오기</title>
    </head>
    <body>
    <br/>
    	<h3>관리자 추가 / 삭제 </h3>
    	<br>
    		<h6>회원 목록</h6> 
    	<br>
    	  <div class="container-fluid">
                        	    <form method="get" action="SelectServlet" class="form-inline" style="font-size:15pt">
								      <select id="select" name="select" size="1">
								         <option value="정렬">ID</option>
								         <option value="ID">ID</option>
								         <option value="이름">이름</option>
								         <option value="전화번호">전화번호</option>
								      </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     							 <input style="width:500px;height:35px;"" type="text" placeholder="검색창" >&nbsp;
      								<button class="btn btn-secondary" type="submit"><span style="font-size:15pt">추가</span></button>
    						</form>
                      </div>
                      <br>
                        <div class="card mb-4">
                                 <div class="memberManager">    
								<table class="table table-hover" id="adminMemberList" style="width:800px; table-layout:fixed;">  
									<thead>
										<tr>
											<th>ID</th>
											<th>이름</th> 
											<th>번호</th>
										</tr>
									</thead>
										<tbody>
										<c:forEach items="${List2}" var="member">
								<td><c:out value="${member.getmem_id() }"/></td>
								<td><c:out value="${member.getMem_realname() }"/></td>
								<td><c:out value="${member.getMem_phone() }-${member.getMem_phone1() }-${member.getMem_phone2() }"/></td>
								
							</tr>
						</c:forEach>
											
									</tbody>
								</table>
							</div>
                        </div>
                    </div>
		<button type="submit" id="back_Btn" onclick="location.href='admin_index'">취소</button> 
		
    </body>
            
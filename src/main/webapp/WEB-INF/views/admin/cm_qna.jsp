<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <body><br/><br/>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Q&A</h1> 
                        	    <form method="get" action="SelectServlet" class="form-inline" style="font-size:15pt">
								      <select id="select" name="select" size="1">
								         <option value="ID">작성자</option>
								      </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     							 <input style="width:500px;height:35px;" type="text" placeholder="검색창" >&nbsp;
      								<button class="btn btn-secondary" type="submit"><span style="font-size:15pt">검색</span></button>
    						</form>
                      </div>
                      <br>
                           <div class="col-lg-12"> 
                           <div class="card"> 
                           <div class="card-header"> 
                           <h3 class="card-title">게시글 목록</h3> </div> 
                           	<div class="card-body"> 
                           	<table class="table table-bordered"> 
                           	<tbody> 
                           		<tr> 
                           		<th style="width:100px">제목</th> 
                           		<th style="width: 100px">작성자</th> 
                           		<th style="width: 80px">작성일</th>
                           		<th style="width: 60px">답변상태</th> 
                           		</tr> 
                           		
                           		<c:forEach items="${QnaList}" var="qnalist"> 
                           		<tr> 
                           		<td><a style="color:black; text-decoration:none "href="admin_cm_qna_view?qna_no=${qnalist.getQna_no()}"><c:out value="${qnalist.getQna_title()}"/></a></td>
								<td><c:out value="${qnalist.getmem_id() }"/></td>
								<td><c:out value="${qnalist.getQna_datetime() }"/></td>
								<td><c:if test="${qnalist.getQna_response() eq 1}"><span style="color:blue">답변완료</span></c:if>
									<c:if test="${qnalist.getQna_response() eq 0}"><span style="color:red">답변아직</span></c:if></td>
                           		</tr> 
                           		</c:forEach>
                           		
                           		</tbody> 
                           		</table> 
                           		
                           		</div>
                           		<div class="card-footer"> 
                           		<div class="float-right"> 
                           		<button type="button" class="btn btn-success btn-flat" id="writeBtn" onclick="location.href='write_notice'"><i class="fa fa-pencil"></i> 글쓰기 </button> 
                           		</div> 
                           		</div> 
                           		</div> 
                           		</div>
                        </div>
                </main>
    </body>
</html>

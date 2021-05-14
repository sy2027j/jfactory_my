<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <body>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Q&A</h1> 
                        	    <form method="get" action="SelectServlet" class="form-inline" style="font-size:15pt">
								      <select id="select" name="select" size="1">
								         <option value="ID">작성자</option>
								      </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     							 <input style="width:500px;height:35px;"" type="text" placeholder="검색창" >&nbsp;
      								<button class="btn btn-secondary" type="submit"><span style="font-size:15pt">검색</span></button>
    						</form>
                      </div>
                      <br>
                           <div class="col-lg-12"> 
                           <div class="card"> 
                           <div class="card-header"> 
                           <h3 class="card-title">게시글 목록</h3> </div> 
                           	<div class="card-body"> <table class="table table-bordered"> <tbody> 
                           		<tr> <th style="width: 30px">#</th> 
                           		<th>제목</th> 
                           		<th style="width: 100px">작성자</th> 
                           		<th style="width: 150px">작성시간</th>
                           		<th style="width: 60px">조회</th> </tr> 
                           		<c:forEach items="${articles}" var="article"> <tr> 
                           		<td>${article.article_no}</td> 
                           		<td><a href="${path}/article/read?article_no=${article.article_no}">${article.title}</a></td> 
                           		<td>${article.writer}</td> <td><fmt:formatDate value="${article.regDate}" pattern="yyyy-MM-dd a HH:mm"/></td> 
                           		<td><span class="badge bg-red">${article.viewCnt}</span></td> </tr> </c:forEach>
                           		</tbody> 
                           		</table> 
                           		</div>
                           		<div class="card-footer"> 
                           		<div class="float-right"> 
                           		<button type="button" class="btn btn-success btn-flat" id="writeBtn"> 
                           		<i class="fa fa-pencil"></i> 글쓰기 </button> 
                           		</div> 
                           		</div> 
                           		</div> 
                           		</div>
                        </div>
                </main>
    </body>
</html>

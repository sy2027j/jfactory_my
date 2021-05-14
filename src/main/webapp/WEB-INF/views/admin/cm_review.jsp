<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
		<body>
            <div id="layoutSidenav_content">
                <main>
                <br>
                    <div class="container-fluid">
                        	    <form method="get" action="SelectServlet" class="form-inline" style="font-size:15pt">
								      <select id="select" name="select" size="1">
								         <option value="ID">만족도순</option>
								         <option value="ID">조회순</option>
								      </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    						</form>
                      </div>
                      <br>
                           <div class="col-lg-12"> 
                           <div class="card"> 
                           <div class="card-header"> 
                           <h3 class="card-title">REVIEW</h3> </div> 
                           	<div class="card-body"> <table class="table table-bordered"> <tbody> 
                           		<tr> <th style="width: 300px">제품명</th> 
                           		<th style="width: 300px">글제목</th> 
                           		<th style="width: 100px">작성자</th> 
                           		<th style="width: 150px">작성일</th>
                           		<th style="width: 100px">조회수</th>
                           		<th style="width: 100px">만족도</th> </tr> 
                           		<c:forEach items="${articles}" var="article"> <tr> 
                           		<td>${article.article_no}</td> 
                           		<td><a href="${path}/article/read?article_no=${article.article_no}">${article.title}</a></td> 
                           		<td>${article.writer}</td> <td><fmt:formatDate value="${article.regDate}" pattern="yyyy-MM-dd a HH:mm"/></td> 
                           		<td><span class="badge bg-red">${article.viewCnt}</span></td>
                           		<td><span class="badge bg-red">${article.viewCnt}</span></td> </tr> </c:forEach>
                           		</tbody> 
                           		</table> 
                           		</div>
                           		</div> 
                           		</div>

                        </div>
                </main>
    </body>
</html>

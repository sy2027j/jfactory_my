<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th {
    background-color: #e6e6fa;
    text-align: center;
  }
  td {
  	text-align: center;
  }
</style>
  
  	<div class="container">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Q&A</h1> 
                      </div>
                      <br>
                            <div class="memberManager">    
                        <table class="table table-hover" id="qnalist" style="table-layout:fixed;">
                              <tr>
                                 <th>제목</th>
                                 <th>작성자</th>
                                 <th>작성일</th>  
                                 <th>답변상태</th>
                              </tr>
                              <tr>
                                 <c:forEach items="${QnaList}" var="qnalist">
							<tr>
								<td><c:out value="${qnalist.getQna_title()}"/></td>
								<td><c:out value="${qnalist.getmem_id() }"/></td>
								<td><c:out value="${qnalist.getQna_datetime() }"/></td>
								<td><c:out value="${qnalist.getQna_response() }"/></td>
							</tr>
						</c:forEach>
                              </tr>   
                        </table>
                        
                     </div>
                        </div>
                         <button type="button" style="float:right; background-color:#e6e6fa; color:black; border-color:#e6e6fa" class="btn btn-primary" onclick="location.href='cm_qna_write'">글쓰기</button>
                    </div>
                </main>
                
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                
<%@ include file="./footer.jsp" %>
</body>
</html>
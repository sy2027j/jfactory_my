<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
  
  	<div class="container">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Q&A</h1> 
                      </div>
                      <br>
                            <div class="memberManager">    
                        <table class="table table-hover" id="memberList">  
                           <thead>
                              <tr>
                                 <th>제목/상품</th>
                                 <th>작성자</th>
                                 <th>작성일</th>  
                                 <th>답변상태</th>
                              </tr>
                           </thead>
                              <tbody>
                              <tr>
                                 <td>FAQ</td>
                                 <td>관리자</td>
                                 <td>작성일</td>
                                 <td>완료</td>
                              </tr>   
                           </tbody>
                        </table>
                        
                     </div>
                        </div>
                         <button type="button" class="btn btn-primary" onclick="location.href='cm_qna_write'">글쓰기</button>
                    </div>
                </main>
                
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                
<%@ include file="./footer.jsp" %>
</body>
</html>
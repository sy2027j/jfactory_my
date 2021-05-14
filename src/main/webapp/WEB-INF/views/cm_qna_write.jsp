<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <hr>
  
  	<div class="container">
  	
  	<div class="container-fluid">
                        <h1 class="mt-4">Q&A</h1> <br/>
                      </div>
            <div class="col-lg-12"> 
            <form role="form" id="writeForm" method="post" action="${path}/article/modify"> 
            <div class="card"> <div class="card-header"> 
            <h3 class="card-title">게시글 작성</h3> </div> <div class="card-body"> 
            <input type="hidden" name="article_no" value="${article.article_no}"> 
            <div class="form-group"> <label for="title">제목</label> 
            <input class="form-control" id="title" name="title" placeholder="제목을 입력해주세요" value="${article.title}"> </div> 
            <div class="form-group"> <label for="writer">카테고리</label> <br/>
           <form method="get" action="SelectServlet">
		<select id="select" name="select" size="1" style="width:1040px;height:40px;" class="form-control">
			<option value="정렬">문의 종류를 선택해주세요.</option>
			<option value="주문 많은 순">제품 문의</option>
			<option value="리뷰 많은 순">배송 문의</option>
			<option value="가격 높은 순">반품 문의</option>
			<option value="가격 낮은 순">기타 문의</option>
		</select> </form></div> 
            <div class="form-group"> <label for="content">내용</label> 
            <textarea class="form-control" id="content" name="content" rows="30" placeholder="내용을 입력해주세요" style="resize: none;">${article.content}</textarea> </div> 
            </div> <div class="card-footer">
            <div class="float-right"> <button type="button" class="btn btn-warning cancelBtn"><i class="fa fa-trash"></i> 취소</button> 
           
            <button type="submit" class="btn btn-success modBtn"><i class="fa fa-save"></i>등록</button>
            
             </div> </div> </div> </form>
            
            
             </div>
                        
                    </div>
             <br/> 
                

<%@ include file="./footer.jsp" %>
</body>
</html>
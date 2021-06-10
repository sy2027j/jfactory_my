<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <hr>
  
  	<div class="container">
  	<c:if test="${member == null }">
  		<script type="text/javascript">
  			alert("로그인 하세요.");
  			window.location = '/ex/login';
		</script>
  	
  	</c:if>
  	<c:if test="${ member != null }">
  	<div class="container-fluid">
                        <h1 class="mt-4">Q&A</h1> <br/>
                      </div>
            <div class="col-lg-12"> 
            <form role="form" id="writeForm" method="post" action="cm_qna_write"> 
            <div class="card"> <div class="card-header"> 
            <h3 class="card-title">게시글 작성</h3> </div> <div class="card-body"> 
            <input type="hidden" name="article_no"> 
            <div class="form-group">
            <input class="form-control" type="hidden" id="mem_id" name="mem_id" value="${member.mem_id }"> </div> 
            <div class="form-group"> <label for="title">제목</label> 
            <input class="form-control" id="qna_title" name="qna_title" placeholder="제목을 입력해주세요" autocomplete="off"> </div> 
            <div class="form-group"> <label for="writer">카테고리</label> <br/>
		<select id="qna_category" name="qna_category" size="1" style="width:1040px;height:40px;" class="form-control">
			<option value="">문의 종류를 선택해주세요.</option>
			<option value="제품 문의">제품 문의</option>
			<option value="배송 문의">배송 문의</option>
			<option value="반품 문의">반품 문의</option>
			<option value="기타 문의">기타 문의</option>
		</select></div> 
            <div class="form-group"> <label for="content">내용</label> 
            <textarea class="form-control" id="qna_content" name="qna_content" placeholder="내용을 입력해주세요" style="resize: none; height:500px"></textarea></div> 
            </div> <div class="card-footer">
            <div class="float-right"> <button type="button" class="btn btn-warning cancelBtn"><i class="fa fa-trash"></i> 취소</button> 
           
            <button type="submit" class="btn btn-success modBtn">등록</button>
            
             </div> </div> </div> </form>
            
            
             </div>
                       </c:if>
                    </div>
             <br/> 
                

<%@ include file="./footer.jsp" %>
</body>
</html>
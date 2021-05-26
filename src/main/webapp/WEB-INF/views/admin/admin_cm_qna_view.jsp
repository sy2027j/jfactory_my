<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<hr>
<style>
table {
    width: 100%;
    border-top: 1px solid #444444;
    table-layout:fixed;
    border-spacing:30px;
  }
  th {
  	padding:100px;
  	height:100%;
    background-color: #e6e6fa;
    text-align: center;
  }
  td {
  	padding:100px;
  	text-align: left;
  }
  a{
  	color:black;
  }
</style>
<div class="container">
	<div class="container-fluid">
		<h1>Q&A</h1>
		<br />
	</div>
	<div class="col-lg-12">

		<div class="card"> 
            <div class="card-header"> 
            <h3 class="card-title">게시글 조회</h3> 
            </div> 
            <form action="reply_qna" id="replyqna" name="replyqna">
            <div class="card-body"> 
            <input type="hidden" name="qna_no" id="qna_no" value="${Qnadetail.getQna_no()}" > 
            <div class="form-group"> 
            <label for="title">작성자</label> 
            <input class="form-control" id="mem_id" name="mem_id" style="background-color:white;" value="${Qnadetail.getmem_id() }" readonly> 
            </div> 
            <div class="form-group"> 
            <label for="title">제목</label> 
            <input class="form-control" id="qna_title" name="qna_title" style="background-color:white;" value="${Qnadetail.getQna_title() }"readonly> 
            </div> 
            <div class="form-group"> 
            <label for="writer">카테고리</label> 
            <input class="form-control" id="qna_category" name="qna_category" style="background-color:white;" value="${Qnadetail.getQna_category() }"readonly>
			</div> 
            <div class="form-group"> 
            <label for="content">내용</label> 
            <textarea class="form-control" id="qna_content" name="qna_content" style="background-color:white; resize: none; height:500px"readonly>${Qnadetail.getQna_content() }</textarea>
            </div> 
            <div class="form-group"> 
            <label for="content">답변</label> 
            <textarea class="form-control" id="qna_reply_content" name="qna_reply_content" style="background-color:white; resize: none; height:500px">${Qnadetail.getQna_reply_content() }</textarea>
            </div> 
            </div> 
            
            <div class="card-footer">
            <div align="center"> 
            <button type="button" class="btn" onclick="Reply_qna();"><i class="fa fa-check-circle-o"></i> 답변작성</button> 
            
            <button type="button" class="btn" onclick="location.href='cm_qna'"><i class="fa fa-times-circle"></i> 돌아가기</button>
            </div> 
            </div> 
            </form>
            </div><br/><br/>
	</div>
</div>
<br />

<script type="text/javascript">
  function Reply_qna(){
	  var qna_reply_content=document.getElementById("qna_reply_content");
	  
  
  if(qna_reply_content.value==""){
	  alert("상품명을 작성하세요.");
	  qna_reply_content.focus();
	  return false;
  };
  
  	document.replyqna.submit();
  }
  </script>
</body>
</html>
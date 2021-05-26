<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <body><br/><br/>
            <div id="layoutSidenav_content">
                <main>
  
  	<div class="container">
  	
  		<div class="container-fluid">
            <h1 class="mt-4">NOTICE / FAQ</h1> <br/>
        </div>
        
            <div class="col-lg-12"> 
            <form role="form" id="writeForm" method="post" action="write_notice"> 
            <div class="card"> 
            
            <div class="card-header"> 
            <h3 class="card-title">공지/FAQ 작성</h3> 
            </div> 
            
            <div class="card-body"> 
            <input type="hidden" name="article_no"> 
            <div class="form-group">
            <input class="form-control" type="hidden" id="mem_id" name="mem_id" value="JFACTORY"> </div> 
            <div class="form-group"> <label for="title">제목</label> 
            <input class="form-control" id="qna_title" name="qna_title" placeholder="제목을 입력해주세요"> </div>
            <div class="form-group"> <label for="content">내용</label> 
            <textarea class="form-control" id="qna_content" name="qna_content" placeholder="내용을 입력해주세요" style="resize: none; height:500px"></textarea></div> 
            </div> 
            
            <div class="card-footer">
            <div class="float-right"> 
            <button type="button" class="btn btn-warning cancelBtn" onclick="location.href='cm_qna'"><i class="fa fa-trash"></i> 취소</button> 
            <button type="submit" class="btn btn-success modBtn">등록</button>
            </div> 
            </div> 
            
            </div> 
            </form>
            </div>
            
            </div></main></div>
             <br/> 
</body>
</html>
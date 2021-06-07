<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">

  <hr>
  
  <header>
    
  </header>
  	<div class="container">
  	
  	<div class="container-fluid">
                        <h1 class="mt-4">REVIEW</h1> <br/>
                      </div>
            <div class="col-lg-12"> 
            <div class="card"> <div class="card-header"> 
            <h3 class="card-title">리뷰 조회</h3> </div> <div class="card-body"> 
            <input type="hidden" name="article_no" value="${article.article_no}"> 
            <div class="form-group"> <label for="title">작성자</label> 
            <input class="form-control" id="mem_id" name="mem_id" value="${Redetail.getMem_id()}" style="background-color:white;" readonly> </div> 
            <div class="form-group"> <label for="title">제목</label> 
            <input class="form-control" id="re_title" name="re_title" placeholder="제목을 입력해주세요" value="${Redetail.getRe_title()}"style="background-color:white;"readonly> </div> 
            <div class="form-group"> <label for="writer">제품명</label> <br/>
            <input class="form-control" id="re_title" name="re_title" placeholder="제목을 입력해주세요" value="${Redetail.getPd_name()}"style="background-color:white;"readonly>
			</div> 
			<div class="form-group"> <label for="title">만족도</label> <br/>
			<label class="form-control" id="re_score" name="re_score">${Redetail.getRe_score() }점</label>
            </div>  
            <input type="hidden" name="re_score" id="re_score" value=""> 
            
            <div class="form-group"> <label for="content">내용</label> 
            <textarea class="form-control" id="re_content" name="re_content" rows="30" placeholder="내용을 입력해주세요" style="resize: none; background-color:white;"readonly>${Redetail.getRe_content()}</textarea> </div> 
            
            <div class="inputArea">
 			<label for="gdsImg">이미지</label><br/>
 			<img src = '<c:url value="/resources/image/review/${Redetail.getRe_stored_file() }"/>' width="500px" >
			</div>
            
            </div> <div class="card-footer">
            <div class="float-right"> <button type="button" class="btn" onclick="location.href='review'"><i class="fa fa-trash"></i>돌아가기</button> 
            
             </div> </div> </div>
            
            
             </div>
                        
                    </div>
             <br/> 
                  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/js/jquery-1.11.3.min.js"></script>
  <script src="resources/js/star.js"></script>
  
  <script type="text/javascript">
  function getGender(){
	  var re_title=document.getElementById("re_title");
	  var re_content=document.getElementById("re_content");
	  var d=document.getElementById("d");
	  
  var obj_length = document.getElementsByName("starscore").length;
  
  for (var i=0; i<obj_length; i++) {
      if (document.getElementsByName("starscore")[i].checked == true) {
    	  $("#re_score").attr("value", document.getElementsByName("starscore")[i].value);
      }}
  
  var re_score=document.getElementById("re_score");
  
  if(re_title.value==""){
	  alert("제목을 입력하세요.");
	  re_title.focus();
	  return false;
  };
  
  if(re_score.value==""){
	  alert("만족도를 선택하세요.");
	  re_score.focus();
	  return false;
  };
  
  if(re_content.value==""){
	  alert("내용을 입력하세요.");
	  re_content.focus();
	  return false;
  };
  
  	document.writeForm.submit();
  }
  </script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">

  <hr>
  
  <header>
    
  </header>
  	<div class="container">
  <!-- 
  	<div class="container-fluid">
                        <h1 class="mt-4">REVIEW</h1> <br/>
                      </div> -->	
            <div class="col-lg-12"> 
            
            <!--  
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
			<span class="star-input">
  				<span class="input">
  					<c:if test="${Redetail.getRe_score() eq '0'}"><input type="radio" name="starscore" id="p0" value="0" <c:if test="${Redetail.getRe_score() eq '0'}">checked</c:if>><label for="p0"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '1'}"><input type="radio" name="starscore" id="p1" value="1" <c:if test="${Redetail.getRe_score() eq '1'}">checked</c:if>><label for="p1"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '2'}"><input type="radio" name="starscore" id="p2" value="2" <c:if test="${Redetail.getRe_score() eq '2'}">checked</c:if>><label for="p2"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '3'}"><input type="radio" name="starscore" id="p3" value="3" <c:if test="${Redetail.getRe_score() eq '3'}">checked</c:if>><label for="p3"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '4'}"><input type="radio" name="starscore" id="p4" value="4" <c:if test="${Redetail.getRe_score() eq '4'}">checked</c:if>><label for="p4"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '5'}"><input type="radio" name="starscore" id="p5" value="5" <c:if test="${Redetail.getRe_score() eq '5'}">checked</c:if>><label for="p5"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '6'}"><input type="radio" name="starscore" id="p6" value="6" <c:if test="${Redetail.getRe_score() eq '6'}">checked</c:if>><label for="p6"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '7'}"><input type="radio" name="starscore" id="p7" value="7" <c:if test="${Redetail.getRe_score() eq '7'}">checked</c:if>><label for="p7"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '8'}"><input type="radio" name="starscore" id="p8" value="8" <c:if test="${Redetail.getRe_score() eq '8'}">checked</c:if>><label for="p8"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '9'}"><input type="radio" name="starscore" id="p9" value="9" <c:if test="${Redetail.getRe_score() eq '9'}">checked</c:if>><label for="p9"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '10'}"><input type="radio" name="starscore" id="p10" value="10" <c:if test="${Redetail.getRe_score() eq '10'}">checked</c:if>><label for="p10"></label></c:if>

  				</span>
  					<output for="star-input"><b></b>${Redetail.getRe_score()}점</output>
			</span>
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
            
            
            -->
            
            
            
            
            <div id="reviewbox" class="container">
            
            <h1 class="mt-4 mb-3">REVIEW<br/>
    </h1>
    <hr color = "black" size="10">
    <br/><br/>
            	<div class="row">
   
      <div class="col-lg-6">
      
        <img class="img-fluid rounded mb-4" src = '<c:url value="/resources/image/review/${Redetail.getRe_stored_file() }"/>' alt="" height="500" width="500">
      </div>
      <div class="col-lg-6"><br/><br/>
        <h6>${Redetail.getMem_id()}</h6>
        <h6>
			<span class="star-input">
  				<span class="input">
  					<c:if test="${Redetail.getRe_score() eq '0'}"><input type="radio" name="starscore" id="p0" value="0" <c:if test="${Redetail.getRe_score() eq '0'}">checked</c:if>><label for="p0"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '1'}"><input type="radio" name="starscore" id="p1" value="1" <c:if test="${Redetail.getRe_score() eq '1'}">checked</c:if>><label for="p1"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '2'}"><input type="radio" name="starscore" id="p2" value="2" <c:if test="${Redetail.getRe_score() eq '2'}">checked</c:if>><label for="p2"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '3'}"><input type="radio" name="starscore" id="p3" value="3" <c:if test="${Redetail.getRe_score() eq '3'}">checked</c:if>><label for="p3"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '4'}"><input type="radio" name="starscore" id="p4" value="4" <c:if test="${Redetail.getRe_score() eq '4'}">checked</c:if>><label for="p4"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '5'}"><input type="radio" name="starscore" id="p5" value="5" <c:if test="${Redetail.getRe_score() eq '5'}">checked</c:if>><label for="p5"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '6'}"><input type="radio" name="starscore" id="p6" value="6" <c:if test="${Redetail.getRe_score() eq '6'}">checked</c:if>><label for="p6"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '7'}"><input type="radio" name="starscore" id="p7" value="7" <c:if test="${Redetail.getRe_score() eq '7'}">checked</c:if>><label for="p7"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '8'}"><input type="radio" name="starscore" id="p8" value="8" <c:if test="${Redetail.getRe_score() eq '8'}">checked</c:if>><label for="p8"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '9'}"><input type="radio" name="starscore" id="p9" value="9" <c:if test="${Redetail.getRe_score() eq '9'}">checked</c:if>><label for="p9"></label></c:if>
  					<c:if test="${Redetail.getRe_score() eq '10'}"><input type="radio" name="starscore" id="p10" value="10" <c:if test="${Redetail.getRe_score() eq '10'}">checked</c:if>><label for="p10"></label></c:if>

  				</span>
  					<output for="star-input"><b></b>${Redetail.getRe_score()}점</output>
			</span>
        </h6><br/><hr><br/>
        <div onclick="location.href='product_detail?pd_name=${Redetail.getPd_name()}'" style="cursor:pointer;"><h6><span style="color:gray">상품정보&nbsp;&nbsp; </span>${Redetail.getPd_name()}</h6></div>
        <h6><span style="color:gray">제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>${Redetail.getRe_title()}</h6>
        <h6><span style="color:gray">내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>${Redetail.getRe_content()}</h6>
		
		<br/><hr><br/>
		<div  align="right">
		 
      <button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 200pt; HEIGHT: 40pt" type="button" class="btn btn-secondary btn-lg" onclick="history.go(-1);">목록</button>
   <br/><br/><br/><br/>
    </div>
    
    </div></div>
            </div>
            
             </div>
                        
                    </div>
                    
                    <br/><br/>
             <br/> 
                  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/js/jquery-1.11.3.min.js"></script>
  <script src="resources/js/star.js"></script>

  <%@ include file="./footer.jsp" %>
</body>

</html>

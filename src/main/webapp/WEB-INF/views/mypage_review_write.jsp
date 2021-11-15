 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
<div class="container">
<div class="row" >
    <div class="col-sm-2"><br/>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_order">주문내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_review">내가 작성한 리뷰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_ask">문의내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="information_check">회원정보수정</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
 <div class="col-sm-10">
      <br/><h4><strong>리뷰 작성</strong></h4><br/>
     
       <div class="mb-5">
       <div class="" style="background-color:#e6e6fa" id="운영정책">
      <div class="container">
      			  <%
            	String or_id=request.getParameter("or_id");
            %>
		    <div class="col-sm-12">
			      <hr style="size: 100%; background-color:white"><br/>
			      <strong>제품 리뷰 운영 정책</strong><br>
			     	 - 상품과 관련이 없거나, 이미 등록된 사진, 타인의 리뷰에서 도용한 사진, 화면 캡쳐 등의 리뷰는 이니스프리 공식몰 리뷰 정책에 따라 게시가 제한될 수 있습니다.<br>
					 - 상품과 관련 없는 내용이나 사진/동영상, 동일 문자 반복, 욕설이나 타인의 리뷰 도용 등의 내용이 포함된 경우 통보없이 삭제 및 뷰티포인트 적립 혜택이 회수될 수 있습니다.<br>
			      <br/><hr style="size: 100%; background-color:white">
				</div>
				</div>
            </div>
            <form role="form" id="writeForm" name="writeForm" method="post" action="review_write" enctype="multipart/form-data">
            <input type="hidden" id="or_id" name="or_id" value="<%= or_id%>"> 
            <input class="form-control" type="hidden" id="mem_id" name="mem_id" value="${member.mem_id }">
					<div class="memberManager">
						<div class="col-sm-12">
							<br />
							<div class="form-group"> <label for="writer"><strong>제품</strong></label> <br/>
          
			<select id="pd_name" name="pd_name" size="1" style="width:100% ;height:40px;" class="form-control">
			<option value="">제품을 선택하세요.</option>
			<c:forEach var="orlist" items="${order_detailList}">
		         <option value="${orlist.getPd_name()}">${orlist.getPd_name()}</option>
		    </c:forEach>
			</select>
			</div> 
			<br/>
							<label for="content"><strong>리뷰 타이틀</strong></label> 
							<div class="mb-5">
								<div class="memberManager">
									<div class="textarea">
										<textarea class="form-control" style="width: 100%;" rows="5" id="re_title" name="re_title" placeholder="제목을 입력해주세요" style="resize: none;"></textarea>
									</div>
								</div>
								<br />

<div class="form-group"> <label for="title"><strong>제품은 만족하셨나요?</strong></label> <br/>
			<span class="star-input">
  				<span class="input">
    					<input type="radio" name="starscore" id="p1" value="1"><label for="p1">1</label>
    					<input type="radio" name="starscore" id="p2" value="2"><label for="p2">2</label>
    					<input type="radio" name="starscore" id="p3" value="3"><label for="p3">3</label>
    					<input type="radio" name="starscore" id="p4" value="4"><label for="p4">4</label>
    					<input type="radio" name="starscore" id="p5" value="5"><label for="p5">5</label>
    					<input type="radio" name="starscore" id="p6" value="6"><label for="p6">6</label>
    					<input type="radio" name="starscore" id="p7" value="7"><label for="p7">7</label>
    					<input type="radio" name="starscore" id="p8" value="8"><label for="p8">8</label>
    					<input type="radio" name="starscore" id="p9" value="9"><label for="p9">9</label>
    					<input type="radio" name="starscore" id="p10" value="10"><label for="p10">10</label>
  				</span>
  					<output for="star-input"><b>0</b>점</output>
			</span>
            </div>
            
            <div class= "class" id="id" style="display:none">
            <input type="number" name="re_score" id="re_score" value=> 
            </div>
            <br/>
            <div class="form-group"> <label for="content"><strong>써보니 어떠셨나요?</strong></label> 
            <textarea class="form-control" id="re_content" name="re_content" rows="5" placeholder="내용을 입력해주세요" style="resize: none;">${article.content}</textarea> 
            </div> 
            
            <div class="inputArea">
 			<label for="gdsImg"><strong>사진 첨부</strong></label><br/>
 			<input type="file" id="gdsImg" name="file" />
 			<div class="select_img"><img src="" /></div>
 
 			<script>
  				$("#gdsImg").change(function(){
   				if(this.files && this.files[0]) {
    				var reader = new FileReader;
    				reader.onload = function(data) {
     					$(".select_img img").attr("src", data.target.result).width(500);        
    					}
    				reader.readAsDataURL(this.files[0]);
   					}
  				});
 			</script>
			</div>

<br />
								<br />
								
							</div>
							<br />
							<div align="center">
								<button
									style="border-color: white; background-color: #e6e6fa; color: black; WIDTH: 150pt; HEIGHT: 40pt"
									type="button" class="btn btn-secondary btn-lg"
									onclick="history.go(-1)">취소</button>

								<button
									style="border-color: white; background-color: black; color: white; WIDTH: 150pt; HEIGHT: 40pt"
									type="button" class="btn btn-secondary btn-lg"
									onclick="getGender();">등록</button>
								<br /> <br /> <br /> <br />
							</div>
						</div>



					</div>
					</form>
				</div>
		</div>
	</div>
	</div>
	  <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	  
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
  var pd_name=document.getElementById("pd_name");
  
  if(re_title.value==""){
	  alert("제목을 입력하세요.");
	  re_title.focus();
	  return false;
  };
  
  if(pd_name.value==""){
	  alert("제품을 선택하세요.");
	  pd_name.focus();
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
  var starscore=parseInt(re_score);
  
  	document.writeForm.submit();
  }
  </script>
<%@ include file="./footer.jsp"%>
</body>

</html>
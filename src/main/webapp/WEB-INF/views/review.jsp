<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
  <script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
	<script type="text/javascript">
	
  var starscore = document.getElementById("starscore");
  
  if(starscore.value == "6"){
    	  $("#starscore2").attr("value", "a");
  }else{
	  $("#starscore2").attr("value", "a");
  }
  
  var re_score=document.getElementById("re_score");
  
  }
  </script>
  <div class="container">
    <br/>
    	<h3 align="center">이달의 BEST 리뷰</h3>
    <br/><br/>

    <div class="row" >
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/QPX2C3URVYSAQ8HNEK6H.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="product_detail"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
     <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/MEZ8WLMDBM4YXB5XHKA5(1).jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/BG3A1CRKUQ953E01ZYNZ.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
       <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/BG3A1CRKUQ953E01ZYNZ.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
    </div>
    
    <br/>
    <!-- Pagination -->
    <div style="text-align: center;">
    <button style="border-color:black; background-color:white; color:black; WIDTH: 200pt; HEIGHT: 40pt " type="button" class="btn btn-secondary btn-lg" onclick="location.href='review_write'"><span style="float:center;font-size:13pt">리뷰 작성하고 적립금 받기</span></button>
	</div><br/><br/>
	</div>
	<hr>
	<div class="container">
	<br/><br/>
    	<h3 align="center">전체 리뷰</h3>
    <br/><br/>

    <div class="row">
    <c:forEach items="${ReviewList}" var="relist">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="review_view?re_no=${relist.getRe_no() }"><img src = '<c:url value="/resources/image/123/${relist.getRe_stored_file() }"/>' width="253px" height="253px"></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="review_view?re_no=${relist.getRe_no() }"><span style="color:black; font-size:10pt">${relist.getPd_name() }</span></a><br/>
            <a href="review_view?re_no=${relist.getRe_no() }"><span style="color:black; font-size:15pt">${relist.getRe_title() }</span></a><br/>
            </h5><span style="color:black; font-size:10pt">만족도 ${relist.getRe_score() }</span>
            <input type="hidden" id="starscore" name="starscore" value="${relist.getRe_score() }">
            <input type="hidden" id="starscore2" name="starscore2" value="" style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;">
            <p class="card-text"><span style="color:black; font-size:10pt">${relist.getMem_id() }<br/>
            👀 ${relist.getRe_count() }</span></p>
          </div>
        </div>
      </div>
      </c:forEach>
     <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/MEZ8WLMDBM4YXB5XHKA5(1).jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트(5)</span></a>
            <span style="color:black; font-size:10pt">만족도</span><br/>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">작성자<br/>
            눈아이콘</span></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
  

<%@ include file="./footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">

  <hr>

  <div class="container">

    <h1 class="mt-4 mb-3">PRODUCT<br/>
      <span style="font-size:10pt">제이 팩토리의 베스트 상품, 신상품, 카테고리별 상품을 만나보세요.</span>
    </h1>
    <hr color = "black" size="10">
    <br/><br/>
    
    <div class="row">
   
      <div class="col-lg-6">
      
        <img class="img-fluid rounded mb-4" src = '<c:url value="/resources/image/product/${ProductDetail.getPd_main_stored_file() }"/>' alt="" height="500" width="500">
      </div>
      <div class="col-lg-6">
        <h6>${ProductDetail.getPd_tag1()}&nbsp;${ProductDetail.getPd_tag2()}&nbsp;${ProductDetail.getPd_tag3()}&nbsp;${ProductDetail.getPd_tag4()}&nbsp;${ProductDetail.getPd_tag5()}</h6><br/>
        <h3>${ProductDetail.getPd_name()}</h3>
        <h6>${ProductDetail.getPd_simplecontent()}</h6><br/>
        <h3>${ProductDetail.getPd_price()}원</h3><br/>
        <h5>
        <c:forEach items="${ProductReviewScore }" var="ProductReviewScore">
        <div class="form-group"  style="cursor:pointer;">
			<span class="star-input" onclick="location.href='ProductReview?keyword=${ProductDetail.getPd_name()}'">
  				<span class="input">
  					<c:if test="${ProductReviewScore.Score eq '1'}"><input type="radio" name="starscore" id="p1" value="1" <c:if test="${ProductReviewScore.Score eq '1'}">checked</c:if>><label for="p1"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '2'}"><input type="radio" name="starscore" id="p2" value="2" <c:if test="${ProductReviewScore.Score eq '2'}">checked</c:if>><label for="p2"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '3'}"><input type="radio" name="starscore" id="p3" value="3" <c:if test="${ProductReviewScore.Score eq '3'}">checked</c:if>><label for="p3"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '4'}"><input type="radio" name="starscore" id="p4" value="4" <c:if test="${ProductReviewScore.Score eq '4'}">checked</c:if>><label for="p4"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '5'}"><input type="radio" name="starscore" id="p5" value="5" <c:if test="${ProductReviewScore.Score eq '5'}">checked</c:if>><label for="p5"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '6'}"><input type="radio" name="starscore" id="p6" value="6" <c:if test="${ProductReviewScore.Score eq '6'}">checked</c:if>><label for="p6"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '7'}"><input type="radio" name="starscore" id="p7" value="7" <c:if test="${ProductReviewScore.Score eq '7'}">checked</c:if>><label for="p7"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '8'}"><input type="radio" name="starscore" id="p8" value="8" <c:if test="${ProductReviewScore.Score eq '8'}">checked</c:if>><label for="p8"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '9'}"><input type="radio" name="starscore" id="p9" value="9" <c:if test="${ProductReviewScore.Score eq '9'}">checked</c:if>><label for="p9"></label></c:if>
  					<c:if test="${ProductReviewScore.Score eq '10'}"><input type="radio" name="starscore" id="p10" value="10" <c:if test="${ProductReviewScore.Score eq '10'}">checked</c:if>><label for="p10"></label></c:if>
  				</span>
			</span>
        </div>  
		</c:forEach>
        </h5>
		<hr><form id="addcart" name="addcart" action="cartadd" method="POST">
		<input type="hidden" id="my_memo" name="my_memo" value="">
		<div>
		수량을 선택해주세요. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="pd_amount" id="pd_amount" style="width:100px"><option value="">수량</option>
                              <c:forEach var="i" begin="1" end="10">
                                 <option value="${i }">${i }</option>
                              </c:forEach></select>
		</div>
		<hr><br/><br/>
		<div  align="right">
		 <input type="hidden" id="pd_no" name="pd_no" value="${ProductDetail.getPd_no()}">
		 <input type="hidden" id="pd_name" name="pd_name" value="${ProductDetail.getPd_name()}">
		 <input type="hidden" id="mem_id" name="mem_id" value="${member.mem_id }">
		 <input type="hidden" id="pd_img" name="pd_img" value="${ProductDetail.getPd_main_stored_file() }">
		 <input type="hidden" id="pd_price" name="pd_price" value="${ProductDetail.getPd_price()}">
		 <input type="hidden" id="pd_category" name="pd_category" value="${ProductDetail.getPd_category()}">
		 
      <button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 200pt; HEIGHT: 40pt" type="button" class="btn btn-secondary btn-lg" onclick="Cart_check();">장바구니</button>
	      <button style="border-color:white; background-color:black; color:white; WIDTH: 200pt; HEIGHT: 40pt " type="button" form="loginForm" class="btn btn-secondary btn-lg" onclick="auth();">바로구매</button>
   <br/><br/><br/><br/>
    </div></form>
    
    <form action="order_info" method="get" id="loginForm" name="loginForm">
    	 <input type="hidden" id="pd_no" name="pd_no" value="${ProductDetail.getPd_no()}">
		 <input type="hidden" id="pd_name" name="pd_name" value="${ProductDetail.getPd_name()}">
		 <input type="hidden" id="mem_id" name="mem_id" value="${member.mem_id }">
		 <input type="hidden" id="pd_img" name="pd_img" value="${ProductDetail.getPd_main_stored_file() }">
		 <input type="hidden" id="pd_price1" name="pd_price" value="${ProductDetail.getPd_price()}">
		 <input type="hidden" id="pd_amount1" name="pd_amount" value="">
		 <input type="hidden" id="or_price1" name="or_price" value="">
	</form>
    </div></div>
    <hr>
    <br/><br/>
    <div class="container" style="text-align : center;">
        <img style="width:1000px" src = '<c:url value="/resources/image/product/${ProductDetail.getPd_con_stored_file() }"/>' alt=""><br/>
    </div>
<br/><br/><br/>
    <h5>연관 상품 추천</h5>
    <hr><br/>
    <div class="row">
    <c:forEach items="${randompro}" var="randompro">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${randompro.getPd_name()}&pd_category=${randompro.getPd_category() }'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${randompro.getPd_main_stored_file() }"/>' alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">${randompro.getPd_name() }</span></a>
            </h5>
            ${randompro.getPd_price() }원
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
  </div>
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/js/jquery-1.11.3.min.js"></script>
  <script src="resources/js/star.js"></script>
  <script>
  function Cart_check(){
	  
	  <c:if test="${member eq null }">
  	alert('로그인 해주세요');
  	location.href = '/ex/index'
  </c:if>
  	
  	<c:if test="${member ne null }">
	     var pd_amount=document.getElementById("pd_amount");
	     
  if(pd_amount.value==""){
      alert("수량을 선택하세요.");
      pd_amount.focus();
      return false;
   };
   
   document.addcart.submit();
  </c:if>
  }
  
  function auth(){
	    <c:if test="${member eq null }">
	    	alert('로그인 해주세요');
	    	location.href = '/ex/index'
	    </c:if>
	    	
	    	<c:if test="${member ne null }">
		     var pd_amount=document.getElementById("pd_amount");
		     
	  if(pd_amount.value==""){
	      alert("수량을 선택하세요.");
	      pd_amount.focus();
	      return false;
	   };
	   
	  var allprice = parseInt(document.getElementById("pd_price1").value);
	  var delprice = parseInt(document.getElementById("pd_amount1").value);

			  let price = allprice*delprice;
			  $("#or_price1").attr("value", price);
			
	   document.loginForm.submit();
	  </c:if>
}
  </script>
<script>
$("select[id='pd_amount']").on("change", function(){
	var option = $("#pd_amount option:selected").val();
		$("#pd_amount1").attr("value", option);
})						        
</script>
<%@ include file="./footer.jsp" %>
</body>
</html>
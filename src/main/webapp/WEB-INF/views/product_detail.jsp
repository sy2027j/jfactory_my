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
        <h5>★★★★★ 5점</h5><br/>
        
        
        <!-- 
        <hr>
        <br/>
        <form method="get" action="SelectServlet">
		<select id="select" name="select" size="1" style="width:540px;height:100px;">
			<option value="정렬">상품 옵션을 선택해주세요.</option>
			<option value="주문 많은 순">졸려</option>
			<option value="리뷰 많은 순">죽겟당</option>
			<option value="가격 높은 순">하하</option>
			<option value="가격 낮은 순">호호</option>
		</select> <br> </form> 
		<br/>
		<div style="border:1px solid; border-color:black; background-color:white; color:black; WIDTH: 540px; HEIGHT: 100px"><p><br/><br/><p align="right">합계 원  </div>
		<br/>
		-->
		<hr><form id="addcart" name="addcart" action="cartadd" method="POST">
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
		 <c:if test="${member != null }">
      <button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 200pt; HEIGHT: 40pt" type="button" class="btn btn-secondary btn-lg" onclick="Cart_check();">장바구니</button></c:if>
      <button style="border-color:white; background-color:black; color:white; WIDTH: 200pt; HEIGHT: 40pt " type="button" class="btn btn-secondary btn-lg">바로구매</button>
   <br/><br/><br/><br/>
    </div></form>
    </div></div>
    <hr>
    <!-- /.row -->
    <br/><br/>
    <div class="container" style="text-align : center;">
        <img style="width:1000px" src = '<c:url value="/resources/image/product/${ProductDetail.getPd_con_stored_file() }"/>' alt=""><br/>
    </div>
<br/><br/><br/>
    <!--Our Customers -->
    <h5>연관 상품 추천</h5>
    <hr><br/>
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb28hLOK9wd2exWnwg5k3ssZgQ2UKivXoAA9FHg1Qqd8jXoFiOP5W1h9EStQ&usqp=CAc" alt=""></a>
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
          <a href="#"><img class="card-img-top" src="https://static.mynunc.com/ext/images/goods/top/20/07/30/11/BO00084570/0000034294.png" alt=""></a>
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
  </div>
  <script>
  function Cart_check(){
	     var pd_amount=document.getElementById("pd_amount");
	     
  if(pd_amount.value==""){
      alert("수량을 선택하세요.");
      pd_amount.focus();
      return false;
   };
   
   document.addcart.submit();
  }
  </script>

<%@ include file="./footer.jsp" %>
</body>
</html>
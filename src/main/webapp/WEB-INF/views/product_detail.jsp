<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">

  <hr>

  <div class="container">

    <h1 class="mt-4 mb-3">PRODUCT
      <p><span style="font-size:10pt">제이 팩토리의 베스트 상품, 신상품, 카테고리별 상품을 만나보세요.</span></p>
    </h1>
    <hr color = "black" size="10">
    <br/><br/>
    
    <div class="row">
      <div class="col-lg-6">
        <img class="img-fluid rounded mb-4" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/QPX2C3URVYSAQ8HNEK6H.jpg" alt="" height="500" width="500">
      </div>
      <div class="col-lg-6">
        <h6>#아이섀도우</h6><br/>
        <h3>프로 아이 팔레트</h3>
        <h6>다재다능한 컬러조합</h6><br/>
        <h3>13000원</h3><br/>
        <h5>★★★★★ 5점</h5>
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
		<br/><div  align="right">
      <button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 200pt; HEIGHT: 40pt" type="button" class="btn btn-secondary btn-lg">장바구니</button>
      <button style="border-color:white; background-color:black; color:white; WIDTH: 200pt; HEIGHT: 40pt " type="button" class="btn btn-secondary btn-lg">바로가기</button>
   <br/><br/><br/><br/>
    </div>
    </div></div>
    <hr>
    <!-- /.row -->
    <br/><br/>
    <div class="container" style="text-align : center;">
        <img  src="https://img.clubclio.co.kr/uploadFolder/smarte/se2021331152645.jpg" alt=""><br/>
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

<%@ include file="./footer.jsp" %>
</body>
</html>
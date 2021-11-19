<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  
  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('https://images.innisfree.co.kr/kr/ko/upload/pdtDetail/makeup/color/myPalette/common01.jpg')">
          <div class="carousel-caption d-none d-md-block">
          
          </div>
        </div>
      </div>
    </div>
  </header>
    
    <br/><br/>
    <div class="container">
    <div class="col-lg-12">
    	<h2 align="center"> 나만의 팔레트 </h2><br/>
    </div>
    
    
    <div class="row">
      <div class="col-lg-6">
      <br/>
        <h4>세상에 하나뿐인 팔레트!</h4><br/>
        <p>나만의 팔레트는 팔레트를 직접 조합할 수 있는 커스텀 팔레트입니다.</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>나만의 팔레트 조합하는 방법!</strong>
        <ul>
          <li>팔레트 구를 선택한다.</li>
          <li>팔레트에 들어갈 제품 종류와 옵션을 선택하여 조합한다.</li>
          <li>팔레트를 결제한다.</li>
          <li>배송을 기다린다 ~ :></li>
        </ul>
        <p>단순한 아이섀도우팔레트, 립팔레트가 아닌 나만의 팔레트를 만들어보세요! 나만의 팔레트는 하나의 팔레트에 아이섀도우, 립, 블러셔 등 다양한 제품들을 조합할 수 있습니다. </p>
      </div>
      <div class="col-lg-6">
        <img class="img-fluid rounded" src="https://img.insight.co.kr/static/2020/02/18/700/2k58xzh22r50213g8x0c.jpg" alt="">
      </div>
    </div>
     <br/><br/>
    <hr>
    </div>
    
    <br/>
  <!-- Page Content -->
  <div class="container">

    <h3 class="my-4">팔레트 구 선택</h3><br/>
</div>
<div class="container">

    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="mypalette_4"><img class="card-img-top" src="resources/image/palette4.jpg" alt="" onclick="location.href='mypalette_4'"></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="mypalette_4"><span style="color:black; font-size:15pt">마이 팔레트 4구</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt" onclick="location.href='mypalette_4'">다양한 조합으로 나만의 팔레트를 만들어보세요</span><br/>
            7000원</p>
            <hr>
            <div align="center">
            <button type="button" class="btn btn-link" onclick="location.href='mypalette_4'"><span style="color:red; font-size:13pt">조합하기</span></button>
          	</div>
          </div>
        </div>
      </div>
     <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="mypalette_6"><img class="card-img-top" src="resources/image/palette6구.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="mypalette_6"><span style="color:black; font-size:15pt">마이 팔레트 6구</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다양한 조합으로 나만의 팔레트를 만들어보세요</span><br/>
            9000원</p>
            <hr>
            <div align="center">
            <button type="button" class="btn btn-link" onclick="location.href='mypalette_6'"><span style="color:red; font-size:13pt">조합하기</span></button>
          	</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="mypalette_9"><img class="card-img-top" src="resources/image/palette9.png" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="mypalette_9"><span style="color:black; font-size:15pt">마이 팔레트 9구</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다양한 조합으로 나만의 팔레트를 만들어보세요</span><br/>
            12000원</p>
            <hr>
            <div align="center">
            <button type="button" class="btn btn-link" onclick="location.href='mypalette_9'"><span style="color:red; font-size:13pt">조합하기</span></button>
          	</div>
          </div>
        </div>
      </div>
    </div>
  </div>

<%@ include file="./footer.jsp" %>
</body>
</html>
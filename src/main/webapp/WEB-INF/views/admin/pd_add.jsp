<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <body>
    	<div id="Header"></div>
            <div id="layoutSidenav_content">
                <main>
                   <br>
                   <form role="form" id="pdaddForm" name="pdaddForm" method="post" action="addproductjf" enctype="multipart/form-data"> 
                    <div class="container">
                    <h3>상품 등록</h3><br/>
          <div class="row">
          
          <div class="col-lg-6">
          	<!-- 상품 이미지 -->
            <div class="inputArea">
 			<label for="gdsImg">상품 이미지</label>
 			<input type="file" id="gdsImg" name="file"/>
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
                    	  
            </div>
                  <div class="col-lg-6">
                     <div class="form-group">
                      <input type="text" class="form-control" id="pd_name" name="pd_name" placeholder="상품명">
                  </div>
                  <div class="form-group">
                      <input type="text" class="form-control" id="pd_simplecontent" name="pd_simplecontent" placeholder="한줄 설명 (ex.물들 듯 편안하게 픽싱되는 하이드로 매트 틴트)">
                  </div>
                  <div class="form-group">
                      <input type="number" class="form-control" id="pd_price" name="pd_price" placeholder="가격">
                  </div>
                  <select id="pd_category" name="pd_category" size="1" style="width:540px;height:40px;">
                     <option value="">카테고리</option>
                     <option value="아이">아이</option>
                     <option value="립">립</option>
                     <option value="페이스">페이스</option>
                     <option value="스킨케어">스킨케어</option>
                     <option value="클렌징">클렌징</option>
                  </select> <br><br/>
                  
                  <select id="pd_tag1" name="pd_tag1" size="1" style="width:540px;height:40px;">
                     <option value="">날씨 태그</option>
                     <option value="#맑음">맑음</option>
                     <option value="#흐림">흐림</option>
                     <option value="#구름많음">구름 많음</option>
                     <option value="#비">비</option>
                     <option value="#눈">눈</option>
                  </select> <br><br/>
                  
                  <select id="pd_tag2" name="pd_tag2" size="1" style="width:540px;height:40px;">
                     <option value="">온도 태그</option>
                     <option value="#더워">더워</option>
                     <option value="#추워">추워</option>
                     <option value="#적당">적당</option>
                  </select> <br><br/>
                  
                  <select id="pd_tag3" name="pd_tag3" size="1" style="width:540px;height:40px;">
                     <option value="">습도 태그</option>
                     <option value="#꿉꿉">꿉꿉</option>
                     <option value="#보습">보습</option>
                     <option value="#건조">건조</option>
                  </select> <br><br/>
                  
                  <select id="pd_tag4" name="pd_tag4" size="1" style="width:540px;height:40px;">
                     <option value="">피부타입 태그</option>
                     <option value="#건성">건성</option>
                     <option value="#중성">중성</option>
                     <option value="#지성">지성</option>
                     <option value="#복합성">복합성</option>
                     <option value="#민감성">민감성</option>
                  </select> <br><br/>
                  
                  <select id="pd_tag5" name="pd_tag5" size="1" style="width:540px;height:40px;">
                     <option value="">피부고민 태그</option>
                     <option value="#주름">주름</option>
                     <option value="#여드름">여드름</option>
                     <option value="#피지&모공">피지&모공</option>
                     <option value="#수분부족">수분부족</option>
                     <option value="#다크써클">다크써클</option>
                     <option value="#각질">각질</option>
                     <option value="#기타">기타</option>
                  </select> <br><br/>
				     
                
                  </div>
                </div>
                 <br/><br/>
    	<hr><br/>
    	<div style="float:right">
    	<button type="button" style="border-color:#e6e6fa; background-color:#e6e6fa; color:black;" class="btn btn-success modBtn" onclick="jebal();" >추가</button>
    		<button type="button" style="border-color:black; background-color:black; color:white;" class="btn btn-secondary" >취소</button></div>
    	</div></form></main><!-- 
    	<div class="form_section2">
                    			<div class="inputArea2">
 			<label for="gdsImg2">상품 이미지</label>
 			<input type="file" id="file2" name="file2" />
 			<div class="select_img2"><img src="" /></div>
 
 			<script>
  				$("#file2").change(function(){
   				if(this.files && this.files[0]) {
    				var reader = new FileReader;
    				reader.onload = function(data) {
     					$(".select_img2 img").attr("src", data.target.result).width(1100);        
    					}
    				reader.readAsDataURL(this.files[0]);
   					}
  				});
 			</script>
			</div>
                    		</div>  
   		 <br>
    		<button type="button" class="btn btn-success modBtn" onclick="jebal();" >추가</button>
    		<button type="button" class="btn btn-secondary" >취소</button>
    	</div></form></main></div> -->
                
  <script type="text/javascript">
  function jebal(){
	  var pd_name=document.getElementById("pd_name");
	  var pd_simplecontent=document.getElementById("pd_simplecontent");
	  var pd_price=document.getElementById("pd_price");
	  
  
  if(pd_name.value==""){
	  alert("상품명을 작성하세요.");
	  pd_name.focus();
	  return false;
  };
  
  if(pd_simplecontent.value==""){
	  alert("한줄소개를 작성하세요.");
	  pd_simplecontent.focus();
	  return false;
  };
  
  if(pd_price.value==""){
	  alert("가격을 입력하세요.");
	  pd_price.focus();
	  return false;
  };
  
  	document.pdaddForm.submit();
  }
  </script>   
  
  
    </body>
</html>
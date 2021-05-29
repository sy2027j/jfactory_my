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
                   <br><br/><br/><br/><br/>
                   <form role="form" id="mpadd" name="mpadd" method="post" action="mypalette_op" enctype="multipart/form-data"> 
                    <div class="container">
                    <h3>마이팔레트 옵션 등록</h3><br/>
          <div class="row">
          
          <div class="col-lg-6">
          	<!-- 상품 이미지 -->
            <div class="inputArea">
 			<label for="gdsImg">옵션 이미지</label>
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
                      <input type="text" class="form-control" id="my_name" name="my_name" placeholder="상품명">
                  </div>
                  <select id="my_category" name="my_category" size="1" style="width:540px;height:40px;">
                     <option value="">카테고리</option>
                     <option value="아이">아이</option>
                     <option value="블러셔">블러셔</option>
                  </select> <br><br/>
                  
                   <br><br/>
				     
                
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
	  var my_name=document.getElementById("my_name");
	  
  
  if(my_name.value==""){
	  alert("상품명을 작성하세요.");
	  my_name.focus();
	  return false;
  };
  
  	document.mpadd.submit();
  }
  </script>   
  
  
    </body>
</html>
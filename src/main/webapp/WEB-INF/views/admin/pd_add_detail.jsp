<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <body>
    	<div id="Header"></div>
            <div id="layoutSidenav_content">
                <main>
                   <br>
                   <form role="form" id="detailform" name="detailform" method="post" action="addDetail" enctype="multipart/form-data"> 
                    <div class="container">
                    <h3>상품 등록</h3><br/>
          <div class="row">
          
          <div class="col-lg-6">
          	<!-- 상품 이미지 -->
                    			<div class="inputArea">
 			<label for="gdsImg">상품 이미지</label>
 			<div class="select_img"><img src='<c:url value="/resources/image/product/${Jebal.getPd_main_stored_file() }"/>' /></div>
 
			</div>
                    	  
            </div>
                  <div class="col-lg-6">
                     <div class="form-group">
                      <input type="text" class="form-control" id="pd_name" name="pd_name" value="${Jebal.getPd_name()}">
                  </div>
                  <div class="form-group">
                      <input type="text" class="form-control" id="pd_simplecontent" name="pd_simplecontent" value="${Jebal.getPd_simplecontent()}">
                  </div>
                  <div class="form-group">
                      <input type="number" class="form-control" id="pd_price" name="pd_price" value="${Jebal.getPd_price()}">
                  </div>
                
                  </div>
                </div>
                 <br/><br/>
    	<hr>
    	
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
    	</div></form></main></div>
                
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
  
  	document.detailform.submit();
  }
  </script>   
  
  
    </body>
</html>
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
                    <div class="container">
          <div class="row">
          <div class="col-lg-6">
          	<!-- 상품 이미지 -->
          	<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    			</div>
                    			<div class="form_section_content">
									<input type="file" id ="fileItem" name='uploadFile' style="height: 30px;">
                    			</div>
                    		</div>  
            </div>
                  <div class="col-lg-6">
                     <div class="form-group">
                      <input type="text" class="form-control" id="pd_name" placeholder="상품명">
                  </div>
                  <div class="form-group">
                      <input type="text" class="form-control" id="pd_onelinedetail" placeholder="한줄 설명 (ex.물들 듯 편안하게 픽싱되는 하이드로 매트 틴트)">
                  </div>
                  <div class="form-group">
                      <input type="text" class="form-control" id="pd_price" placeholder="가격">
                  </div>
                  <form method="get" action="SelectServlet">
                  <select id="select" name="select" size="1" style="width:540px;height:50px;">
                     <option value="정렬">카테고리</option>
                     <option value="주문 많은 순">아이</option>
                     <option value="리뷰 많은 순">립</option>
                     <option value="가격 높은 순">하하</option>
                     <option value="가격 낮은 순">호호</option>
                  </select> <br> </form><br/>
                  <form method="get" action="SelectServlet">
                  <select id="select" name="select" size="1" style="width:540px;height:50px;">
                     <option value="정렬">카테고리</option>
                     <option value="주문 많은 순">졸려</option>
                     <option value="리뷰 많은 순">죽겟당</option>
                     <option value="가격 높은 순">하하</option>
                     <option value="가격 낮은 순">호호</option>
                  </select> <br> </form></br>
				
                
                <div class="skintype_Input">
                <input type="radio" name="dryskin" value="건성">건성 &nbsp;
                <input type="radio" name="normalskin" value="중성">중성 &nbsp;
                <input type="radio" name="oilyskin" value="지성">지성 &nbsp;
                <input type="radio" name="combinationskin" value="복합성">복합성 &nbsp;
                <input type="radio" name="sensitiveskin" value="민감성">민감성 &nbsp;
                <input type="radio" name="trouble" value="트러블">트러블 &nbsp;
                <input type="radio" name="atopy" value="아토피">아토피 &nbsp;
                <input type="radio" name="etc" value="기타">기타 
                </div>       
                
                <div class="skinworry_Title">
                <h5>
                    <label for="skinworry_Title">피부 고민</label>
                </h5>
                </div> 
                <div class="skinworry_Input">
                <input type="checkbox" name="wrinkles" value="주름">주름 &nbsp;
                <input type="checkbox" name="pimple" value="여드름">여드름 &nbsp;
                <input type="checkbox" name="sebum&pores" value="피지&모공">피지&모공 &nbsp;
                <input type="checkbox" name="no_moisturizing" value="수분부족">수분부족 &nbsp;
                <input type="checkbox" name="darkcircles" value="다크써클">다크써클 &nbsp;
                <input type="checkbox" name="corneous" value="각질">각질 &nbsp;
                <input type="checkbox" name="etc" value="기타">기타 &nbsp;
                </div> 
                  </div>
                </div>
                 <br/><br/>
    	<hr>
    	<div class="container" style="text-align : center;">
       		 <input type="file" class="form-control-file border"> 
   		 </div>
   		 <br>
    		<button type="button" class="btn btn-secondary" >추가</button>
    		<button type="button" class="btn btn-secondary" >취소</button>
    	</div>
                </main>
            </div>
            
  <script type="text/javascript">
  //이미지 업로드
  $("input[type='file']").on("change", function(e){
		//alert("동작");
		
		//formData -> 객체의 주소를 변수에 저장
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		
		formData.append("pd_image_main", fileObj);
		
		//첨부파일 서버로 전송함 
		//processData, contentType 은 false로 해줘야 서버로 전송됨 !! 주의하셈 !!
		//url : 서버로 요청을 보낼 url
		//processData : 서버로 전송할 데이터를 queryStirng 형태로 변환할지 여부
		//contentType : 서버로 전송되는 데이터의 content-type
		//data : 서버로 전송할 데이터
		//type : 서보 요청 타입(GET, POST)
		//dataType : 서버로부터 반환받을 데이터 타입

		.ajax({
			url: '/admin/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json'
		});	
		
	});
  

  
  
  
  </script>
  
    </body>
</html>
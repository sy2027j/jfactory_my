<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
<head>
<!-- SCRIPT -->
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/dd.css"/>'>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
		
		<style>
		    table{
		    	border:solid #ff953e;
		    	border-spacing:50px;
		    	table-layout:fixed;
		    	border-collapse:separate;  
		    }
		</style>
</head>	
<body>
    <br><br>
	    <div class="col-lg-12">
	    	<h3 align="center"> 4구 팔레트 조합하기</h3><br/>
	    </div>
	    
   		<div class="container">
		    <div class="row">
		    	<div class="col-lg-6"> 
					<table id="tableId" name="tableId" border="20px"  width="500" height="500"  bordercolor=lightblue>
						    
							    <tbody>
							    <tr>
							    <td></td>
							    <td></td>
							    </tr>
							    
							    <tr>
							    <td></td>
							    <td></td>
							    </tr>
							    </tbody>
						    </table>
        
      			</div>
	
		<!-- 상품 선택 -->

				<div class="col-lg-6">
					    <select id="sel1" name="sel1" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select> <br> <br>
							<select id="eye1" name="eye1" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox(this)">
								<c:forEach var="eyelist" items="${EyesList}">
		         					<option value="${eyelist.getMy_name()}" data-image='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl1" name="bl1" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="${blusherlist.getMy_name()}" data-img='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
					<br><br>
					
						<select id="sel3" name="sel3" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option> 
						</select> <br> <br>
							<select id="eye2" name="eye2" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox2(this)">
								<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
		         					<option value="${eyelist.getMy_name()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl2" name="bl2" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox2(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="${blusherlist.getMy_name()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
						<br><br>
						
						
						 <select id="sel5" name="sel5" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select> <br> </form> <br>
							<select id="eye3" name="eye3" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox3(this)">
								<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
		         					<option value="${eyelist.getMy_name()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl3" name="bl3" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox3(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="${blusherlist.getMy_name()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
						<br><br>
						
						
						<select id="sel7" name="sel7" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select> <br> </form> <br/>
								<select id="eye4" name="eye4" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox4(this)">
									<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
			         					<option value="${eyelist.getMy_name()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
			     					</c:forEach>
								</select>
								<select id="bl4" name="bl4" style="width:540px;height:50px;display: none;" onchange="onClickCheckBox4(this)">
									<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
			         					<option value="${blusherlist.getMy_name()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
			     					</c:forEach>
						</select>
					
			      </div>
			  </div>

   		<br/><br/><hr>
					    <div class="container" style="text-align : center;">
					        <img  src="https://img.clubclio.co.kr/uploadFolder/smarte/se2021331152645.jpg" alt=""><br/>
					    </div>
			 </div> 
    
<br/>
    
    
    
    
<!-- Page Content -->
	<div class="container">
			
		<h3 class="my-4">팔레트 구 선택</h3><br/>
		</div>
			<div class="container"> 
			
			 <!-- Page Heading/Breadcrumbs -->
			
			    <div class="row">
			      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
			        <div class="card h-100">
			          <a href="#"><img class="card-img-top" src="data:image/jpeg;base64,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" alt=""></a>
			          <div class="card-body">
			            <h5 class="card-title">
			            <a href="#"><span style="color:black; font-size:15pt">마이 팔레트 4구</span></a>
			            </h5>
			            <p class="card-text"><span style="color:black; font-size:10pt">다양한 조합으로 나만의 팔레트를 만들어보세요</span><br/>
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
			          <a href="#"><img class="card-img-top" src="data:image/jpeg;base64,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" alt=""></a>
			          <div class="card-body">
			            <h5 class="card-title">
			            <a href="#"><span style="color:black; font-size:15pt">마이 팔레트 6구</span></a>
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
			          <a href="#"><img class="card-img-top" src="data:image/jpeg;base64,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" alt=""></a>
			          <div class="card-body">
			            <h5 class="card-title">
			            <a href="#"><span style="color:black; font-size:15pt">마이 팔레트 9구</span></a>
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
<!-- 마이 팔레트 테이블  -->
<script>
	function onClickCheckBox(eye1, bl1){ 
							        	 
		 var tableValue = document.getElementById('tableId');
							            
			 tableValue.rows[0].cells[0].innerHTML = eye1.value;
	         tableValue.rows[0].cells[0].innerHTML = bl1.value;

      }							        
</script>
<script>
	function onClickCheckBox2(eye2, bl2){ 
							        	 
		 var tableValue = document.getElementById('tableId');
							            
	         tableValue.rows[0].cells[1].innerHTML = eye2.value;
	         tableValue.rows[0].cells[1].innerHTML = bl2.value;

      }							        
</script>
<script>
	function onClickCheckBox3(eye3, bl3){ 
							        	 
		 var tableValue = document.getElementById('tableId');
							            
	         tableValue.rows[1].cells[0].innerHTML = eye3.value;
	         tableValue.rows[1].cells[0].innerHTML = bl3.value;

      }							        
</script>
<script>
	function onClickCheckBox4(eye4, bl4){ 
							        	 
		 var tableValue = document.getElementById('tableId');
							            
	         tableValue.rows[1].cells[1].innerHTML = eye4.value;
	         tableValue.rows[1].cells[1].innerHTML = bl4.value;

      }							        
</script>

<!-- 카테고리 선택 -->
<script>
$( document ).ready(function(){
   	
	var sel1 = {
    	"":"카테고리를 선택하세요",
    	"E":"아이",
        "B":"블러셔"
    };
    
   function retOption(mapArr, select){
    	var html = '';
    	var keys = Object.keys(mapArr);
    	for (var i in keys) {
    	    html += "<option value=" + "'" + keys[i] + "'>" + mapArr[keys[i]] + "</option>";
    	}
        
        $("select[id='" + select +"']").html(html);
   }
   
   $("select[id='sel1']").on("change", function(){
    	var option = $("#sel1 option:selected").val();
        var subSelName = '';
    	if(option == "E") {
    		$("#eye1").show();
        	$("#bl1").hide();
        } else if(option == "B"){
        	$("#eye1").hide();
        	$("#bl1").show();
        } else{
        	$("#eye1").hide();
    		$("#bl1").hide();
        }
    })
   retOption(sel1, "sel1");
});

</script>

<script>
$( document ).ready(function(){
   
	//테스트용 데이터
	var sel3 = {
    	" ":"카테고리를 선택하세요",
    	"E":"아이",
        "B":"블러셔"
    };
   
   function retOption(mapArr, select){
    	var html = '';
    	var keys = Object.keys(mapArr);
    	for (var i in keys) {
    	    html += "<option value=" + "'" + keys[i] + "'>" + mapArr[keys[i]] + "</option>";
    	}
        
        $("select[id='" + select +"']").html(html);
   }
   
   $("select[id='sel3']").on("change", function(){
    	var option = $("#sel3 option:selected").val();
        var subSelName = '';
        if(option == "E") {
    		$("#eye2").show();
        	$("#bl2").hide();
        } else if(option == "B"){
        	$("#eye2").hide();
        	$("#bl2").show();
        } else{
        	$("#eye2").hide();
    		$("#bl2").hide();
        }
    })
   retOption(sel3, "sel3");
});

</script>

<script>
$( document ).ready(function(){
   
	//테스트용 데이터
	var sel5 = {
    	" ":"카테고리를 선택하세요",
    	"E":"아이",
        "B":"블러셔"
    };
    
   function retOption(mapArr, select){
    	var html = '';
    	var keys = Object.keys(mapArr);
    	for (var i in keys) {
    	    html += "<option value=" + "'" + keys[i] + "'>" + mapArr[keys[i]] + "</option>";
    	}
        
        $("select[id='" + select +"']").html(html);
   }
   
   $("select[id='sel5']").on("change", function(){
    	var option = $("#sel5 option:selected").val();
        var subSelName = '';
        if(option == "E") {
    		$("#eye3").show();
        	$("#bl3").hide();
        } else if(option == "B"){
        	$("#eye3").hide();
        	$("#bl3").show();
        } else{
        	$("#eye3").hide();
    		$("#bl3").hide();
        }
    })
   retOption(sel5, "sel5");
});

</script>

<script>
$( document ).ready(function(){
   
	//테스트용 데이터
	var sel7 = {
    	" ":"카테고리를 선택하세요",
    	"E":"아이",
        "B":"블러셔"
    };
	
   function retOption(mapArr, select){
    	var html = '';
    	var keys = Object.keys(mapArr);
    	for (var i in keys) {
    	    html += "<option value=" + "'" + keys[i] + "'>" + mapArr[keys[i]] + "</option>";
    	}
        
        $("select[id='" + select +"']").html(html);
   }
   
   $("select[id='sel7']").on("change", function(){
    	var option = $("#sel7 option:selected").val();
        var subSelName = '';
        if(option == "E") {
    		$("#eye4").show();
        	$("#bl4").hide();
        } else if(option == "B"){
        	$("#eye4").hide();
        	$("#bl4").show();
        } else{
        	$("#eye4").hide();
    		$("#bl4").hide();
        }
    })
   retOption(sel7, "sel7");
});

</script>

</body>
</html>
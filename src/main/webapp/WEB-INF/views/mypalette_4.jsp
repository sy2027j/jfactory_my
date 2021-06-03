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
							<select id="eye1" name="eye1" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="eyelist" items="${EyesList}">
		         					<option value="${eyelist.getMy_name()}" data-image='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl1" name="bl1" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
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
							<select id="eye2" name="eye2" style="width:540px;height:50px;display: none;" onchange="onSelectBox2(this)">
								<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
		         					<option value="${eyelist.getMy_name()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach> 
							</select>
							<select id="bl2" name="bl2" style="width:540px;height:50px;display: none;" onchange="onSelectBox2(this)">
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
							<select id="eye3" name="eye3" style="width:540px;height:50px;display: none;" onchange="onSelectBox3(this)">
								<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
		         					<option value="${eyelist.getMy_name()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl3" name="bl3" style="width:540px;height:50px;display: none;" onchange="onSelectBox3(this)">
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
								<select id="eye4" name="eye4" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
									<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
			         					<option value="${eyelist.getMy_name()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
			     					</c:forEach>
								</select>
								<select id="bl4" name="bl4" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
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
 
<%@ include file="./mypaletteselect.jsp" %>
<%@ include file="./footer.jsp" %>
<!-- 마이 팔레트 테이블  -->
<script>
	function onSelectBox(eye1, bl1){ 
							        	 
		 var tableValue = document.getElementById('tableId');
							            
		 	 tableValue.rows[0].cells[0].innerHTML = eye1.value;
	         tableValue.rows[0].cells[0].innerHTML = bl1.value;

      }							        
</script>
<script>
	function onSelectBox2(eye2, bl2){ 
							        	 
		 var tableValue = document.getElementById('tableId');
							            
	         tableValue.rows[0].cells[1].innerHTML = eye2.value;
	         tableValue.rows[0].cells[1].innerHTML = bl2.value;

      }							        
</script>
<script>
	function onSelectBox3(eye3, bl3){ 
							        	 
		 var tableValue = document.getElementById('tableId');
							            
	         tableValue.rows[1].cells[0].innerHTML = eye3.value;
	         tableValue.rows[1].cells[0].innerHTML = bl3.value;

      }							        
</script>
<script>
	function onSelectBox4(eye4, bl4){ 
							        	 
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
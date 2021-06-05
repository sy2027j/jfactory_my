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
    	border:solid lightpink;
    	border-spacing:40px;
    	table-layout:fixed;
    	border-collapse:separate;
    }
    </style>
</head>	
<body>
    <br><br>
	    <div class="col-lg-12">
	    	<h3 align="center"> 9구 팔레트 조합하기</h3><br/>
	    </div>
	    
   		<div class="container">
		    <div class="row">
		    	<div class="col-lg-6"> 
					<table id="tableId" name="tableId" border="20px"  width="500" height="500">
						    
							    <tbody>
							    <tr>
							    <td style="width:120px; height:120px"><img id="img1" class="img1" src="" style="width:120px"></td>
							    <td style="width:120px; height:120px"><img id="img2" class="img2" src="" style="width:120px"> </td>
							    <td style="width:120px; height:120px"><img id="img3" class="img3" src="" style="width:120px"> </td>
							    </tr>
							    
							    <tr>
							    <td style="width:120px; height:120px"><img id="img4" class="img4" src="" style="width:120px"></td>
							    <td style="width:120px; height:120px"><img id="img5" class="img5" src="" style="width:120px"></td>
							    <td style="width:120px; height:120px"><img id="img6" class="img6" src="" style="width:120px"> </td>
							    </tr>
							    
							    <tr>
							    <td style="width:120px; height:120px"><img id="img7" class="img7" src="" style="width:120px"></td>
							    <td style="width:120px; height:120px"><img id="img8" class="img8" src="" style="width:120px"></td>
							    <td style="width:120px; height:120px"><img id="img9" class="img9" src="" style="width:120px"> </td>
							    </tr>
							    
							    </tbody>
						    </table>
        
      			</div>
	
		<!-- 상품 선택 -->

				<div class="col-lg-6" align="right">
				
					    <select id="sel1" name="sel1" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select> <br> <br>
							<select id="eye1" name="eye1" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="eyelist" items="${EyesList}">
		         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}">${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl1" name="bl1" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" data-img='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
					<br><br>
					
						<select id="sel2" name="sel2" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option> 
						</select> <br> <br>
							<select id="eye2" name="eye2" style="width:540px;height:50px;display: none;" onchange="onSelectBox2(this)">
								<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
		         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach> 
							</select>
							<select id="bl2" name="bl2" style="width:540px;height:50px;display: none;" onchange="onSelectBox2(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
						<br><br>
						
						
						 <select id="sel3" name="sel3" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select><br> <br>
							<select id="eye3" name="eye3" style="width:540px;height:50px;display: none;" onchange="onSelectBox3(this)">
								<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
		         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl3" name="bl3" style="width:540px;height:50px;display: none;" onchange="onSelectBox3(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
						<br><br>
						
						
						<select id="sel4" name="sel4" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select><br> <br>
								<select id="eye4" name="eye4" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
									<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
			         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
			     					</c:forEach>
								</select>
								<select id="bl4" name="bl4" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
									<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
			         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
			     					</c:forEach>
						</select>
						<br><br>
						
						<select id="sel5" name="sel5" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select><br> <br>
								<select id="eye5" name="eye5" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
									<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
			         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
			     					</c:forEach>
								</select>
								<select id="bl5" name="bl5" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
									<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
			         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
			     					</c:forEach>
						</select>
						<br><br>
						
						<select id="sel6" name="sel6" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select><br> <br>
								<select id="eye6" name="eye6" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
									<c:forEach var="eyelist" items="${EyesList}" varStatus="i">
			         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${eyelist.getMy_main_stored_img()}"/>'>${eyelist.getMy_name()}</option>
			     					</c:forEach>
								</select>
								<select id="bl6" name="bl6" style="width:540px;height:50px;display: none;" onchange="onSelectBox4(this)">
									<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
			         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" title='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
			     					</c:forEach>
						</select>
						<br><br>
						
						<select id="sel7" name="sel7" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select> <br> <br>
							<select id="eye7" name="eye7" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="eyelist" items="${EyesList}">
		         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}">${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl7" name="bl7" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" data-img='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
					<br><br>
					
					<select id="sel8" name="sel8" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select> <br> <br>
							<select id="eye8" name="eye8" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="eyelist" items="${EyesList}">
		         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}">${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl8" name="bl8" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" data-img='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
					<br><br>
					
					<select id="sel9" name="sel9" style="width:540px;height:50px;" onchange="categoryChange(this)">
							<option>제품 종류를 선택해주세요.</option>
							<option value="아이">아이</option>
							<option value="블러셔">블러셔</option>
						</select> <br> <br>
							<select id="eye9" name="eye9" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="eyelist" items="${EyesList}">
		         					<option value="resources/image/product/${eyelist.getMy_main_stored_img()}">${eyelist.getMy_name()}</option>
		     					</c:forEach>
							</select>
							<select id="bl9" name="bl9" style="width:540px;height:50px;display: none;" onchange="onSelectBox(this)">
								<c:forEach var="blusherlist" items="${BlusherList}" varStatus="i">
		         					<option value="resources/image/product/${blusherlist.getMy_main_stored_img()}" data-img='<c:url value="/resources/image/product/${blusherlist.getMy_main_stored_img()}"/>'>${blusherlist.getMy_name()}</option>
		     					</c:forEach>
							</select>
					<br><br>
					
					</div>
	
			      </div>
 		
   						<br/><br/><hr>
   						<div class="col-lg-12">
   							<h3 align="RIGHT">9구 MY PALETTE</h3>
        					<h3 align="RIGHT">12000원</h3><br/>
      				
							<hr><form id="addcart" name="addcart" action="cartadd" method="POST">
		
							<br/><br/>
							<div  align="right">
									 <input type="hidden" id="my_no" name="my_no" value="${ProductDetail.getPd_no()}">
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
   		
					    <div class="container" style="text-align : center;">
					        <img  src="https://img.clubclio.co.kr/uploadFolder/smarte/se2021331152645.jpg" alt=""><br/>
					    </div>
			 </div> 
    
<br/>
 
<%@ include file="./mypaletteselect.jsp" %>
<%@ include file="./footer.jsp" %>

<!-- 마이 팔레트 테이블 1  -->
<script>
$("select[id='eye1']").on("change", function(){
	var option = $("#eye1 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img1").attr("src", option);
})						        
</script>
<script>
$("select[id='bl1']").on("change", function(){
	var option = $("#bl1 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img1").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블2  -->
<script>
$("select[id='eye2']").on("change", function(){
	var option = $("#eye2 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img2").attr("src", option);
})						        
</script>
<script>
$("select[id='bl2']").on("change", function(){
	var option = $("#bl2 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img2").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블 3  -->
<script>
$("select[id='eye3']").on("change", function(){
	var option = $("#eye3 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img3").attr("src", option);
})						        
</script>
<script>
$("select[id='bl3']").on("change", function(){
	var option = $("#bl3 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img3").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블 4  -->
<script>
$("select[id='eye4']").on("change", function(){
	var option = $("#eye4 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img4").attr("src", option);
})						        
</script>
<script>
$("select[id='bl4']").on("change", function(){
	var option = $("#bl4 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img4").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블 5  -->
<script>
$("select[id='eye5']").on("change", function(){
	var option = $("#eye5 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img5").attr("src", option);
})						        
</script>
<script>
$("select[id='bl5']").on("change", function(){
	var option = $("#bl5 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img5").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블 6  -->
<script>
$("select[id='eye6']").on("change", function(){
	var option = $("#eye6 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img6").attr("src", option);
})						        
</script>
<script>
$("select[id='bl6']").on("change", function(){
	var option = $("#bl6 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img6").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블 7  -->
<script>
$("select[id='eye7']").on("change", function(){
	var option = $("#eye7 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img7").attr("src", option);
})						        
</script>
<script>
$("select[id='bl7']").on("change", function(){
	var option = $("#bl7 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img7").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블 8  -->
<script>
$("select[id='eye8']").on("change", function(){
	var option = $("#eye8 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img8").attr("src", option);
})						        
</script>
<script>
$("select[id='bl8']").on("change", function(){
	var option = $("#bl8 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img8").attr("src", option);
})						        
</script>

<!-- 마이 팔레트 테이블 9  -->
<script>
$("select[id='eye9']").on("change", function(){
	var option = $("#eye9 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img9").attr("src", option);
})						        
</script>
<script>
$("select[id='bl9']").on("change", function(){
	var option = $("#bl9 option:selected").val();
	 var tableValue = document.getElementById('tableId');
		$("#img9").attr("src", option);
})						        
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
	var sel2 = {
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
   
   $("select[id='sel2']").on("change", function(){
    	var option = $("#sel2 option:selected").val();
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
   retOption(sel2, "sel2");
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
   retOption(sel3, "sel3");
});

</script>

<script>
$( document ).ready(function(){
   
	//테스트용 데이터
	var sel4 = {
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
   
   $("select[id='sel4']").on("change", function(){
    	var option = $("#sel4 option:selected").val();
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
   retOption(sel4, "sel4");
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
    		$("#eye5").show();
        	$("#bl5").hide();
        } else if(option == "B"){
        	$("#eye5").hide();
        	$("#bl5").show();
        } else{
        	$("#eye5").hide();
    		$("#bl5").hide();
        }
    })
   retOption(sel5, "sel5");
});

</script>

<script>
$( document ).ready(function(){
   
	//테스트용 데이터
	var sel6 = {
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
   
   $("select[id='sel6']").on("change", function(){
    	var option = $("#sel6 option:selected").val();
        var subSelName = '';
        if(option == "E") {
    		$("#eye6").show();
        	$("#bl6").hide();
        } else if(option == "B"){
        	$("#eye6").hide();
        	$("#bl6").show();
        } else{
        	$("#eye6").hide();
    		$("#bl6").hide();
        }
    })
   retOption(sel6, "sel6");
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
    		$("#eye7").show();
        	$("#bl7").hide();
        } else if(option == "B"){
        	$("#eye7").hide();
        	$("#bl7").show();
        } else{
        	$("#eye7").hide();
    		$("#bl7").hide();
        }
    })
   retOption(sel7, "sel7");
});

</script>

<script>
$( document ).ready(function(){
   
	//테스트용 데이터
	var sel8 = {
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
   
   $("select[id='sel8']").on("change", function(){
    	var option = $("#sel8 option:selected").val();
        var subSelName = '';
        if(option == "E") {
    		$("#eye8").show();
        	$("#bl8").hide();
        } else if(option == "B"){
        	$("#eye8").hide();
        	$("#bl8").show();
        } else{
        	$("#eye8").hide();
    		$("#bl8").hide();
        }
    })
   retOption(sel8, "sel8");
});

</script>

<script>
$( document ).ready(function(){
   
	//테스트용 데이터
	var sel9 = {
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
   
   $("select[id='sel9']").on("change", function(){
    	var option = $("#sel9 option:selected").val();
        var subSelName = '';
        if(option == "E") {
    		$("#eye9").show();
        	$("#bl9").hide();
        } else if(option == "B"){
        	$("#eye9").hide();
        	$("#bl9").show();
        } else{
        	$("#eye9").hide();
    		$("#bl9").hide();
        }
    })
   retOption(sel9, "sel9");
});

</script>


</body>
</html>
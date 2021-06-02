<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th {
    background-color: #e6e6fa;
    text-align: center;
  }
  td {
  	text-align: center;
  }
</style>
  
  	<div class="container">
  	
  	<c:if test="${member == null }">
  		<script type="text/javascript">
  			alert("로그인 하세요.");
  			window.location = '/ex/login';
		</script> 
  	
  	</c:if>
  	<form id="orderlist" name="orderlist" method="POST" action='orderlist' autocomplete="off">
  	<c:if test="${member != null }">
  		<input type="hidden" name="mem_id" id="mem_id" value="${member.mem_id}">
  		<input type="hidden" name="buy_realname" id="buy_realname" value="${member.mem_realname}">
  		<input type="hidden" name="buy_phone" id="buy_phone" value="${member.mem_phone}-${member.mem_phone1}-${member.mem_phone2}">
  		<input type="hidden" name="mem_email" id="mem_email" value="${member.mem_email}">
  		<input type="hidden" name="buy_zipcode" id="buy_zipcode" value="${member.mem_zipcode}">
  		<input type="hidden" name="buy_address1" id="buy_address1" value="${member.mem_address1}">
  		<input type="hidden" name="buy_address2" id="buy_address2" value="${member.mem_address2}">
  		<input type="hidden" name="mem_address" id="mem_address" value="${member.mem_address1} ${member.mem_address2}">
  	</c:if>
  	
  	
            <div id="layoutSidenav_content">
                <main><br/>
                    <div class="container-fluid" style="float:center">
                        <h3 class="mt-4" style="text-align:center">장바구니</h3> 
                      </div>
                      <br>
                      
				     <div class="memberManager">   
		                        <br/>
		         <div class="form-group">
		            <input class="form-control" type="hidden" id="mem_id" name="mem_id" value="${member.mem_id }"> </div>
		                        <table class="table" id="cartlist" name="cartList" style="table-layout:fixed; ">
		                              <thead class="table-header-bg" style="background-color: #e6e6fa">
		                              <tr>
											<th style="width: 20%;">상품명</th>
											<th style="width: 8%;">수량</th>
											<th style="width: 8%;">금액</th>
											<th style="width: 8%;">선택</th> 
										</tr>
										</thead>
		                              <tbody id="cart" class="table-body-row" style="text-align: center; vertical-align: middle;">
		                               <c:forEach items="${CartList}" var="cartlist">
										<tr>
											<td class="product_name" style="vertical-align: middle"><img src="resources/image/product/${cartlist.getPd_img()}" width=100 height=100>&nbsp;&nbsp;${cartlist.getPd_name()}</td>
											<td class="Quantity" style="vertical-align: middle"><c:out value="${cartlist.getPd_amount() }"/>개</td>
											<td class="Price" style="vertical-align: middle">${cartlist.getPd_price() * cartlist.getPd_amount()}원</td>
											<td><button style="border-color:white; background-color:white; font-size:15px; color:black; WIDTH: 50pt; HEIGHT: 70pt" onclick="del(${cartlist.getCart_id()})" type="button" class="btn btn-secondary btn-lg">삭제</button></td>
											
										</tr>
										</c:forEach>
		                        </tbody>
		                        
								</table>
								
		                     </div>
                     <div>
                     <hr>
                     <input type="hidden" id="allllprice" name="allllprice" value="">
                     <input type="hidden" id="dellllprice" name="dellllprice" value="2500">
                     <input type="hidden" id="totalllprice" name="totalllprice" value="">
                     <input type="hidden" id="or_price" name="or_price" value="">
                     <div class="form-inline" align="right" style=" width: 100%; height: 25px; font-weight: bold;">
                     <label id="allprice"></label><label>원 + </label><label>&nbsp;배송비&nbsp;</label><label id="delprice" for="2500">2500</label><label>원</label><label>= 총&nbsp;</label><label id="totalprice"></label><label>원</label>
                     </div>
                     <hr>
                     </div>
                    
                     <br/>
                     
	<div  align="center">
      <button style="border-color:white; background-color:#e6e6fa; font-size:20px; color:black; WIDTH: 200pt; HEIGHT: 50pt" type="button" class="btn btn-secondary btn-lg" id="check_module">주문 결제하기</button>
      <button style="border-color:white; background-color:black; font-size:20px; color:white; WIDTH: 200pt; HEIGHT: 50pt " type="button" class="btn btn-secondary btn-lg" onclick="location.href='index'">계속 쇼핑하기</button>
    </div>
                     </main>
                        </div></form>
                    </div>
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            
            
                
<%@ include file="./footer.jsp" %>
<script>
	function del(cart_id) {
		var chk = confirm("정말 삭제하시겠습니까?");
		if (chk) {
			location.href='delete?cart_id='+cart_id;
		}
	}	
</script>
<script>
$(document).ready(function() {
	  const table = document.getElementById('cartlist');
	  
	  let sum = 0;
	  for(let i = 1; i < table.rows.length; i++)  {
	    sum += parseInt(table.rows[i].cells[2].innerHTML);
	  }
	  
	  document.getElementById('allprice').innerText = sum;
	  $("#allllprice").attr("value", sum);
	});

</script>
<script>
$(document).ready(function() {
	  var allprice = parseInt(document.getElementById("allllprice").value);
	  var delprice = parseInt(document.getElementById("dellllprice").value);

	  let price = allprice+delprice;
	  document.getElementById('totalprice').innerText = price;
	  $("#totalllprice").attr("value", price);
	  $("#or_price").attr("value", price);
	});

</script>
<script>
$("#check_module").click(function () {
var IMP = window.IMP; 
var buy_realname=document.getElementById("buy_realname");
var buy_phone=document.getElementById("buy_phone");
var mem_email=document.getElementById("mem_email");
var buy_zipcode=document.getElementById("buy_zipcode");
var mem_address=document.getElementById("mem_address");
var total = parseInt(document.getElementById("totalllprice").value);
IMP.init('imp44772017');
IMP.request_pay({
pg: 'inicis', 
pay_method: 'card',
merchant_uid: 'merchant_' + new Date().getTime(),
name: 'JFACTORY',
amount: '1000',
buyer_email: mem_email.value,
buyer_name: buy_realname.value,
buyer_tel: buy_phone.value,
buyer_addr: mem_address.value,
buyer_postcode: buy_zipcode.value,
m_redirect_url: '/orderList'
/*
모바일 결제시,
결제가 끝나고 랜딩되는 URL을 지정
(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
*/
}, function (rsp) {
console.log(rsp);
if (rsp.success) {
var msg = '결제가 완료되었습니다.';
document.orderlist.submit();
} else {
var msg = '결제에 실패하였습니다.';
msg += '에러내용 : ' + rsp.error_msg;
}
alert(msg);
});
});
</script>

</body>
</html>
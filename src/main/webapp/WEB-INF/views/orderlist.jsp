<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<%
	String mem_phone=request.getParameter("mem_phone");
	String mem_id=request.getParameter("mem_id");
	String mem_realname=request.getParameter("mem_realname");
	String mem_email=request.getParameter("mem_email");
	String mem_zipcode=request.getParameter("mem_zipcode");
	String mem_address=request.getParameter("mem_address");
	String or_price=request.getParameter("totalllprice");
	String mem_address1=request.getParameter("mem_address1");
	String mem_address2=request.getParameter("mem_address2");
%>
<div class="container col-lg-3">
      <div class="row">
         <div id="header">
            <div id="wrapper"><br/><br/>
               <form id="signUp" name="signUp" method="post" action="index">
               <input type="text" id="mem_email" name="mem_email" value="<%=mem_email%>">
               <input type="text" id="mem_address" name="mem_address" value="<%=mem_address%>">
               <input type="text" id="totalllprice" name="totalllprice" value="<%=or_price%>">
                  <h3 class="contents" style="text-align: center">주문서</h3><br/><br/><h6>배송지 정보</h6><hr>
                  <div class="myForm-group">

                     <input type="hidden" id="isCheck" value="0">
                     
                     <div class="form-group">
                        <label for="MEMBER_NAME">받는 분 *</label> <input type="text"
                           class="form-control" id="mem_realname" name="mem_realname" value="<%= mem_realname%>">
                        <div id="name_check"></div>
                     </div>

                     <div class="form-group">
                        <label for="pwd1">전화번호 *</label> <input type="text"
                           class="form-control" id="mem_phone" name="mem_phone"
                           value="0<%=mem_phone %>" size="100">
                        <div id="pw1_check"></div>
                     </div>

                     <div class="form-group">
                        <label for="member_zipcode">배송지 주소 *</label>
                        <div class="form-inline">
                           <input type="text" class="form-control" style="width: 100px;"
                              name="mem_zipcode" id="mem_zipcode" value="<%=mem_zipcode %>"
                              onfocus="this.blur()"> &nbsp;
                           <button class="btn btn-default" type="button" id="findAddrBtn"
                              style="border-color: white; background-color: #e6e6fa; color: black;"
                              onclick="findAddr();">우편번호 찾기</button>
                        </div>
                        <input type="text" class="form-control" style="margin-top: 5px;"
                           name="mem_address1" id="mem_address1" value="<%=mem_address1 %>"
                           onfocus="this.blur()"> <input type="text"
                           class="form-control" style="margin-top: 5px;"
                           name="mem_address2" id="mem_address2" value="<%=mem_address2%>">
                        <div id="addr_check"></div>
                     </div>
                     <!-- 
         <div class="chk_allAgree">
            <input type="checkbox" name="chk_allAgree" id="chk_allAgree">
            <b>내용 확인 및 전체 동의</b>
         </div> -->
                     <hr><br/><br/><h6>최종 결제금액</h6><hr>
                     <div class="form-group">
                        <label for="pwd1">상품 금액</label> <label for="pwd1" style=""><%=or_price %>원</label> 
                     </div>
                     <hr>
                     <div align="center">
                        <button
                           style="border-color: white; background-color: #e6e6fa; color: black; WIDTH: 80pt; HEIGHT: 30pt"
                           type="button" class="btn" id="check_module">결제</button>
                        <button
                           style="border-color: white; background-color: black; color: white; WIDTH: 80pt; HEIGHT: 30pt"
                           type="button" class="btn center"
                           onclick="location.href='login'">취소</button>
                     </div>
                     <br /> <br /> <br /> <br />
                  </div>
               </form>

               <br />

            </div>
         </div>
      </div>
   </div>



<br/><br/><br/>
	

	 
<script src="resources/vendor/jquery/jquery.min.js"></script>
   <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script
      src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script type="text/javascript"
      src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>


//주소 찾기
function findAddr() {
   new daum.Postcode( {
      oncomplete: function(data) {
            var addr = '';
            var extraAddr = '';

            if (data.userSelectedType === 'R') {
                addr = data.roadAddress;
            } else {
                addr = data.jibunAddress;
            }
            if(data.userSelectedType === 'R'){
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
            }
            document.getElementById('mem_zipcode').value = data.zonecode;
            document.getElementById("mem_address1").value = addr + extraAddr;
            document.getElementById("mem_address2").focus();
        }
   }).open();
}
</script>
<script>
$(document).ready(function() {
	  var mem_point = parseInt(document.getElementById("mem_point").value);
	  
	  document.getElementById('dc_price').innerText = mem_point;
	});

</script>
<script>
$("#check_module").click(function () {
var IMP = window.IMP; 
var mem_realname=document.getElementById("mem_realname");
var mem_phone=document.getElementById("mem_phone");
var mem_email=document.getElementById("mem_email");
var mem_zipcode=document.getElementById("mem_zipcode");
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
buyer_name: mem_realname.value,
buyer_tel: mem_phone.value,
buyer_addr: mem_address.value,
buyer_postcode: mem_zipcode.value,
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
} else {
var msg = '결제에 실패하였습니다.';
msg += '에러내용 : ' + rsp.error_msg;
}
alert(msg);
});
});
</script>
<%@ include file="./footer.jsp" %>
</body>
</html>
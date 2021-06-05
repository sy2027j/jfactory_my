<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="<c:url value='resources/js/common.js'/>" charset="utf-8"></script>
</head>

<body>

   <br />
   <br />
   <div class="container col-lg-3">
   
   <%
		String pd_no=request.getParameter("pd_no");
		String pd_name=request.getParameter("pd_name");
		String mem_id=request.getParameter("mem_id");
		String pd_img=request.getParameter("pd_img");
		String pd_price=request.getParameter("pd_price");
		String pd_amount=request.getParameter("pd_amount");
		String or_price=request.getParameter("or_price");
   %>
   <c:choose>
  		<c:when test="${member != null }">
  		<input type="hidden" name="mem_id" id="mem_id" value="${member.mem_id}">
  		<input type="hidden" name="buy_realname" id="buy_realname" value="${member.mem_realname}">
  		<input type="hidden" name="buy_phone" id="buy_phone" value="${member.mem_phone}-${member.mem_phone1}-${member.mem_phone2}">
  		<input type="hidden" name="mem_email" id="mem_email" value="${member.mem_email}">
  		<input type="hidden" name="buy_zipcode" id="buy_zipcode" value="${member.mem_zipcode}">
  		<input type="hidden" name="buy_address1" id="buy_address1" value="${member.mem_address1}">
  		<input type="hidden" name="buy_address2" id="buy_address2" value="${member.mem_address2}">
  		<input type="hidden" name="mem_address" id="mem_address" value="${member.mem_address1} ${member.mem_address2}">
  		</c:when>
  		<c:otherwise>
  			<script>
  				location.href = '/ex/login';
  			</script>
  		</c:otherwise>
  	</c:choose>
  	
     <form id="orderrr" name="orderrr" method="post" action="directorder">
  		<input type="hidden" name="pd_no" id="pd_no" value="<%=pd_no %>">
  		<input type="hidden" name="pd_name" id="pd_name" value="<%=pd_name %>">
  		<input type="hidden" name="mem_id" id="mem_id" value="<%=mem_id %>">
  		<input type="hidden" name="pd_img" id="pd_img" value="<%= pd_img%>">
  		<input type="hidden" name="pd_price" id="pd_price" value="<%=pd_price %>">
  		<input type="hidden" name="pd_amount" id="pd_amount" value="<%= pd_amount%>">
  		<input type="hidden" name="or_price2" id="or_price2" value="<%= or_price%>">
  		<input type="hidden" name="or_price" id="or_price" value="<%= or_price%>">
      <div class="row">
         <div id="header">
            <div id="wrapper">
                  <h3 class="contents" style="text-align: center">결제하기</h3><br/><br/>
                  <h5><strong>배송지 정보</strong></h5><hr>
                  <div class="myForm-group">
                    <br/>
                     <div class="form-group"><br/>
                        <label for="MEMBER">이름 *</label> <input type="text"
                           class="form-control" id="buy_realname" name="buy_realname"
                           placeholder="이름을 입력하세요"value="${member.mem_realname}">
                        <div id="name_check"></div>
                     </div>

				<div class="form-group">
                        <label for="MEMBER_Phone">전화번호 *</label> <input type="text"
                           class="form-control" id="buy_phone" name="buy_phone" value="0${member.mem_phone}-${member.mem_phone1}-${member.mem_phone2}"
                           placeholder="***-****-****">
                     </div>
                     
                     <div class="form-group" id="hhh">
                        <label for="member_zipcode">배송지 주소 *</label>
                        <div class="form-inline">
                           <input type="text" class="form-control" style="width: 100px;"
                              name="buy_zipcode" id="buy_zipcode" placeholder="우편번호" value="${member.mem_zipcode}"> &nbsp;
                           <button class="btn btn-default" type="button" id="findAddrBtn"
                              style="border-color: white; background-color: #e6e6fa; color: black;"
                              onclick="findAddr();">우편번호 찾기</button>
                        </div>
                        <input type="text" class="form-control" style="margin-top: 5px;"
                           name="buy_address1" id="buy_address1" placeholder="주소 입력" value="${member.mem_address1}"
                           > <input type="text"
                           class="form-control" style="margin-top: 5px;"
                           name="buy_address2" id="buy_address2" placeholder="상세 주소 입력" value="${member.mem_address2}">
                     </div>
                     
                     
                     <br/>
                  <h5><strong>주문자 정보</strong></h5><hr>
                  <div class="myForm-group">

                     <input type="hidden" id="isCheck" value="0">
                     <div class="form-group">
                        <label for="MEMBER_NAME">이름 *</label> <input type="text"
                           class="form-control" id="mem_realname" name="mem_realname"
                           value="${member.mem_realname}" style="background-color:white"readonly>
                        <div id="name_check"></div>
                     </div>

				<div class="form-group">
                        <label for="MEMBER_BIRTH">전화번호 *</label>
                        <div class="form-inline">
                          <input type="text" class="form-control"
                              id="mem_phone3" name="mem_phone3" style="width: 450px;background-color:white" value="0${member.mem_phone}-${member.mem_phone1}-${member.mem_phone2}" readonly>
                           <br />
                          
                        </div>
                     </div>
                     
                     <div class="form-group">
                        <label for="MEMBER_EMAIL">이메일 주소 *</label><input type="text"
                           class="form-control" id="mem_email" name="mem_email"
                           value="${member.mem_email}" style="background-color:white" readonly>
                        </div>
                     </div>
                     
                    
                     <br /><br/>
                     <div align="center">
                        <button
                           style="border-color: white; background-color: #e6e6fa; color: black; WIDTH: 80pt; HEIGHT: 30pt"
                           type="button" class="btn btn-secondary btn-lg" id="check_module">결제</button>
                        <button
                           style="border-color: white; background-color: black; color: white; WIDTH: 80pt; HEIGHT: 30pt"
                           type="button" class="btn center"
                           onclick="location.href=history.go(-1)">취소</button>
                     </div>
                     <br /> <br /> <br /> <br />
                  </div>
               </div>
	
               <br />

            </div>
         </div></form>
      </div>



   <!-- Bootstrap core JavaScript -->
   <script src="resources/vendor/jquery/jquery.min.js"></script>
   <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script
      src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script type="text/javascript"
      src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
      <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
$(document).ready(function() {
	  var allprice = parseInt(document.getElementById("or_price2").value);

	  let price = allprice+2500;
	  $("#or_price").attr("value", price);
	});

</script>
   <script type="text/javascript">
   $(document).ready(function(){
	    $("#chorder").change(function(){
	        if($("#chorder").is(":checked")){
	        	$("#mem_realname").attr("value", ${member.mem_zipcode});
	        	$("#buy_phone").attr("value", ${member.mem_zipcode});
	        	$("#hhh").css('display', 'none');
	        	$("#hhhh").css('display', 'block');
	        }else{
	        	$("#mem_realname").attr("value","");
	        	$('#hhh').css('display', 'block');
	        	$("#hhhh").css('display', 'none');
	        }
	    });
	});
   
   $("#check_module").click(function () {
	   var IMP = window.IMP; 
	   var buy_realname=document.getElementById("buy_realname");
	   var buy_phone=document.getElementById("buy_phone");
	   var mem_email=document.getElementById("mem_email");
	   var buy_zipcode=document.getElementById("buy_zipcode");
	   var mem_address1=document.getElementById("buy_address1");
	   var total = parseInt(document.getElementById("or_price").value);
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
	   buyer_addr: mem_address1.value,
	   buyer_postcode: buy_zipcode.value,
	   /*
	   모바일 결제시,
	   결제가 끝나고 랜딩되는 URL을 지정
	   (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
	   */
	   }, function (rsp) {
	   console.log(rsp);
	   if (rsp.success) {
	   var msg = '결제가 완료되었습니다.';
	   document.orderrr.submit();
	   } else {
	   var msg = '결제에 실패하였습니다.';
	   msg += '에러내용 : ' + rsp.error_msg;
	   }
	   alert(msg);
	   });
	   });
   
  //회원가입 검사...
  function join_check(){
     var buy_realname=document.getElementById("buy_realname");
     var buy_zipcode=document.getElementById("buy_zipcode");
     var buy_address1=document.getElementById("buy_address1");
     var buy_address2=document.getElementById("buy_address2");
     var buy_phone=document.getElementById("buy_phone");
     var mem_phone1=document.getElementById("mem_phone1");
     var mem_phone2=document.getElementById("mem_phone2");

     if(buy_realname.value==""){
        alert("아이디를 입력하세요.");
        buy_realname.focus();
        return false;
     }
     
     //주소 공백
     if(buy_zipcode.value==""){
        alert("주소를 입력하세요.");
        buy_zipcode.focus();
        return false;
     };
     
     if(buy_address1.value==""){
         alert("주소를 입력하세요.");
         buy_address1.focus();
         return false;
      };
      
      if(buy_address2.value==""){
          alert("주소를 입력하세요.");
          buy_address2.focus();
          return false;
       };
     
     //이메일 검사
     if(buy_phone.value==""){
        alert("이메일을 입력하세요.");
        buy_phone.focus();
        return false;
     }
     
     document.orderrr.submit();
  }



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
            document.getElementById('buy_zipcode').value = data.zonecode;
            document.getElementById("buy_address1").value = addr + extraAddr;
            document.getElementById("buy_address2").focus();
        }
   }).open();
}
</script>
<%@ include file="./footer.jsp" %>
</body>
</html>
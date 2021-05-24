<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 

<script src="<c:url value='resources/js/common.js'/>" charset="utf-8"></script>
</head>

<body>

<br/><br/>   
<div  class="container col-lg-3">
  <div class="row">
                <div id="header">
      <div id="wrapper">
        <form id="signUp" name="signUp" method="post" action="index">
		<h3 class="contents" style="text-align:center">회원가입</h3>
		<div class="myForm-group">
			<div class="form-group">
				 <label for="MEMBER_ID">아이디 *</label> 
            <div class="form-inline">
            <input type="text"
               class="form-control" id="mem_id" name="mem_id"
               placeholder="아이디를 입력하세요" style="width:410px">
               &nbsp;<button type="button" class="btn btn-default" id="idChk" style="border-color:white; background-color:#e6e6fa; color:black;" onclick="fn_idChk();">인증</button>
               <input type="hidden" name="isIdCheck" id="isIdCheck" value="n">
               </div>
               <div id="id_check"></div>
         </div>

			<input type="hidden" id="isCheck" value="0">
			<div class="form-group">
				<label for="MEMBER_NAME">이름 *</label> <input type="text"
					class="form-control" id="mem_realname" name="mem_realname"
					placeholder="이름을 입력하세요">
					<div id="name_check"></div>
			</div>
			
			<div class="form-group">
				<label for="pwd1">비밀번호 *</label> <input type="password"
					class="form-control" id="mem_password" name="mem_password"
					placeholder="비밀번호(영문,숫자,특수문자 포함 8~20자리 입력)" size="100">
					<div id="pw1_check"></div>
			</div>

			<div class="form-group">
				<label for="pwd2">비밀번호 확인 *</label> <input type="password"
					class="form-control" id="mem_password2" name="mem_password2" 
					placeholder="비밀번호 확인" size="100">
				<div id="pw2_check"></div>
			</div>
			<div class="form-group">
				<label for="member_zipcode">배송지 주소 *</label>
				<div class="form-inline">
					<input type="text" class="form-control" style="width: 100px;"
					name="mem_zipcode" id="mem_zipcode" placeholder="우편번호" onfocus="this.blur()">
					&nbsp;<button class="btn btn-default" type="button" id="findAddrBtn" style="border-color:white; background-color:#e6e6fa; color:black;" onclick="findAddr()">우편번호 찾기</button>
				</div>
				<input type="text" class="form-control" style="margin-top: 5px;"
					name="mem_address1" id="mem_address1" placeholder="주소 입력" onfocus="this.blur()">
				<input type="text" class="form-control" style="margin-top: 5px;"
					name="mem_address2" id="mem_address2" placeholder="상세 주소 입력">
				<div id="addr_check"></div>
			</div>
			<div class="form-group">
				<label for="MEMBER_BIRTH">생년월일 *</label>
				<div class="form-inline">
					<select class="form-control" style="width:150px;"name="mem_birth_year" id="mem_birth_year">
						<option value="">출생년도</option>
						<c:forEach var="i" begin="1950" end="2005">
							<option value="${i }">${i }년</option>
						</c:forEach>
					</select>
					&nbsp;<select class="form-control" style="width:120px;" name="mem_birth_month" id="mem_birth_month">
						<option value="">월</option>
						<c:forEach var="i" begin="1" end="12">
								<option value="<c:if test="${i < 10}">0</c:if>${i }">${i }월</option>
						</c:forEach>
					</select>
					&nbsp;<select class="form-control" style="width:120px;" name="mem_birth_day" id="mem_birth_day">
						<option value="">일</option>
						<c:forEach var="i" begin="1" end="31">
							<option value="<c:if test="${i < 10}">0</c:if>${i }">${i }일</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="MEMBER_BIRTH">전화번호 *</label>
				<div class="form-inline">
					<select class="form-control" style="width:125px;" name="mem_phone" id="mem_phone">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="012">012</option>
						<option value="013">013</option>
					</select> &nbsp; - &nbsp;
					<input type="text" class="form-control" id="mem_phone1" name="mem_phone1" style="width:150px">
					&nbsp; - &nbsp;
					<input type="text" class="form-control" id="mem_phone2" name="mem_phone2" style="width:150px">
					<br/>
					<div id="phone_check"></div>
				<input type="checkbox" id="SMS_AGREE" name="SMS_AGREE" value="0">
				<font size="3"> &nbsp;SMS 수신에 동의합니다.</font>
				</div>
			</div>
			<div class="form-group">
				<label for="MEMBER_EMAIL">이메일 주소 *</label>
				<div class="form-inline">
					<input type="email" class="form-control" id="mem_email"
						name="mem_email" placeholder="이메일을 입력하세요" style="width:410px">
						&nbsp;<button type="button" class="btn btn-default" id="isCheck_Email" name="isCheck_Email" style="border-color:white; background-color:#e6e6fa; color:black;" onclick="Email_send();">인증</button>
					<input type="hidden" id="isEmailCheck" value="0">
				</div>
				<div id="email_check"></div>
				<input type="checkbox" id="EMAIL_AGREE" name="EMAIL_AGREE" value="0">
				<font size="3"> 이메일 수신에 동의합니다.</font>
			</div>
			<div id="isCheck_EmailForm" class="form-group">
				<label for="user_email">인증코드 확인 *</label>
				<div class="form-inline">
					<input type="email" class="form-control" id="emailAuth"
						name="emailAuth" placeholder="인증코드를 입력하세요">
					&nbsp;<button type="button" class="btn btn-default" id="isAuth" style="border-color:white; background-color:#e6e6fa; color:black;">확인</button>
					<input type="hidden" name="mem_email_cert" id="mem_email_cert" class="mem_email_cert" value="">
				</div>
			</div>
			<div class="form-group" id="checkboxes">
				<div>
					<input type="checkbox" name="check1" id="check1"> <b>서비스 이용약관 동의</b>&nbsp;<font color="red">(필수)</font>&nbsp;
					<button type="button" class="btn btn-default" onclick="window.open('join_agree1','_blanck','width=450, height=650'); return false"style="border-color:white; background-color:#e6e6fa; color:black;">내용보기</button>
				</div>
				<div>
					<input type="checkbox" name="check2" id="check2"> <b>개인정보 수집 및 이용 동의</b>&nbsp;<font color="red">(필수)</font>&nbsp;
					<button type="button" class="btn btn-default" onclick="window.open('join_agree2','_blanck','width=450, height=650'); return false"style="border-color:white; background-color:#e6e6fa; color:black;">내용보기</button>
				</div>
				<div>
					<input type="checkbox" name="check3" id="check3" value="1"> <b>만 14세 이상입니다.</b>&nbsp;<font color="red">(필수)</font>
					<p style="font-size:13px">만 19세 미만의 미성년자가 결제 시 법정대리인이 거래를 취소할 수 있습니다.<p>
				</div>
			</div>
			<!-- 
			<div class="chk_allAgree">
				<input type="checkbox" name="chk_allAgree" id="chk_allAgree">
				<b>내용 확인 및 전체 동의</b>
			</div> -->
			<br/>
			<hr>
			<div class="choice_Title">
                <h3 class="choice_Title"style="text-align:center">선택사항</h3>
                </div>
                
                <div>
                <h5>
                    <label for="sex_Title">성별</label>
                </h5>
                </div>
                
                <div>
                <input type="radio" name="mem_sex1" value="0">여성 &nbsp;
                <input type="radio" name="mem_sex1" value="1">남성
                </div>               
                <input type="hidden" name="mem_sex" id="mem_sex" value="">
                <br/>
                <div>
                <h5>
                    <label for="skintype_Title">피부 타입</label>
                </h5>
                </div> 
                <div>
                <input type="radio" name="mem_skintype1" value="건성">건성 &nbsp;
                <input type="radio" name="mem_skintype1" value="중성">중성 &nbsp;
                <input type="radio" name="mem_skintype1" value="지성">지성 &nbsp;
                <input type="radio" name="mem_skintype1" value="복합성">복합성 &nbsp;
                <input type="radio" name="mem_skintype1" value="민감성">민감성 &nbsp;
                <input type="radio" name="mem_skintype1" value="트러블">트러블 &nbsp;
                <input type="radio" name="mem_skintype1" value="아토피">아토피 &nbsp;
                <input type="radio" name="mem_skintype1" value="기타">기타 
                </div>
                <input type="hidden" name="mem_skintype" id="mem_skintype" value="">       
                <br/>
                <div>
                <h5>
                    <label for="skinworry_Title">피부 고민 (최대 2개 선택)</label>
                </h5>
                </div> 
                <div><input type="hidden" value="2" id="selCnt" name="selCnt">
                <input onclick="CountChecked(this)"type="checkbox" name="mem_skintrouble" value="주름">주름 &nbsp;
                <input onclick="CountChecked(this)"type="checkbox" name="mem_skintrouble" value="여드름">여드름 &nbsp;
                <input onclick="CountChecked(this)"type="checkbox" name="mem_skintrouble" value="피지&모공">피지&모공 &nbsp;
                <input onclick="CountChecked(this)"type="checkbox" name="mem_skintrouble" value="수분부족">수분부족 &nbsp;
                <input onclick="CountChecked(this)"type="checkbox" name="mem_skintrouble" value="다크써클">다크써클 &nbsp;
                <input onclick="CountChecked(this)"type="checkbox" name="mem_skintrouble" value="각질">각질 &nbsp;
                <input onclick="CountChecked(this)"type="checkbox" name="mem_skintrouble" value="기타">기타 &nbsp;
                </div> 
			<br/><br/>
			<div align="center">
			<button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn" id="signUpBtn" onclick="join_check();">가입</button>
			<button style="border-color:white; background-color:black; color:white; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn center" onclick="location.href='login'">취소</button>
			</div><br/><br/><br/><br/>
		</div>
	</form>
	
	<br/>

                </div>
                </div>
            </div>
            </div>
            
             

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  ﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
  
  <script type="text/javascript">
  var maxCount = 2;
  var count = 0;

  function CountChecked(field){
  	if (field.checked) {
  		count += 1;
  	}
  	else {
  		count -= 1;
  	}
  	
  	if (count > maxCount) {
  		alert("최대 2개까지만 선택가능합니다.");
  	field.checked = false;
  	count -= 1;
  	}
  }
  </script>
  <script type="text/javascript">
  function Email_send(){
	  var mem_email2=document.getElementById("mem_email");
	  
	  if(mem_email2.value==""){
		  alert("이메일을 입력하세요.");
		  mem_email2.focus();
		  return false;
	  }
	  
	  var key; //인증키
	  var bool =true; //boolean 인듯
	  
	  if(bool){
		  
		  $.ajax({
				url : "/ex/emailSend",
				type : "POST",
				dataType : "json",
				data : {"mem_email" : $("#mem_email").val()},
				success : function(data){
						alert("이메일 발송.");
						key=data;
						bool=false;
					},error:function(request,status,error){
			        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
			       }
			})
		  
		  //인증코드 확인 부분
		  $(".emailAuth").show();
		  $(".isAuth").val("인증번호 확인!"); //이메일 인증 버튼 -> 내용 변경
		  $(".emailAuth").keyup(function () {
			
			  //이메일 인증코드 입력한 부분을 userContent로 하고 인증코드 값(입력한 값)과 원래 보낸 키가 같으면 성공
			  if($(".emailAuth").val()>=6){
				  var userContent = $(".emailAuth").val();
				  
				  if(userContent == key){
					  alert("인증 성공!");
					  $("#mem_email_cert").val("1") //성공하면 디비에 1로 입력
				      $("#isCheck_Email").val("인증완료!");
				      $("#isCheck_Email").attr("disabled", true);
				      $(".emailAuth").attr("disabled", true);
				  }else {
					  $("#mem_email_cert").valu("0");
					  $("#isCheck_Email").valu("인증번호 재발송");
					  event.preventDefault();
				  }
			  }
		}); //keyup 
	  }else{//1
		  alert("test1=>false");
		  event.preventDefault();
	  }
	
  }
  </script>
  <script type="text/javascript">
	
	//아이디 중복 체크
	function fn_idChk(){
		$.ajax({
			url : "/ex/idChk",
			type : "POST",
			dataType : "json",
			data : {"mem_id" : $("#mem_id").val()},
			success : function(data){
				if(data == 1){
					alert("사용 불가능한 아이디입니다.");
				}else if(data == 0){
					$("#isIdCheck").attr("value", "Y");
					
					alert("사용 가능한 아이디입니다.");
				}
			},error:function(request,status,error){
		        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		       }
		})
	}
  
	</script>
	
 <script type="text/javascript">
 
  //회원가입 검사...
  function join_check(){
	  var mem_id=document.getElementById("mem_id");
	  var mem_password=document.getElementById("mem_password");
	  var mem_realname=document.getElementById("mem_realname");
	  var mem_password2=document.getElementById("mem_password2");
	  var mem_zipcode=document.getElementById("mem_zipcode");
	  var mem_address1=document.getElementById("mem_address1");
	  var mem_address2=document.getElementById("mem_address2");
	  var mem_birth_year=document.getElementById("mem_birth_year");
	  var mem_birth_month=document.getElementById("mem_birth_month");
	  var mem_birth_day=document.getElementById("mem_birth_day");
	  var mem_phone=document.getElementById("mem_phone");
	  var mem_phone1=document.getElementById("mem_phone1");
	  var mem_phone2=document.getElementById("mem_phone2");
	  var SMS_AGREE=document.getElementById("SMS_AGREE");
	  var mem_email=document.getElementById("mem_email");
	  var EMAIL_AGREE=document.getElementById("EMAIL_AGREE");
	  var check1=document.getElementById("check1");
	  var check2=document.getElementById("check2");
	  var check3=document.getElementById("check3");
	  var emailAuth=document.getElementById("emailAuth");
	  var emailAuth=document.getElementById("isAuth");
	  var emailAuth=document.getElementById("mem_email_cert");
	  var emailAuth=document.getElementById("isCheck_Email");

	  
	  
	  if(mem_id.value==""){
		  alert("아이디를 입력하세요.");
		  mem_id.focus();
		  return false;
	  }
	  var idCheck = /^[A-za-z0-9]/g;
	  if(!idCheck.test(mem_id.value)){
		  alert("아이디는 영문자와 숫자만 사용해야 합니다.")
		  mem_id.focus();
		  return false;
	  }
	  
	  if(mem_realname.value==""){
		  alert("이름을 입력하세요.");
		  mem_realname.focus();
		  return false;
	  };
	  
	  //비밀번호 검사
	  if(mem_password.value==""){
		  alert("비밀번호를 입력하세요.");
		  mem_password.focus();
		  return false;
	  }
	  var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
	  if(!pwdCheck.test(mem_password.value)){
		  alert("비밀번호는 영문자, 숫자, 특수문자 조합으로 8~20자리 사용해야 합니다.");
		  mem_password.focus();
		  return false;
	  }
	  if(mem_password2.value!==mem_password.value){
		  alert("비밀번호가 일치하지 않습니다.")
		  mem_password2.focus();
		  return false;
	  }
	  
	  //주소 공백
	  if(mem_zipcode.value==""){
		  alert("주소를 입력하세요.");
		  mem_zipcode.focus();
		  return false;
	  };
	  
	  //생년월일 공백
	  if(mem_birth_year.value==""){
		  alert("생년월일을 입력하세요.");
		  mem_birth_year.focus();
		  return false;
	  };
	  if(mem_birth_month.value==""){
		  alert("생년월일을 입력하세요.");
		  mem_birth_month.focus();
		  return false;
	  };
	  if(mem_birth_day.value==""){
		  alert("생년월일을 입력하세요.");
		  mem_birth_day.focus();
		  return false;
	  };
	  
	  //전화번호 공백
	  var reg = /^[0-9]+/g;
	  if(mem_phone1.value==""){
		  alert("전화번호를 입력하세요.");
		  mem_phone1.focus();
		  return false;
	  };
	  if (!reg.test(mem_phone1.value)) {
		    alert("전화번호는 숫자만 입력할 수 있습니다.");
		    mem_phone1.focus();
		    return false;
		  };
	  if(mem_phone2.value==""){
		  alert("전화번호를 입력하세요.");
		  mem_phone2.focus();
		  return false;
	  };
	  
	  //이메일 검사
	  if(mem_email.value==""){
		  alert("이메일을 입력하세요.");
		  mem_email.focus();
		  return false;
	  }
	  
	  var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	  if(!regExp.test(mem_email.value)){
		  alert("이메일 형식을 확인해주세요.")
		  mem_email.focus();
		  return false;
	  }
	  
	  
	  //약관 동의
	  if (!check1.checked) {
    		alert("서비스 이용 약관 동의를 체크하세요.");
    		check1.focus();
    		return false;
  	  }
	  if (!check2.checked) {
  		alert("개인정보 수집 및 이용 약관 동의를 체크하세요.");
  		check2.focus();
  		return false;
	  }
	  if (!check3.checked) {
  		alert("약관 동의를 체크하세요.");
  		check3.focus();
  		return false;
	  }
	  
	  //성별
	  var obj_length = document.getElementsByName("mem_sex1").length;
	  
      for (var i=0; i<obj_length; i++) {
          if (document.getElementsByName("mem_sex1")[i].checked == true) {
        	  $("#mem_sex").attr("value", document.getElementsByName("mem_sex1")[i].value);
          }}
      
      //피부타입
      var obj_length = document.getElementsByName("mem_skintype1").length;
	  
      for (var i=0; i<obj_length; i++) {
          if (document.getElementsByName("mem_skintype1")[i].checked == true) {
        	  $("#mem_skintype").attr("value", document.getElementsByName("mem_skintype1")[i].value);
          }}
	  
	  document.signUp.submit();
  }

  </script>
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
           
<%@ include file="./footer.jsp" %>

</body>

</html>
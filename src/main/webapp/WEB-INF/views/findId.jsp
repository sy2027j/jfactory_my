<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<br/><br/>   
  <div  class="container col-lg-3">
  <div class="row">
                <div id="header">
      <div id="wrapper">
        <form id="findId" name="findId" method="post" action="findId">
		<h3 class="contents" style="text-align:center">아이디 찾기</h3>
		<div class="myForm-group">
			<div class="form-group">
				<label for="MEMBER_NAME">이름 *</label> <input type="text"
					class="form-control" id="mem_realname" name="mem_realname" style="width:470px;"
					placeholder="이름을 입력하세요">
					<div id="name_check"></div>
			</div>

			<div class="form-group">
				<label for="MEMBER_EMAIL">이메일 주소 *</label>
				<div class="form-inline">
					<input type="email" class="form-control" id="mem_email" style="width:400px;"
						name="mem_email" placeholder="이메일을 입력하세요">
					<button type="button" class="btn" id="isCheck_Email" style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 50pt; HEIGHT: 30pt" onclick="Email_send();">인증</button>
				</div>
			</div>
			
			<div id="isCheck_EmailForm" class="form-group">
				<label for="user_email">인증번호 확인 *</label>
				<div class="form-inline">
					<input type="email" class="form-control" id="emailAuth" style="width:400px;"
						name="emailAuth" placeholder="인증번호를 입력하세요">
					<button type="button" class="btn btn-default" id="isAuth" style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 50pt; HEIGHT: 30pt" onclick="Email_chk();">확인</button>
					<input type="hidden" name="mem_email_cert" id="mem_email_cert"
                              class="mem_email_cert" value="0">
				</div>
			</div>
			<div align="center">
			<button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn center" onclick="findId_chk();">확인</button>
			<button style="border-color:white; background-color:black; color:white; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn center" onclick="location.href='login'">취소</button>
			</div>
		</div>
	</form>
	
	<br/>

                </div>
                </div>
            </div>
            </div>
<script type="text/javascript">
	var key;

	function Email_send() {
		var mem_email2 = document.getElementById("mem_email");

		if (mem_email2.value == "") {
			alert("이메일을 입력하세요.");
			mem_email2.focus();
			return false;
		}

		var bool = true; //boolean 인듯

		if (bool) {

			$.ajax({
				url : "/ex/emailSend",
				type : "POST",
				dataType : "json",
				data : {
					"mem_email" : $("#mem_email").val()
				},
				success : function(data) {
					alert("이메일 발송.");
					key = data;
					bool = false;
				},
				error : function(request, status, error) {
					alert("code = " + request.status + " message = "
							+ request.responseText + " error = " + error); // 실패 시 처리
				}
			});
		}
	}

	//인증코드 확인 부분
	//이메일 인증 버튼 -> 내용 변경
	function Email_chk() {

		//이메일 인증코드 입력한 부분을 userContent로 하고 인증코드 값(입력한 값)과 원래 보낸 키가 같으면 성공
		if ($("#emailAuth").val() !== "") {
			var userContent = $("#emailAuth").val();
			if (userContent == key) {

				alert("인증 성공!");
				$("#mem_email_cert").val("1") //성공하면 디비에 1로 입력
				$("#isCheck_Email").val("인증완료!");
				$("#isCheck_Email").attr("disabled", true);
				$("#emailAuth").attr("disabled", true);
			} else {
				$("#mem_email_cert").val("0");
				alert("인증 실패! 인증번호를 다시 입력해주세요!!");
				event.preventDefault();
			}
		}
	} //keyup 

	function findId_chk() {
		var mem_realname = document.getElementById("mem_realname");
		var mem_email = document.getElementById("mem_email");
		var emailAuth = document.getElementById("emailAuth");

		if (mem_realname.value == "") {
			alert("이름을 입력하세요.");
			mem_realname.focus();
			return false;
		}

		if (mem_email.value == "") {
			alert("이메일을 입력하세요.");
			mem_email.focus();
			return false;
		}

		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		if (!regExp.test(mem_email.value)) {
			alert("이메일 형식을 확인해주세요.")
			mem_email.focus();
			return false;
		}

		if (emailAuth.value == "") {
			alert("인증번호를 입력하세요.");
			emailAuth.focus();
			return false;
		}

		if (mem_email_cert.value == "0") {
			alert("이메일을 인증 해주세요.");
			mem_email.focus();
			return false;
		}

		document.findId.submit();
	}
</script>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="./footer.jsp" %>
</body>
</html>
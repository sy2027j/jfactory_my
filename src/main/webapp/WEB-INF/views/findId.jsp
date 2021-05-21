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
        <form id="signUp" method="post" action="findId">
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
					<button type="button" class="btn" id="isCheck_Email" style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 50pt; HEIGHT: 30pt">인증</button>
				</div>
			</div>
			
			<div id="isCheck_EmailForm" class="form-group">
				<label for="user_email">인증번호 확인 *</label>
				<div class="form-inline">
					<input type="email" class="form-control" id="emailAuth" style="width:400px;"
						name="emailAuth" placeholder="인증번호를 입력하세요">
					<button type="button" class="btn btn-default" id="isAuth" style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 50pt; HEIGHT: 30pt">확인</button>
					<input type="hidden" id="isEmailAuth" value="0">
				</div>
			</div>
			<div align="center">
			<button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 80pt; HEIGHT: 30pt" type="submit" class="btn center">확인</button>
			<button style="border-color:white; background-color:black; color:white; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn center" onclick="location.href='login'">취소</button>
			</div>
		</div>
	</form>
	
	<br/>

                </div>
                </div>
            </div>
            </div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="./footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/join.css" rel="stylesheet">

</head>

<body>

<br/><br/>   
<div  class="container col-lg-3">
  <div class="row">
                <div id="header">
      <div id="wrapper">
        <form id="signUp" method="post" action="/stu/joinAction.do">
		<h3 class="contents" style="text-align:center">비밀번호 재설정</h3>
		<div class="myForm-group">
			<div class="form-group">
				<label for="pwd1">비밀번호 *</label> <input type="password"
					class="form-control" id="pwd1" name="MEMBER_PASSWD"
					placeholder="비밀번호(영문,숫자,특수문자 포함 8~20자리 입력)" size="100">
					<div id="pw1_check"></div>
			</div>

			<div class="form-group">
				<label for="pwd2">비밀번호 확인 *</label> <input type="password"
					class="form-control" id="pwd2" name="MEMBER_PASSWD2" 
					placeholder="비밀번호 확인" size="100">
				<div id="pw2_check"></div>
			</div>
			<div align="center">
			<button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn center" onclick="location.href='login'">변경</button>
			<button style="border-color:white; background-color:black; color:white; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn center" onclick="location.href='login'">취소</button>
			</div>
		</div>
	</form>
	
	<br/>

                </div>
                </div>
            </div>
            </div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="./footer.jsp" %>
</body>
</html>
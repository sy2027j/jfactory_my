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
        <form id="signUp" method="post" action="">
		<h3 class="contents" style="text-align:center">로그인</h3><br/><br/>
		<div class="myForm-group">
			<div class="form-group"><input type="password"
					class="form-control" id="MEMBER_ID" name="MEMBER_ID"
					placeholder="ID" size="100" style="width:470px;">
					<div id="id_check"></div>
			</div>

			<div class="form-group">
				<input type="password"
					class="form-control" id="pwd" name="MEMBER_PASSWD" 
					placeholder="PW" size="100" style="width:470px;">
				<div id="pw_check"></div>
			</div>
			<div align="center">
			<button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 350pt; HEIGHT: 30pt" type="submit" class="btn center">로그인</button>
			</div><br/>
			<div style="text-align:center">
            <button type="button" class="btn btn-link" onclick="location.href='join'"><span style="color:black; font-size:10pt">회원가입</span></button>
      		<button type="button" class="btn btn-link" onclick="location.href='findId'"><span style="color:black; font-size:10pt">아이디 찾기</span></button>
      		<button type="button" class="btn btn-link" onclick="location.href='findPw'"><span style="color:black; font-size:10pt">비밀번호 찾기</span></button>
            </div>
		</div>
	</form>
	
	<br/>

                </div>
                </div>
            </div>
            </div>
 
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  
       

<%@ include file="./footer.jsp" %>

</body>

</html>
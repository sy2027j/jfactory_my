<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<br/><br/>

<div  class="container col-lg-3">
  <div class="row">
        <div id="header">
      <div id="wrapper">
        <form id="Login" method="post" action="/mypage_order">
		<h3 class="contents" style="text-align:center">로그인</h3><br/><br/>
		
					<div class="form-group"><input type="text"
							class="form-control" id="mem_id" name="mem_id"
							placeholder="ID" size="100" style="width:470px;">
							<div id="id_check"></div>
					</div>
		
					<div class="form-group">
						<input type="password"
							class="form-control" id="mem_password" name="mem_password" 
							placeholder="PW" size="100" style="width:470px;">
						<div id="pw_check"></div>
					</div>
					
					<div align="center">
					<button id="btnLogin" style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 350pt; HEIGHT: 30pt" type="submit" class="btn center">로그인</button>
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
<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".btnLogin").click(function(){
    	 $("#Login").attr("action", "/index");
         $("#Login").submit();
    });
 
</script>

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script>
</script>

<%@ include file="./footer.jsp" %>

</body>

</html>
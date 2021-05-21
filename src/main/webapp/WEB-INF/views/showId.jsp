<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<br/><br/>   
<div  class="container col-lg-3">
  <div class="row">
                <div id="header">
      <div id="wrapper">
		<h3 class="contents" style="text-align:center">아이디 찾기</h3>
		<div class="myForm-group">
		<br/><br/>
			
			<div id="Showid_box" style="text-align: center; border: 1px solid black; padding: 10px; width:470px;">회원님의 아이디는<br>${Iddto.getmem_id() }<br>입니다. <br> </div>
			<br/><br/>
			<div align="center">
			<button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 80pt; HEIGHT: 30pt" type="button" class="btn center" onclick="location.href='login'">로그인</button>
			<button style="border-color:white; background-color:black; color:white; WIDTH: 100pt; HEIGHT: 30pt" type="button" class="btn center" onclick="location.href='findPw'">비밀번호 찾기</button>
			</div>
		</div>
	
	<br/>

                </div>
                </div>
            </div>
            </div>
  
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="./footer.jsp" %>
  
</body>
</html>
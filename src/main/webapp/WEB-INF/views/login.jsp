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

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
    //login_process의 id를 가지는것을 클릭하게 된다면 함수 실행
    $("#loginbt").click(function(){
        //json 객체를 생성
        var json = {
            //m_id의 이름을 가지고 m_id의 id를 가지는 태그의 벨류값을 가져옴 아래도 동일
            mem_id : $("#mem_id").val(),
            mem_password : $("#mem_password").val()
        };
        //json을 포이치문 돌림
        for(var str in json){
            //json[m_id or m_pw]를 돌릴때 길이가 0이면 아래 출력
            if(json[str].length == 0){
                //str은 json에 변수명을 가지고 #은 아이디 찾는것 attr은 에트류뷰트의 
                //placeholder를 찾는것
                alert($("#" + str).attr("placeholder") + "를 입력해주세요.");
                //포커스를 올려줌
                $("#" + str).focus();
                return;
            }
        }
        //비동기 통신 선언 (아작스)
         $.ajax({
            type : "post", //post로 요청
            url : "Login", //login url로 요청
            data : json, // json데이터를 전성
            success : function(data) { //성공 하면
                switch (Number(data)) { //위치문
                case 0: // 0 일때
                    alert("아이디 또는 비밀번호가 일치하지 않습니다."); //경고 출력
                    break;
                case 1: // 1 일떄
                    window.location.href = "/index"; //로그인 성공시 index페이지 이동

                default:
                    break;
                }
            },
            error : function(error) { //404 500등 오류 발생시 
                alert("오류 발생"+ error);
            }
        });
    });
});
</script>

<%@ include file="./footer.jsp" %>

</body>

</html>
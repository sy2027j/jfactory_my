<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">


<head>


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
<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/join.css" rel="stylesheet">

</head>


<body>
	<br />
	<br />
	<div class="container col-lg-3">
		<div class="row">
			<div id="header">
				<div id="wrapper">
					<form id="information_check" name=information_check method="post" action="information_check">
					<c:if test="${ member != null }">
							<h3 class="contents" style="text-align: center">비밀번호 확인</h3>
							<br/>
							<div class="myForm-group">
								<div class="form-group">
									<label for="id_label">아이디</label>
									<label>&nbsp;&nbsp;&nbsp;${member.mem_id }</label>
									<div id="id_check"></div>
								</div>

								<div class="form-group">
									<label for="pwd1">비밀번호 확인 *</label> <input type="password"
										class="form-control" id="mem_password" name="mem_password"
										placeholder="비밀번호 확인" size="100">
									<div id="pw2_check"></div>
								</div>
								<div align="center">
									<button id="submit" name="submit"
										style="border-color: white; background-color: #e6e6fa; color: black; WIDTH: 100pt; HEIGHT: 30pt"
										type="submit" class="btn center" onclick="information_pw();">회원정보 수정</button>
									<button id="cancle" name="cancle"
										style="border-color: white; background-color: black; color: white; WIDTH: 80pt; HEIGHT: 30pt"
										type="button" class="btn center"
										onclick="location.href='mypage_order'">취소</button>
								</div>
							</div>
							</c:if>
					</form>
					<br />

				</div>
			</div>
		</div>
	</div>



	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	﻿
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
	<script type="text/javascript">
		function information_pw() {

			var mem_password = document.getElementById("mem_password");

			if (mem_password.value == "") {
				alert("비밀번호를 입력하세요.");
				mem_password.focus();
				return false;
			}
			document.information_check.submit();

		}
	</script>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<%@ include file="./footer.jsp"%>
</body>
</html>












<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
div.join_out {
	margin-top: 80px;
}

.joinout_textlist {
	padding-top: 70px;
}

div.check {
	padding-top: 25px;
	padding-bottom: 25px;
	float: left;
	margin-left: 800px;
}

div.joinout_reason {
	float: left;
	margin-left: 650px;
	margin-top: 20px;
}

table {
	display: flex;
	display: -webkit-box;
	display: -ms-flexbox;
	overflow-x: auto;
	overflow-y: hidden;
}

tbody {
	display: flex
}

th, td {
	display: block
}
</style>
<body>
	<h3 id="join_out_title"
		style="float: left; margin-top: 15px; margin-left: 870px;">회원 탈퇴</h3>
	<div class="join_out container col-lg-12">
		<div class="row">
			<div id="header">
				<div id="wrapper">
					<form id="joinout" name="joinout" method="post"
						action="joinout">
						<c:if test="${ member != null }">
						<div class="joinout_textbox container col-lg-12"
							style="border: 1px solid black; padding: 20px; width: 900px; height: 300px; text-align: center;">
							<br>
							<h4 class="font_thank"
								style="display: inline-block; color: black;">그동안 JFactory를
								이용해주셔서 감사합니다.</h4>
							<br>
							<h4 style="display: inline-block; color: black;">회원탈퇴전</h4>
							<h4 class="font_important "
								style="display: inline-block; color: #6708C7;">다음 사항을 꼭
								숙지하시기 바랍니다.</h4>

							<ul class="joinout_textlist">
								<li>취소한 주문이 있을 경우, 주문상태가 '환불완료'로 변경되었는지 확인 후 탈퇴해주시기를 바랍니다.</li>
								<li> 진행중인 구매내역이 있을 경우 회원 탈퇴가 불가능하며 거래 완료 후 탈퇴 하실 수 있습니다.</li>
								<li> 탈퇴 시, 포인트 및 이용내역이 소멸되며 추후 복구가 불가능합니다.</li>
							</ul>

						</div>

						<div class="check container col-lg-3">
							<input type="radio" name="joinout_check" value="위의 주의사항을 모두 확인함">위의
							주의사항을 모두 확인하였습니다.
						</div>

						<div class="joinout_reason container col-lg-12"
							style="width: 1000px; height: 250px;">
							<table class="table" id="joinout_table">
								<thead class="table-header-bg" style="background-color: #e6e6fa">
									<tr>
										<th>탈퇴사유</th>
										<th>남기고 싶은 의견</th>
								<tbody>
									<tr>
										<td><select name="joinout_reason" id="joinout_reason">
										<option value="">탈퇴사유를 선택하세요</option>
												<option value="개인정보 유출이 우려되어서">개인정보 유출이 우려되어서</option>
												<option value="제이팩토리 제품및 서비스를 더이상 사용하지 않아서">제이팩토리 제품및 서비스를 더이상 사용하지 않아서</option>
												<option value="제이팩토리의 서비스에 불만족해서">제이팩토리의 서비스에 불만족해서</option>
												<option value="광고 메일 및 문자가 귀찮아서">광고 메일 및 문자가 귀찮아서</option>
												<option value="기타">기타
										</select></td>
										<td><input type="text" name="joinout_opinion" id="joinout_opinion"
											style="width: 400px; height: 30px;"></td>
									</tr>
								</tbody>
							</table>
							<div align="center">
								<button
									style="border-color: white; background-color: #e6e6fa; color: black; WIDTH: 80pt; HEIGHT: 30pt"
									type="button" class="btn" id="join_out_Btn"
									onclick="Joinout();">회원탈퇴</button>
								<button
									style="border-color: white; background-color: black; color: white; WIDTH: 80pt; HEIGHT: 30pt"
									type="button" class="btn center"
									onclick="location.href='mypage_order'">돌아가기</button>
							</div>
						</div>
						</c:if>
					</form>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<!-- Bootstrap core JavaScript -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

	<script type="text/javascript">
		function Joinout() {

			var joinout_check = $('#joinout_check');
			var joinout_reason = document.joinout.joinout_reason.value;
			

			if ($(':radio[name="joinout_check"]:checked').length < 1) {
				alert("주의사항 확인 후 확인란에 체크해주세요");
				return;
			}
			if (joinout_reason=="") {
				alert("탈퇴사유를 선택해주세요.");
				document.joinout.joinout_reason.focus();
				return false;
			}

			//셀렉트박스도 선택 안하면 alert창 뜨게 하고 싶었는데 찾아보고 적용해도 안떠서 더 알아보고 할게
			document.joinout.submit();
		}
	</script>





	<%@ include file="./footer.jsp"%>
</body>

</html>
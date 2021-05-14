<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
div.join_out{
margin-top: 80px;
}

.joinout_textlist {
	padding-top: 70px;
}

div.check{
padding-top: 25px;
padding-bottom: 25px;
float: left;
margin-left: 800px;
}

div.joinout_reason{
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
		<h3 id="join_out_title" style="float: left; margin-top:15px; margin-left: 870px;">회원 탈퇴</h3>
		<div class="join_out container col-lg-12">
		<div class="joinout_textbox container col-lg-12"
			style="border: 1px solid black; padding: 20px; width: 900px; height: 300px; text-align: center;">
			<br>
			<h4 class="font_thank" style="display: inline-block; color: black;">그동안
				JFactory를 이용해주셔서 감사합니다.</h4>
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

		<div class="joinout_reason container col-lg-12" style="width: 1000px; height: 250px;">
			<table class="table" id="joinout_table">
				<thead class="table-header-bg" style="background-color: #e6e6fa">
					<tr>
						<th>탈퇴사유</th>
						<th>남기고 싶은 의견</th>
				<tbody>
					<tr>
						<td>
						<select>
								<option value="1">개인정보 유출이 우려되어서</option>
								<option value="2">제이팩토리 제품및 서비스를 더이상 사용하지 않아서</option>
								<option value="3">제이팩토리의 서비스에 불만족해서</option>
								<option value="4">광고 메일 및 문자가 귀찮아서</option>
								<option value="etc">기타<option>
						</select>
						</td>
						<td>
						<input type="text" style="width: 400px; height: 30px;">
						</td>
					</tr>
				</tbody>
			</table>
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



		<%@ include file="./footer.jsp"%>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<body>
<style>
    
    table{
    	border:solid #E6E6FA;;
    	table-layout:fixed;
    	border-collapse:separate;
    }
</style>
    
    <br/><br/>
    
		<div class="container">
		    <div class="row">
		    	<div class="col-lg-6">
			    	<table width="1100" height="500"  bordercolor=lightblue>
					    <tbody>
							    <td> 
							    		<h2 align="center"> 그동안 JFACTORY를 이용해주셔서 감사합니다.</h2>
										<h2 align="center"> 회원탈퇴 전 <strong>다음 사항을 꼭 숙지하시기 </strong> 바랍니다.</h2><br>
										<div class="ml-4">
											<h5>● 취소한 주문이 있을 경우, 주문상태가 '환불완료'로 변경되었는지 확인 후 탈퇴해주시길 바랍니다.</h5>
											<h5>● 진행중인 구매내역이 있을 경우 회원 탈퇴가 불가능하며 거래 완료 후 탈퇴 하실 수 있습니다.</h5>
											<h5>● 탈퇴 시, 포인트 및 이용내역이 소멸되며 추후 복구가 불가능합니다.</h5>
										</div>	
							    </td>
							    
					    </tbody>
			   		</table>
					<br>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="optradio"> 위의 주의사항을 모두 확인하였습니다.
				  </label>
				</div>
				<br>
				<label>탈퇴 사유</label>
				<select id="reason" name="reason" style="width:540px;height:50px;">
								<option>탈퇴 사유를 선택해주세요.</option>
								<option value="1">개인정보 유출이 우려되어서</option>
								<option value="2">제이팩토리 제품 및 서비스를 더이상 사용하지 않아서</option>
								<option value="3">제이팩토리의 서비스에 불만족해서</option>
								<option value="4">기타</option>
				</select>
				<br>
				<div class="form-group " >
		 			<label for="comment">의견</label>
		  			<textarea class="form-control" rows="5" id="comment"></textarea>
				</div>
				
				<button class="btn btn-primary">탈퇴</button>
				<button class="btn btn-secondary" onclick="location.href">취소</button>
			</div>
		</div>

</div>
<%@ include file="./footer.jsp" %>

</body>

</html>
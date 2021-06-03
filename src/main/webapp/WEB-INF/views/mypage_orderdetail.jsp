<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
table.t1 {border: #d3d3d3 solid; border-width: 1px 0px 1px 0px}
table.t2 {border: #000000 solid; border-width: 0px 1px 0px 1px}
table {
  border-collapse: separate;
  border-spacing: 0 10px;
}
</style>
<body>
<div class="container">
<div class="row" >

    <div class="col-sm-2">
    <br/>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_order">주문내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_view">최근 본 상품</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_review">내가 작성한 리뷰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_ask">문의내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_coupon">보유쿠폰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="information_check">회원정보수정</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
 <div class="col-sm-10"><br/>
      <h4><strong>주문 정보</strong></h4><br/>
      <%
      	String or_id=request.getParameter("or_id");
      %>
       <div class="mb-5">
                            <div class="memberManager">    
								<table class="t1" style="width:920px" >
							<colgroup>
								<col style="width:25px;">
								<col style="width:25px;">
							</colgroup>
							<tbody>
								<tr>
                                    <th scope="row" style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주문번호</th>
                                    <td><%=or_id %></td>
								</tr>
								<tr>
									<th scope="row" style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주문일</th>
									<td><c:out value="${ordermemdetail.getOr_datetime() }"/></td>
								</tr>
								<tr>
									<th scope="row" style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주문상태</th>
									<td><c:out value="${ordermemdetail.getOr_cancel_state() }"/></td>
								</tr>
							</tbody>
						</table>
		  </div>
		  <br/><br/>
		  <h4 class="subTitle2"><strong>주문 상품 정보</strong></h4><br/>
					<div class="tableType noLine noPdg">
						<table class="t1" style="width:920px" >
							<colgroup>
								<col style="width:40%;">
								<col style="width:10%;">
								<col style="width:15%;">
								<col style="width:15%;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" style="text-align:center;font-weight: normal">제품명</th>
									<th scope="col"style="text-align:center;font-weight: normal">수량</th>
									<th scope="col"style="text-align:center;font-weight: normal">판매가</th>
									<th scope="col"style="text-align:center;font-weight: normal">구매후기</th>
								</tr>
							</thead>
							<tbody class="center">
							<c:forEach items="${orderdetailList}" var="ordetailList">
								<tr>
									<td class="pdtCont"style="text-align:center">
									<a style="color:black; text-decoration:none "href="product_detail?pd_name=${ordetailList.getPd_name()}">
											<img src = '<c:url value="/resources/image/product/${ordetailList.getPd_img() }"/>' alt="" width="90px">
											<span class="name">
												&nbsp;<c:out value="${ordetailList.getPd_name() }"/>
											</span>
										</a>
									</td>
									<td style="text-align:center"><c:out value="${ordetailList.getPd_amount() }"/></td>
									<td style="text-align:center"><c:out value="${ordetailList.getPd_price() }"/></td>
									<td style="text-align:center">
										
											<button type="button" class="btn"style="border-color:white; background-color:white; font-size:15px; color:black;" onclick="">구매후기</button>
										
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
		</div>
		<br/><br/>
		<input type="hidden" id="or_price" name="or_price" value="${ordermemdetail.getOr_price() }">
		<input type="hidden" id="orr_price" name="orr_price" value="">
		 <h4 class="subTitle2"><strong>총 결제 금액</strong></h4><br/>
					<div class="tableType noLine noPdg">
						<table class="t1" style="width:920px" >
							<colgroup>
								<col style="width:50%;">
								<col style="width:50%;">
							</colgroup>
							<tbody class="center">
								<tr>
									<td style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 주문 금액</td>
									<td style="text-align:right"><label id="alllprice"></label> 원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
								<tr>
									<td style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;배송비</td>
									<td style="text-align:right">2500 원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
								<tr>
									<td style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;최종 결제 금액</td>
									<td style="text-align:right"><c:out value="${ordermemdetail.getOr_price() }"/> 원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
							</tbody>
						</table>
		</div><br/><br/>
		<h4 class="subTitle2"><strong>내 배송지 정보</strong></h4><br/>
					<div class="tableType noLine">
						<table id="rcvTable" class="t1" style="width:920px" >
							<colgroup>
								<col style="width:20px;">
								<col style="width:25px">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;받으실 분</th>
									<td>
										<c:out value="${ordermemdetail.getBuy_realname() }"/>
									</td>
								</tr>
								<tr>
									<th scope="row"style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소</th>
									<td class="deliveryWriteWrap">
									<c:out value="${ordermemdetail.getBuy_zipcode() }"/><br/>
									<c:out value="${ordermemdetail.getBuy_address1() }"/><br/>
									<c:out value="${ordermemdetail.getBuy_address2() }"/>
									</td>
								</tr>
								<tr>
									<th scope="row"style="font-weight: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;휴대폰번호</th>
									<td>0<c:out value="${ordermemdetail.getBuy_phone() }"/></td>
								</tr>
							</tbody>
						</table>
					</div>
	</div><br/>
	<div  align="center">
      <button style="border-color:white; background-color:#e6e6fa; color:black; WIDTH: 150pt; HEIGHT: 40pt" type="button" class="btn btn-secondary btn-lg" onclick="location.href='mypage_order'">목록보기</button>
      <button style="border-color:white; background-color:black; color:white; WIDTH: 150pt; HEIGHT: 40pt " type="button" class="btn btn-secondary btn-lg" onclick="cancel(<%=or_id %>)">주문취소</button>
   <br/><br/><br/><br/>
    </div>
	</div></div>
	
	
	</div>
	  <br/><br/><br/>
<script>
	function cancel(or_id) {
		var chk = confirm("주문을 취소하시겠습니까?");
		if (chk) {
			location.href='ggg?or_id='+or_id;
		}
	}	
</script>
<script>
$(document).ready(function() {
	  var allprice = parseInt(document.getElementById("or_price").value);

	  let price = allprice-2500;
	  document.getElementById('alllprice').innerText = price;
	  $("#orr_price").attr("value", price);
	});

</script>
<%@ include file="./footer.jsp"%>
</body>

</html>
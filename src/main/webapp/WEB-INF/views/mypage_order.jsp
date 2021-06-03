 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
<div class="container">
<div class="row" >
    <div class="col-sm-2">
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
 <div class="col-sm-10">
      <h2>주문내역</h2><br/>
       <div class="mb-5">
                            <div class="memberManager">    
								<table class="table table-hover" id="memberList">  
									<thead>
										<tr>
											<th>주문일자</th>
											<th>주문번호</th> 
											<th>결제금액</th>
											<th>처리현황</th>
											
										</tr>
									</thead>
										<tbody>
											<c:forEach items="${orderList}" var="orderList">
							<tr onClick="location.href='mypage_orderdetail?or_id=${orderList.getOr_id()}'">
								<td><c:out value="${orderList.getOr_datetime()}"/></td>
								<td><c:out value="${orderList.getOr_id() }"/></td>
								<td><c:out value="${orderList.getOr_price() }"/> 원</td>
								<td><c:if test="${orderList.getOr_cancel_state() eq 1}">배송중</c:if>
									<c:if test="${orderList.getOr_cancel_state() eq 0}">결제완료</c:if></td>
							</tr>
						</c:forEach>
									</tbody>
								</table>
							</div>
		  </div>
		   
		</div>
	</div>
	</div>
	  <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

<%@ include file="./footer.jsp"%>
</body>

</html>
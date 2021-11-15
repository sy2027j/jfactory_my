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
    <div class="col-sm-2"><br/>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_order">주문내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_review">내가 작성한 리뷰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_ask">문의내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="information_check">회원정보수정</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
 <div class="col-sm-10">
      <br/><h4><strong>주문내역</strong></h4> 상세 주문내역에서 리뷰를 작성할 수 있습니다.<br/><br/>
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
							<tr onClick="location.href='/ex/mypage_orderdetail?or_id=${orderList.getOr_id()}'">
								<td><c:out value="${orderList.getOr_datetime()}"/></td>
								<td><c:out value="${orderList.getOr_id() }"/></td>
								<td><c:out value="${orderList.getOr_price() }"/> 원</td>
								<td><c:if test="${orderList.getOr_cancel_state() eq 1}">주문 취소</c:if>
									<c:if test="${orderList.getOr_cancel_state() eq 0}">결제 완료</c:if></td>
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
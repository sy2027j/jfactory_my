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
      <ul class="nav nav-pills flex-column" style="background-color:#e6e6fa;">
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
 <div class="col-sm-8">
      <h2>주문내역</h2>
      <hr>
       <div class="mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                	주문내역 
                            </div>
                            <div class="memberManager">    
								<table class="table table-hover" id="memberList">  
									<thead>
										<tr>
											<th>구매날짜</th>
											<th>상품명</th>
											<th>수량</th>  
											<th>금액</th>
											<th>주문상태</th>
											
										</tr>
									</thead>
										<tbody>
											
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
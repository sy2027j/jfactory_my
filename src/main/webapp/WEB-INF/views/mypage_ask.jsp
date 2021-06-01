<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp" %>
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
      <h2>문의내역</h2>
      <hr>
       <div class="mb-8">
                            <div class="memberManager">    
								<table class="table table-bordered" id="memberList">  
									<thead>
										<tr>
											<th>번호</th>
											<th style="width:70%">제목</th>
											<th>날짜</th>
											<th>답변상태</th> 
											
										</tr>
									</thead>
								</table>
							</div>
		  </div>
		   
		</div>
	</div>
	</div>
	<%@ include file="./footer.jsp"%>
</body>

</html>
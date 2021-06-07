<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp" %>
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
      <br/><h4><strong>내가 쓴 리뷰</strong></h4><br/>
       <div class="mb-5">
                            <div class="memberManager">    
								<table class="table table-hover" id="memberList">  
									<thead>
										<tr>
											<th style="text-align:center;width:60px;">상품명</th> 
											<th style="text-align:center;width:20px;">별점</th>
											<th style="text-align:center;width:20px;">작성날짜</th>
											<th style="text-align:center;width:20px;">조회수</th>
										</tr>
									</thead>
										<tbody>
											<c:forEach items="${myreList}" var="myreList">
							<tr onClick="location.href='review_view?re_no=${myreList.getRe_no() }'">
								<td style="text-align:center;"><c:out value="${myreList.getPd_name() }"/></td>
								<td style="text-align:center;"><c:out value="${myreList.getRe_score() }"/></td>
								<td style="text-align:center;"><c:out value="${myreList.getRe_datetime() }"/></td>
								<td style="text-align:center;"><c:out value="${myreList.getRe_count() }"/></td>
							</tr>
						</c:forEach>
									</tbody>
								</table>
							</div>
		  </div>
		   
		</div>
		   
		</div>
		
		</div><br/><br/><br/><br/><br/><br/><br/><br/>

	<%@ include file="./footer.jsp"%>
</body>

</html>
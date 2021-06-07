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
      <br/><h4><strong>문의 내역</strong></h4><br/>
       <div class="mb-5">
                            <div class="memberManager">    
								<table class="table table-hover" id="memberList">  
									<thead>
										<tr>
											<th style="text-align:center;width:60px;">제목</th> 
											<th style="text-align:center;width:20px;">등록일</th>
											<th style="text-align:center;width:20px;">답변상태</th>
											
										</tr>
									</thead>
										<tbody>
											<c:forEach items="${askList}" var="askList">
							<tr onClick="location.href='cm_qna_view?qna_no=${askList.getQna_no()}'">
								<td style="text-align:center;"><c:out value="${askList.getQna_title() }"/></td>
								<td style="text-align:center;"><c:out value="${askList.getQna_datetime() }"/></td>
								<td style="text-align:center;"><c:if test="${askList.getQna_response() eq 1}"><span style="color: blue">답변완료</span></c:if>
									<c:if test="${askList.getQna_response() eq 0}"><span style="color: red">답변아직</span></c:if></td>
							</tr>
						</c:forEach>
									</tbody>
								</table>
							</div>
		  </div>
		   
		</div><br/><br/><br/><br/><br/>
	</div>
	</div><br/><br/><br/><br/><br/>
	<%@ include file="./footer.jsp"%>
</body>

</html>
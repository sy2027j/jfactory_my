<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<style>
p {
   margin: 20px 0px;
}
div.box-footer{
    position: absolute;
    left: 38%;
}
div.row{
padding-bottom: 5%;
}
</style>
<hr>
<script type="text/javascript">
   var starscore = document.getElementById("starscore");

   if (starscore.value == "6") {
      $("#starscore2").attr("value", "a");
   } else {
      $("#starscore2").attr("value", "a");
   }

   var re_score = document.getElementById("re_score");
</script>
<div class="container">
   <br />
   <h3 align="center">BEST 리뷰</h3>
   <br /> <br />

   <div class="row">
      <c:forEach items="${BestReview}" var="bestre">
         <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
            <div class="card h-100">
               <a href="review_view?re_no=${bestre.getRe_no() }"><img
                  src='<c:url value="/resources/image/review/${bestre.getRe_stored_file() }"/>'
                  width="253px" height="253px"></a>
               <div class="card-body">
                  <h5 class="card-title">
                     <a href="review_view?re_no=${bestre.getRe_no() }"><span
                        style="color: black; font-size: 10pt">${bestre.getPd_name() }</span></a><br />
                     <a href="review_view?re_no=${bestre.getRe_no() }"><span
                        style="color: black; font-size: 15pt">${bestre.getRe_title() }</span></a><br />
                  </h5>
                  <span style="color: black; font-size: 10pt">만족도
                     ${bestre.getRe_score() }</span> <input type="hidden" id="starscore"
                     name="starscore" value="${bestre.getRe_score() }"> <input
                     type="hidden" id="starscore2" name="starscore2" value=""
                     style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;">
                  <p class="card-text">
                     <span style="color: black; font-size: 10pt">${bestre.getMem_id() }<br />
                        👀 ${bestre.getRe_count() }
                     </span>
                  </p>
               </div>
            </div>
         </div>
      </c:forEach>
   </div>

   <br />
   <!-- Pagination -->
   <div style="text-align: center;">
      <button
         style="border-color: black; background-color: white; color: black; WIDTH: 200pt; HEIGHT: 40pt"
         type="button" class="btn btn-secondary btn-lg"
         onclick="location.href='mypage_order'">
         <span style="float: center; font-size: 13pt">리뷰 작성하고 적립금 받기</span>
      </button>
   </div>
   <br /> <br />
</div>
<hr>
<div class="container">
   <br /> <br />
   <h3 align="center">전체 리뷰</h3>
   <br /> <br />

   <div class="row">
      <c:forEach items="${ReviewList}" var="relist">
         <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
            <div class="card h-100">
               <a href="review_view?re_no=${relist.getRe_no() }"><img
                  src='<c:url value="/resources/image/review/${relist.getRe_stored_file() }"/>'
                  width="253px" height="253px"></a>
               <div class="card-body">
                  <h5 class="card-title">
                     <a href="review_view?re_no=${relist.getRe_no() }"><span
                        style="color: black; font-size: 10pt">${relist.getPd_name() }</span></a><br />
                     <a href="review_view?re_no=${relist.getRe_no() }"><span
                        style="color: black; font-size: 15pt">${relist.getRe_title() }</span></a><br />
                  </h5>
                  <span style="color: black; font-size: 10pt">만족도
                     ${relist.getRe_score() }</span> <input type="hidden" id="starscore"
                     name="starscore" value="${relist.getRe_score() }"> <input
                     type="hidden" id="starscore2" name="starscore2" value=""
                     style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;">
                  <p class="card-text">
                     <span style="color: black; font-size: 10pt">${relist.getMem_id() }<br />
                        👀 ${relist.getRe_count() }
                     </span>
                  </p>
               </div>
            </div>
         </div>
      </c:forEach>
   </div>
   <div class="box-footer">
         <div class="text-center">
            <ul class="pagination">
               <!-- 이전prev -->
               <c:if test="${pm.prev }">
                  <li class="page-item"><a class="page-link"
                     href="review?page=${pm.startPage-1}">&laquo;</a></li>
               </c:if>
               <!-- 페이지블럭 -->
               <c:forEach var="idx" begin="${pm.startPage }" end="${pm.endPage }">
                  <li class="page-item"><a class="page-link"
                     href="review?page=${idx }">${idx}</a></li>
               </c:forEach>
               <!-- 다음next -->
               <c:if test="${pm.next && pm.endPage > 0}">
                  <li class="page-item"><a class="page-link"
                     href="review?page=${pm.endPage+1}">&raquo;</a></li>
               </c:if>
            </ul>
         </div>
      </div>
</div>



<br/>

<br/>

<br/>

<br/>
<%@ include file="./footer.jsp"%>
</body>
</html>
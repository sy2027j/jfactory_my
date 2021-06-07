<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
  <%
     String keyword=request.getParameter("keyword");
  %>
  <div class="container">
    <h3 class="mt-4 mb-3">
      검색결과: <%=keyword %>
    </h3>
    <br>
    <br>
    <h3 class="mt-4 mb-3">상품</h3>
    <div class="row">
    <c:forEach items="${searchProductlist}" var="searchProductlist">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${searchProductlist.getPd_name()}'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${searchProductlist.getPd_main_stored_file() }"/>' alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="product_detail"><span style="color:black; font-size:15pt">${searchProductlist.getPd_name() }</span></a>
            </h5>
            ${searchProductlist.getPd_price() }원
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
    <hr>
    <h3 class="mt-4 mb-3">리뷰</h3>
    <div class="row">
     <c:forEach items="${searchreviewlist}" var="searchreviewlist">
         <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
            <div class="card h-100">
               <a href="review_view?re_no=${searchreviewlist.getRe_no() }"><img
                  src='<c:url value="/resources/image/review/${searchreviewlist.getRe_stored_file() }"/>'
                  width="253px" height="253px"></a>
               <div class="card-body">
                  <h5 class="card-title">
                     <a href="review_view?re_no=${searchreviewlist.getRe_no() }"><span
                        style="color: black; font-size: 10pt">${searchreviewlist.getPd_name() }</span></a><br />
                     <a href="review_view?re_no=${searchreviewlist.getRe_no() }"><span
                        style="color: black; font-size: 15pt">${searchreviewlist.getRe_title() }</span></a><br />
                  </h5>
                  <span style="color: black; font-size: 10pt">만족도
                     ${searchreviewlist.getRe_score() }</span> <input type="hidden" id="starscore"
                     name="starscore" value="${searchreviewlist.getRe_score() }"> <input
                     type="hidden" id="starscore2" name="starscore2" value=""
                     style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;">
                  <p class="card-text">
                     <span style="color: black; font-size: 10pt">${searchreviewlist.getMem_id() }<br />
                        👀 ${searchreviewlist.getRe_count() }
                     </span>
                  </p>
               </div>
            </div>
         </div>
      </c:forEach>
    </div>

  </div>

<%@ include file="./footer.jsp" %>
</body>
</html>
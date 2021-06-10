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
    <h3 class="mt-4 mb-3" style="padding-top: 3%;">
      상품명: <%=keyword %>
    </h3>
    <div id=review style="padding-top: 2%; padding-bottom: 10%;">
    <h4 class="mt-4 mb-3">리뷰</h4>
    <div class="row">
     <c:forEach items="${productreviewlist}" var="productreviewlist">
         <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
            <div class="card h-100">
               <a href="review_view?re_no=${productreviewlist.getRe_no() }"><img
                  src='<c:url value="/resources/image/review/${productreviewlist.getRe_stored_file() }"/>'
                  width="253px" height="253px"></a>
               <div class="card-body">
                  <h5 class="card-title">
                     <a href="review_view?re_no=${productreviewlist.getRe_no() }"><span
                        style="color: black; font-size: 10pt">${productreviewlist.getPd_name() }</span></a><br />
                     <a href="review_view?re_no=${productreviewlist.getRe_no() }"><span
                        style="color: black; font-size: 15pt">${productreviewlist.getRe_title() }</span></a><br />
                  </h5>
                  <span style="color: black; font-size: 10pt">만족도
                     ${productreviewlist.getRe_score() }</span> <input type="hidden" id="starscore"
                     name="starscore" value="${productreviewlist.getRe_score() }"> <input
                     type="hidden" id="starscore2" name="starscore2" value=""
                     style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;">
                  <p class="card-text">
                     <span style="color: black; font-size: 10pt">${productreviewlist.getMem_id() }<br />
                        👀 ${productreviewlist.getRe_count() }
                     </span>
                  </p>
               </div>
            </div>
         </div>
      </c:forEach>
    </div>
    </div>

  </div>

<%@ include file="./footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>
  <%
  	String pd_category=request.getParameter("pd_category");
  	String engname=request.getParameter("engname");
  %>
  <div class="container">
    <h3 class="mt-4 mb-3"><%=pd_category %>
      <small><%=engname %></small>
    </h3>

    <ol class="breadcrumb" style="background-color:#e6e6fa;">
      <li class="breadcrumb-item">
        <a href="index.html"><span style="color:gray">JFactory</span></a>
      </li>
      <li class="breadcrumb-item active"><span style="color:gray">카테고리</span></li>
      <li class="breadcrumb-item active"><span style="color:black"><%=pd_category %></span></li>
    </ol>
  
    
		<br/>

    <div class="row">
    <c:forEach items="${Productlist}" var="pdlist">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${pdlist.getPd_name()}'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${pdlist.getPd_main_stored_file() }"/>' alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">${pdlist.getPd_name() }</span></a>
            </h5>
            ${pdlist.getPd_price() }원
          </div>
        </div>
      </div>
      </c:forEach>
    </div>

    <!-- Pagination -->
    <ul class="pagination justify-content-center">
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">Previous</span>
        </a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">1</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">2</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">3</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only">Next</span>
        </a>
      </li>
    </ul>

  </div>

<%@ include file="./footer.jsp" %>
</body>
</html>
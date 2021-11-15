<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<hr>

  <div class="container">

	<br/><br/>
    <h3 align="center"> ★ BEST ★</h3>
    <h6 align="center">제이팩토리에서 지금 가장 핫한 제품을 만나보세요!</h6>
	<br/><br/></div><hr>
	<br/><br/>
	
	<%
		String category = request.getParameter("pd_category");
	%>
	
	<div class="container">
	<ol class="breadcrumb"  style="background-color:#e6e6fa;">
      <li class="breadcrumb-item">
        <a href="index.html"><span style="color:gray">JFactory</span></a>
      </li>
      <li class="breadcrumb-item active"><span style="color:gray">베스트</span></li>
      <li class="breadcrumb-item active"><span style="color:black"><%= category %></span></li>
    </ol>
	<br/><br/><br/>
    <!-- Marketing Icons Section -->
    <div class="row">
    <c:forEach items="${bestlist}" var="bestlist">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${bestlist.getPd_name()}&pd_category=<%=category%>'">
      	
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${bestlist.getPd_main_stored_file() }"/>' alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">${bestlist.getPd_name() }</span></a>
            </h5>
            ${bestlist.getPd_price() }원
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
    <br/><br/><br/><br/><br/><br/><br/><br/>
  </div>

<%@ include file="./footer.jsp" %>
</body>
</html>
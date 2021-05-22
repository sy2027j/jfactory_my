<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>JFactory 관리자</title>
        <link href='<c:url value="/resources/css/styles.css"/>' rel="stylesheet">
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-light" style="background-color:#E6E6FA; " >
            <a class="navbar-brand" href="index.html">JFACTORY</a>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto ">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="검색창" aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            
            <!-- Navbar-->
            
            <ul class="navbar-nav ml-auto ml-md-0">
            <c:if test="${ member != null }">
            	<button type="button" class="btn btn-link disabled" onclick="location.href='mypage_order'"><span style="color:black; font-size:10pt">${member.mem_realname }님</span></button>
                 <button type="button" class="btn btn-link" onclick="location.href='#'"><span style="color:black; font-size:10pt">로그아웃</span></button>
			</c:if>

            </ul>
        </nav>
        
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav sb-sidenav-light" style="background-color:#E6E6FA;">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">회원관리
                               <span style="color:black; font-size:15pt">
                            </div>
                               <a class="nav-link" href="index">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                     회원조회
                               </a>
                                <a class="nav-link" href="admin_index">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                     관리자 추가 / 삭제
                               </a>
                            <div class="sb-sidenav-menu-heading">주문관리</div>
                               <a class="nav-link" href="order_index">
                                   <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                   주문조회
                                 </a>  
                                <a class="nav-link" href="order_cancel_index">
                                   <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                   주문취소관리
                                 </a> 
                                 <a class="nav-link" href="order_return_index">
                                   <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                   반품관리
                                 </a> 
                            <div class="sb-sidenav-menu-heading">제품관리</div>
                               <a class="nav-link" href="pd_add">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                   제품   
                               </a>
                               <a class="nav-link" href="pd_index">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                   재고관리
                                 </a>
                              <div class="sb-sidenav-menu-heading">커뮤니티</div>
                               <a class="nav-link" href="cm_qna">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                   Q&A   
                               </a>
                               <a class="nav-link" href="cm_review">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                   리뷰
                                 </a>   
                              <div class="sb-sidenav-menu-heading">통계</div>
                               <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                   판매현황   
                               </a>
                               <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                   상품별 현황
                                 </a>
                                 <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                   고객 현황
                                 </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        JFACTORY
                    </div>
                </nav>
            </div>
             <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <link href='<c:url value="/resources/js/scripts.js"/>' rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <link href='<c:url value="/resources/assets/demo/chart-area-demo.js"/>' rel="stylesheet">
        <link href='<c:url value="/resources/assets/demo/chart-bar-demo.js"/>' rel="stylesheet">
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <link href='<c:url value="/resources/assets/demo/datatables-demo.js"/>' rel="stylesheet">
    </body>
</html>
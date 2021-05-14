<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>JFactory Site</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/modern-business.css" rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
    <div class="container" style="text-align: center; margin: 0auto;">
      <button type="button" class="btn btn-link" onclick="location.href='login'"><span style="color:black; font-size:10pt">로그인</span></button>
      <button type="button" class="btn btn-link" onclick="location.href='join'"><span style="color:black; font-size:10pt">회원가입 </span></button>
      <button type="button" class="btn btn-link" onclick="location.href='mypage_order'"><span style="color:black; font-size:10pt">마이페이지</span></button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav mx-auto">
              <h1><a class="navbar-brand " href="index.html">JFactory</a></h1>
          </ul>
          <form class="form-inline form-navbar-right ">
      <input class="form-control mr-sm-2" type="text" placeholder="검색창">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit"><span style="font-size:10pt">검색</span></button>
    </form>
    <button type="button" class="btn btn-link" onclick="location.href='cart'"><span style="color:black; font-size:10pt">장바구니</span></button>
      </div>
    </div>
  </nav>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light bg-white ">
    <div class="container">
        <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownCategory" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          	   카테고리
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownCategory">
              <a class="dropdown-item" href="eye_product_list">아이</a>
              <a class="dropdown-item" href="lip_product_list">립</a>
              <a class="dropdown-item" href="face_product_list">페이스</a>
              <a class="dropdown-item" href="skin_product_list">스킨케어</a>
              <a class="dropdown-item" href="clean_product_list">클렌징</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          	    베스트
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="best_all">전체</a>
              <a class="dropdown-item" href="best_eye">아이</a>
              <a class="dropdown-item" href="best_lip">립</a>
              <a class="dropdown-item" href="best_face">페이스</a>
              <a class="dropdown-item" href="best_skin">스킨케어</a>
              <a class="dropdown-item" href="best_clean">클렌징</a>
            </div>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="mypalette">★ 나만의 팔레트 ★</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPages" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              	커뮤니티
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPages">
              <a class="dropdown-item" href="community_qna">QnA</a>
              <a class="dropdown-item" href="review">리뷰</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
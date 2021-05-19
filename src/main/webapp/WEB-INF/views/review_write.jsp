<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>JFactory Site</title>
 <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/js/jquery-1.11.3.min.js"></script>
  <script src="resources/js/star.js"></script>
  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
  <link href="resources/css/star.css" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
    <div class="container">
      <button type="button" class="btn btn-link" onclick="location.href='login'"><span style="color:black; font-size:10pt">로그인</span></button>
      <button type="button" class="btn btn-link" onclick="location.href='join'"><span style="color:black; font-size:10pt">회원가입 </span></button>
      <button type="button" class="btn btn-link" onclick="location.href='mypage'"><span style="color:black; font-size:10pt">마이페이지</span></button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav mx-auto">
              <a class="navbar-brand " href="index.html">JFactory</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
          </ul>
          <form class="form-inline form-navbar-right ">
      <input class="form-control mr-sm-2" type="text" placeholder="검색창">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit"><span style="font-size:10pt">검색</span></button>
    </form>
    <button type="button" class="btn btn-link" onclick="location.href='basket'"><span style="color:black; font-size:10pt">장바구니</span></button>
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
  <hr>
  
  <header>
    
  </header>
  	<div class="container">
  	
  	<div class="container-fluid">
                        <h1 class="mt-4">REVIEW</h1> <br/>
                      </div>
            <div class="col-lg-12"> 
            <form role="form" id="writeForm" name="writeForm" method="post" action="review_write"> 
            <div class="card"> <div class="card-header"> 
            <h3 class="card-title">리뷰 작성</h3> </div> <div class="card-body"> 
            <input type="hidden" name="article_no" value="${article.article_no}"> 
            <div class="form-group"> <label for="title">작성자</label> 
            <input class="form-control" id="mem_id" name="mem_id"> </div> 
            <div class="form-group"> <label for="title">제목</label> 
            <input class="form-control" id="re_title" name="re_title" placeholder="제목을 입력해주세요" value="${article.title}"> </div> 
            <div class="form-group"> <label for="writer">제품명</label> <br/>
          
			<select id="d" name="d" size="1" style="width:1030px;height:40px;" class="form-control">
			<option value="정렬">제품을 선택해주세요</option>
			<option value="dkddsda">구매한 제품 리스트</option>
			<option value="리뷰 많은 순">배송 문의</option>
			<option value="가격 높은 순">반품 문의</option>
			<option value="가격 낮은 순">기타 문의</option>
			</select>
			</div> 
			<div class="form-group"> <label for="title">만족도</label> <br/>
			<span class="star-input">
  				<span class="input">
    					<input type="radio" name="starscore" id="p1" value="1"><label for="p1">1</label>
    					<input type="radio" name="starscore" id="p2" value="2"><label for="p2">2</label>
    					<input type="radio" name="starscore" id="p3" value="3"><label for="p3">3</label>
    					<input type="radio" name="starscore" id="p4" value="4"><label for="p4">4</label>
    					<input type="radio" name="starscore" id="p5" value="5"><label for="p5">5</label>
    					<input type="radio" name="starscore" id="p6" value="6"><label for="p6">6</label>
    					<input type="radio" name="starscore" id="p7" value="7"><label for="p7">7</label>
    					<input type="radio" name="starscore" id="p8" value="8"><label for="p8">8</label>
    					<input type="radio" name="starscore" id="p9" value="9"><label for="p9">9</label>
    					<input type="radio" name="starscore" id="p10" value="10"><label for="p10">10</label>
  				</span>
  					<output for="star-input"><b>0</b>점</output>
			</span>
            </div>  
            <input type="hidden" name="re_score" id="re_score" value=""> 
            
            <div class="form-group"> <label for="content">내용</label> 
            <textarea class="form-control" id="re_content" name="re_content" rows="30" placeholder="내용을 입력해주세요" style="resize: none;">${article.content}</textarea> </div> 
            
            <div class="inputArea">
 			<label for="gdsImg">이미지</label>
 			<input type="file" id="gdsImg" name="file" />
 			<div class="select_img"><img src="" /></div>
 
 			<script>
  				$("#gdsImg").change(function(){
   				if(this.files && this.files[0]) {
    				var reader = new FileReader;
    				reader.onload = function(data) {
     					$(".select_img img").attr("src", data.target.result).width(500);        
    					}
    				reader.readAsDataURL(this.files[0]);
   					}
  				});
 			</script>
 			<%=request.getRealPath("/") %>
			</div>
            
            </div> <div class="card-footer">
            <div class="float-right"> <button type="button" class="btn btn-warning cancelBtn"><i class="fa fa-trash"></i> 취소</button> 
            <button type="button" class="btn btn-success modBtn" onclick="getGender();"><i class="fa fa-save"></i>등록</button>
            
             </div> </div> </div> </form>
            
            
             </div>
                        
                    </div>
             <br/> 
                
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
                
                  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/js/jquery-1.11.3.min.js"></script>
  <script src="resources/js/star.js"></script>
  
  <script type="text/javascript">
  function getGender(){
	  var re_title=document.getElementById("re_title");
	  var re_content=document.getElementById("re_content");
	  var d=document.getElementById("d");
	  
  var obj_length = document.getElementsByName("starscore").length;
  
  for (var i=0; i<obj_length; i++) {
      if (document.getElementsByName("starscore")[i].checked == true) {
    	  $("#re_score").attr("value", document.getElementsByName("starscore")[i].value);
      }}
  
  var re_score=document.getElementById("re_score");
  
  if(re_title.value==""){
	  alert("제목을 입력하세요.");
	  re_title.focus();
	  return false;
  };
  
  if(re_score.value==""){
	  alert("만족도를 선택하세요.");
	  re_score.focus();
	  return false;
  };
  
  if(re_content.value==""){
	  alert("내용을 입력하세요.");
	  re_content.focus();
	  return false;
  };
  
  	document.writeForm.submit();
  }
  </script>
</body>

</html>

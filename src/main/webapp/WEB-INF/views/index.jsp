<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ include file="./header.jsp"  %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script> 
    //쿠키설정   
    
    function setCookie( name, value, expiredays ) {
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';'
    }

    //쿠키 불러오기
    function getCookie(name) 
    { 
        var obj = name + "="; 
        var x = 0; 
        while ( x <= document.cookie.length ) 
        { 
            var y = (x+obj.length); 
            if ( document.cookie.substring( x, y ) == obj ) 
            { 
               
                if ((endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
                    endOfCookie = document.cookie.length;
                
                return unescape( document.cookie.substring( y, endOfCookie ) ); 
            } 
            x = document.cookie.indexOf( " ", x ) + 1; 
            
            if ( x == 0 ) break; 
        } 
        return ""; 
    }

    //닫기 버튼 클릭시
    function closeWin(key)
    {
        if($("#todaycloseyn").prop("checked"))
        {
            setCookie('divpop'+key, 'Y' , 1 );
        }
        $("#divpop"+key+"").hide();
    }
  
    $(function(){    
        if(getCookie("divpop1") !="Y"){

           
            $("#divpop1").show();
        }
    });
    
    
</script>

<style>
  .divpop {
      position: absolute; z-index:999; top:100px; left:50px;
      width:490px; height:540px; border:1px solid black; background-color:white;display:none;
  }
  .title_area {font-weight:bold;text-align:center;width:100%}
  .button_area {position:absolute;bottom:0;left:10px;} 
</style>
<!-- <script language="JavaScript">window.open("https://i.pinimg.com/originals/10/6d/00/106d004ff16f232f4201568e278ae918.jpg",'_blank','toolbar=no,location=no,status=no,menubar=no, scrollbars=auto,resizable=no,directories=no,width=400,height=400,top=100,left=100')</script>
 -->

</head>

  <form name="notice_form">
      <div id="divpop1" class="divpop">    
          <div class="title_area">이벤트 창 / 공지사항 </div>
          <div>
          <img src="https://images.innisfree.co.kr/upload/mainMng/BM01_288_left_pc.jpg?T202105141337">
          </div>
           <div class="button_area">
               <input type='checkbox' name='chkbox' id='todaycloseyn' value='Y'>오늘 하루 이 창을 열지 않음    
               <a href='#' onclick="javascript:closeWin(1);" style="color:black; align:right"><B>[닫기]</B></a>
           </div>
      </div>
  </form>


  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('https://cdn.iconsumer.or.kr/news/photo/201808/7669_9219_3712.jpg')">
       
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('https://image.freepik.com/free-vector/blue-sky-with-white-clouds-clear-sunny-day-landscape-background-with-clouds-illustration_210544-16.jpg')" onclick="location.href='weather'">
          <div class="carousel-caption d-none d-md-block">
            <h3 style="color:black" align="center" >오늘의 JFactory</h3>
            <p style="color:black">제이팩토리에서 제공하는 날씨에 따른 화장품을 찾아보세요!</p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('https://images.innisfree.co.kr/kr/ko/upload/pdtDetail/makeup/color/myPalette/common01.jpg')" onclick="location.href='mypalette'">
          <div class="carousel-caption d-none d-md-block">
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a> 
    </div>
  </header>



  <!-- Page Content -->
  <c:if test="${ member != null }">
  <div class="container">
   <br/>
    <h2 class="my-4" align="center"> 이 제품은 어떠세요 ?</h2>
    <br/>
    <div class="form-inline" style="text-align: center; margin: 0auto;" >
     <input size=60 maxlength=255 style="width:900px;height:50px;text-align:center;" type="text" placeholder="#20대  #${member.mem_skintype} #${member.mem_skintrouble1} #${member.mem_skintrouble2}" size=10>&nbsp;&nbsp;&nbsp;
      <input style="border-color: white; background-color: black; color: white; WIDTH: 100pt; HEIGHT: 40pt"
          type="submit" name=btnG value="검색"/>
     <input class="form-control" type="text" id="mem_id" name="mem_id" value="${member.mem_id }">
     <input class="form-control" type="text" id="mem_skintype" name="mem_skintype" value="${member.mem_skintype }">
     <input class="form-control" type="text" id="mem_skintrouble1" name="mem_skintrouble1" value="${member.mem_skintrouble1 }">
     <input class="form-control" type="text" id="mem_skintrouble2" name="mem_skintrouble2" value="${member.mem_skintrouble2 }">
    </div>
    
    <br>

    <!-- Marketing Icons Section -->
    
    <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToInib2bl8F2RFgzod2SHmFz6WVDFlo-LnbA&usqp=CAU" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/T90CD2YHD4W7EQTZMIC3.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">멜팅 쉬어 립</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">부드러운 멜팅감</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/BG3A1CRKUQ953E01ZYNZ.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/F9VJYD36635FWBCO071P.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프리즘 하이라이터 듀오</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">쉬머 글로우와 펄 글로우를 하나에</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      
    </div>
</c:if>


<c:if test="${member == null }">
 <div class="container">
		<div class="row" >
		    <div class="col-sm-2"></div>
		</div>
</div>
   			<div class="col-sm-12" style="background-color:#e6e6fa" >
      			  <div class="container">
		    <div class="col-sm-12">
			      <hr style="size: 100%; background-color:white" ><br/>
			      <h3 style="color:black; text-align:center"> 로그인 하시면 <strong>JFACTORY</strong>에서 고객님께 딱! 맞는 제품을 추천해드립니다.</h3><br>
			      <br/>
			           <div align="center">
                        <button
                           style="border-color: white; background-color: #e6e6fa; color: black; WIDTH: 100pt; HEIGHT: 50pt"
                           type="button" class="btn"onclick="location.href='join'">회원가입</button>
                        <button
                           style="border-color: white; background-color: black; color: white; WIDTH: 100pt; HEIGHT: 50pt"
                           type="button" class="btn center" onclick="location.href='login'">로그인</button>
                     </div>
			      <hr style="size: 100%; background-color:white">
				</div>
				</div>
            </div>
   </c:if>
    <br>
    
    <h2 align="center">B E S T</h2>
     <div class="container">
   <br/>
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/DD0MVWC242CLX361R9Y3.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/VZLKDHJ1NU04ZQAXJKKV.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/MSNMNSC891IO7MT7TNYZ.gif" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://img.clubclio.co.kr/uploadFolder/wt_product/300/I6IKJ4SHKW0GDJ4ZEXYU.jpg" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">오투 딥 클렌징 워터</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">상쾌한 원스텝 딥 클렌징 워터</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
     <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaWOisb3h34HYzVcSZY3HMpviLEB7WeZ-qKI2Wj_TEVXsyNIQqzt31ZYSQISM&usqp=CAc" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC9_9zeL2CsjnlCg1tckNKzIKY9M2v4ygDGAjZl_nsPOgQ3kCAx4IkV83qiDKfg6X8NPMlGiQ&usqp=CAc" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcQAPOvLNoz_Wqa3_XXjCmknhozMDi-EXhINggEHd3r5Rs7TUBo-ccPpcFzdH_sFkZPPUM_6A&usqp=CAc" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
     <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0N6YUdE1Dt5YNz5K2jIHOaPYMFH_LD_ib5T41ROEq1b4xmT6m7QS2pxR9c0s&usqp=CAc" alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">프로 아이 팔레트</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">다재다능한 컬러조합</span><br/>
            13000원</p>
          </div>
        </div>
      </div>
    </div>
    </div>
 
<br/><br/>
<%@ include file="./footer.jsp" %>

</body>

</html>
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
        <div class="carousel-item" style="background-image: url('https://t4.ftcdn.net/jpg/01/76/01/51/240_F_176015185_mPGNcaL7WygUCaaNWR5nhiC08H4tboBE.jpg')" onclick="location.href='weather'">
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



  <!-- Page Content -->
  <c:if test="${ member != null }">
  <div class="container">
   <br/>
    <h2 class="my-4" align="center"> ${member.mem_realname }님! 이 제품은 어떠세요?</h2>
    <div class="form-inline" style="text-align: center; margin: 0auto;" >
<!--<input size=60 maxlength=255 style="width:1100px;height:50px;text-align:center;" type="text" value="${member.mem_realname }님은 #${member.mem_skintype} #${member.mem_skintrouble1} #${member.mem_skintrouble2}" readonly size=10&nbsp;&nbsp;&nbsp;>-->
		<h5 style="width: 1100px; height: 60px; text-align: center; border: solid 1px gray; border-radius:10px; margin-top:5px; padding-top:12px">
			${member.mem_realname }님은 
			<c:if test="${member.mem_skintype ne ''}">
				#${member.mem_skintype}
			</c:if>
			<c:if test="${member.mem_skintrouble1 ne ''}">
				#${member.mem_skintrouble1}
			</c:if>
			<c:if test="${member.mem_skintrouble2 ne ''}">
				#${member.mem_skintrouble2}
			</c:if>
			<c:if test="${member.mem_skintype eq '' and member.mem_skintrouble1 eq '' and member.mem_skintrouble2 eq ''}">
				선택하지 않으셨네요. 옵션을 선택해보세요!   <button type="button" class="btn btn-default" onclick="location.href='mypage_information'" style="border-color: white; background-color: #e6e6fa; color: black;">바로가기</button>
			</c:if>
		</h5>
    </div>
    </div>
    <br>

    <!-- Marketing Icons Section -->
    
    <div class="container">
    <div class="row">
    <c:forEach items="${skintypepd }" var="skintype">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${skintype.getPd_name()}&pd_category=${skintype.getPd_category() }'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${skintype.getPd_main_stored_file() }"/>' alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">${skintype.getPd_name() }</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">${skintype.getPd_simplecontent() }</span><br/>
            ${skintype.getPd_price() }원</p>
          </div>
        </div>
      </div>
    </c:forEach>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${troubleo.getPd_name()}&pd_category=${troubleo.getPd_category() }'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${troubleo.getPd_main_stored_file() }"/>' alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">${troubleo.getPd_name() }</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">${troubleo.getPd_simplecontent() }</span><br/>
            ${troublet.getPd_price() }원</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${troublet.getPd_name()}&pd_category=${troublet.getPd_category() }'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${troublet.getPd_main_stored_file() }"/>'  alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">${troublet.getPd_name() }</span></a>
            </h5>
            <p class="card-text"><span style="color:black; font-size:10pt">${troublet.getPd_name() }</span><br/>
            ${troublet.getPd_price() }원</p>
          </div>
        </div>
      </div>
      </div>
    </div>
</c:if>


<c:if test="${member == null }">
<br/><br/>
 <div class="container">
		<div class="row" >
		    <div class="col-sm-2"></div>
		</div>
</div>
   			<div class="col-sm-12" style="background-color:#e6e6fa" >
      			  <div class="container">
		    <div class="col-sm-12">
			      <hr style="size: 100%; background-color:white" ><br/>
			      <h5 style="color:black; text-align:center"> 로그인 하시면 <strong>JFACTORY</strong>에서 고객님께 딱! 맞는 제품을 추천해드립니다.</h5><br>
			      <br/>
			           <div align="center">
                        <button
                           style="border-color: white; background-color: white; font-size:15px; color: black; WIDTH: 80pt; HEIGHT: 30pt"
                           type="button" class="btn btn-secondary btn-lg"onclick="location.href='join'">회원가입</button>&nbsp;&nbsp;&nbsp;
                        <button
                           style="border-color: black; background-color: black; font-size:15px; color: white; WIDTH: 80pt; HEIGHT: 30pt"
                           type="button" class="btn btn-secondary btn-lg" onclick="location.href='login'">로그인</button>
                     </div><br/>
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
   	<c:forEach items="${indexbest}" var="indexbest">
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item" onclick="location.href='product_detail?pd_name=${indexbest.getPd_name()}&pd_category=${indexbest.getPd_category() }'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src = '<c:url value="/resources/image/product/${indexbest.getPd_main_stored_file() }"/>' alt=""></a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="#"><span style="color:black; font-size:15pt">${indexbest.getPd_name() }</span></a>
            </h5>
            ${indexbest.getPd_price() }원
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
    </div>
    
    
 
<br/><br/>
<%@ include file="./footer.jsp" %>

</body>

</html>
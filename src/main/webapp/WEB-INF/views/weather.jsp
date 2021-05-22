<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
    /*
    $.getJSON('', function(data){
        //data로 할일 작성
    });
    */
    $.getJSON('http://api.openweathermap.org/data/2.5/group?id=1835848,5815135,2643743&APPID=f819f3ac4b0076eb8e81c19dac977945&units=metric  ', function(data){
       
        function getWorldTime(tzOffset) { // 24시간제
      var now = new Date();
      var tz = now.getTime() + (now.getTimezoneOffset() * 60000) + (tzOffset * 3600000);
      now.setTime(tz);
     
     
      var s =
        leadingZeros(now.getFullYear(), 4) + '-' +
        leadingZeros(now.getMonth() + 1, 2) + '-' +
        leadingZeros(now.getDate(), 2) + ' ' +
     
        leadingZeros(now.getHours(), 2) + ':' +
        leadingZeros(now.getMinutes(), 2) 
     
      return s;
    }

    function leadingZeros(n, digits) {
      var zero = '';
      n = n.toString();
     
      if (n.length < digits) {
        for (i = 0; i < digits - n.length; i++)
          zero += '0';
      }
      return zero + n;
    }

     //현재 날짜 뽑아서 출력
       var $sDate = getWorldTime(+9); //서울 시간
       var $wDate = getWorldTime(-4); //워싱턴 시간
       var $lDate = getWorldTime(+1); //런던 시간

       //서울 
       var $sminTemp = data.list[0].main.temp_min;
       var $smaxTemp = data.list[0].main.temp_max;
       var $sTemp = data.list[0].main.temp;
       var $sIcon = data.list[0].weather[0].icon;
        
        //워싱턴 
        var $wminTemp = data.list[1].main.temp_min;
       var $wmaxTemp = data.list[1].main.temp_max;
       var $wTemp = data.list[1].main.temp;
       var $wIcon = data.list[1].weather[0].icon;
        
        //런던
       var $lminTemp = data.list[2].main.temp_min;
       var $lmaxTemp = data.list[2].main.temp_max;
       var $lTemp = data.list[2].main.temp;
       var $lIcon = data.list[2].weather[0].icon;

        //alert($.now());//현재 시간을 출력하는 방법
        //alert(new Date(Date.now())); 형식[Wed Jul 15 2020 14:11:30 GMT+0900 (대한민국 표준시)]
        

      
    
       

       

       //A.appendTo(B) B뒤어 A를 붙이기
       //A.append(B) A뒤어 B를 붙이기
       //A.prependTo(B) B앞에 A를 붙이기
       //A.prepend(B) A앞에 B를 붙이기

        //날짜 출력
       $('.sdate').prepend($sDate);
       $('.wdate').prepend($wDate);
       $('.ldate').prepend($lDate);
       //서울 출력
        $('.stemp').append($sTemp);
        $('.slowtemp').append($sminTemp);
        $('.shightemp').append($smaxTemp);
         //<img src =" http://openweathermap.org/img/wn/10d@2x.png"/>
         $('.sicon').append('<img src =" http://openweathermap.org/img/wn/'+$sIcon+'.png"/>');
        
        //워싱턴 출력
        $('.wtemp').append($wTemp);
        $('.wlowtemp').append($wminTemp);
        $('.whightemp').append($wmaxTemp);
        //<img src =" http://openweathermap.org/img/wn/10d@2x.png"/>
        $('.wicon').append('<img src =" http://openweathermap.org/img/wn/'+$wIcon+'.png"/>');

        //런던 출력
        $('.ltemp').append($lTemp);
        $('.llowtemp').append($lminTemp);
        $('.lhightemp').append($lmaxTemp);
        $('.licon').append('<img src =" http://openweathermap.org/img/wn/'+$lIcon+'.png"/>');


 
    });
</script>
</head>
<style>
      .tab-wrapper { width:auto; margin:auto; text-align: center;}
      .tab-menu {padding-left:0; text-align: center; display: inline-block;}
     .tab-menu li {float:left; list-style:none;  background:#ebebeb; margin-right:10px;}
      .tab-menu:after{content:'';display:block; clear:both;}
      .tab-menu li a{ color:#999; text-transform:uppercase; 
      font-weight:bold;line-height:27px; text-decoration:none; 
      display: block; padding:0 20px;}
      #tab-content {min-height: 300px;}
  
      #tab-content > div {display: none;}
      
      .tab-menu li a.active{ background-color: black; color: white;}
      </style>
<body>

  <div class="container">

	<br/><br/>
    <h3 align="center"> ★ 오늘의 날씨 ★</h3>
    <h6 align="center">제이팩토리에서 오늘의 날씨에 따른 화장품 추천을 받아보세요!</h6>
	<br/><br/></div><hr>
	<br/><br/>

<div class="tab-wrapper">
  <ul class="tab-menu">
      <li><a href="#tabs-1" class="active">SEOUL</a></li>
      <li><a href="#tabs-2">WASHINGTON D.C</a></li>
      <li><a href="#tabs-3">LONDON</a></li>
  </ul>
  <div id="tab-content">
    <div id="tabs-1" class = "active">
      <div id = "Seoul">
        <h1>서울</h1>
        <h2 class="sdate">  </h2>
        <div class="stemp">현재 온도: </div>
        <div class="slowtemp">최저 온도: </div>
        <div class="shightemp">최고 온도: </div>
        <div class="sicon">아이콘 :  </div>
        </div> </div>
    <div id="tabs-2">
      <div id = "D.C">
        <h1>워싱턴 D.C</h1>
        <h2 class="wdate">  </h2>
        <div class="wtemp">현재 온도: </div>
        <div class="wlowtemp">최저 온도: </div>
        <div class="whightemp">최고 온도: </div>
        <div class="wicon">아이콘 :  </div>
        </div>   </div>
    <div id="tabs-3">
      <div id = "London">
        <h1>런던</h1>
        <h2 class="ldate">  </h2>
        <div class="ltemp">현재 온도: </div>
        <div class="llowtemp">최저 온도: </div>
        <div class="lhightemp">최고 온도: </div>
        <div class="licon">아이콘 :  </div>
        </div>    </div>
  </div>
  </div>	
  <script src="weather.js"></script>
</body>
</body>


<%@ include file="./footer.jsp" %>

</body>
</html>
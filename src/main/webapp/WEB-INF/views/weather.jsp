<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>

p{
text-align:center;
}

button.seoul {
  position: absolute;
  top: 210px;
  left : 440px; 
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}

button.chuncheon {
  position: absolute;
  top: 170px;
  left : 560px;
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}

button.gangneung {
  position: absolute;
  top: 190px;
  left : 650px;
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif; 
}
button.dokdo {
  position: absolute;
  top: 340px;
  left : 670px;
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.cheongju {
  position: absolute;
  top: 360px;
  left : 500px; 
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.daejeon {
  position: absolute;
  top: 400px;
  left : 490px; 
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.jeonju {
  position: absolute;
  top: 475px;
  left : 460px;
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.daegu {
  position: absolute;
  top: 470px;
  left : 640px;
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.gwangju {
  position: absolute;
  top: 580px;
  left : 415px;
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.busan {
  position: absolute;
  top: 570px;
  left : 690px;
  border:0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.jeju {
  position: absolute;
  top: 765px;
  left : 390px;
  border: 0;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 20px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
} 


</style>
</head>
<body>
<hr>
<br>
<h4 style='text-align:center'> ????????? ??????????????????! </h4>
<h6 style='text-align:center'> ????????????????????? ????????? ????????? ?????? ????????? ????????? ???????????????! </h6>
<br>
<div class="container" style="text-align : center; position: relative;">
<img src="//r.yna.co.kr/m-kr/home/v01/img/m_map_city.png" alt="????????????" style="min-width: 640px; min-height: 864px;"/>

<div id="testImg">

  <button class="seoul" type="button"  onclick="location.href='localWeather?city=Seoul&cityName=??????'">??????</button> 
  <button class="chuncheon" type="button" onclick="location.href='localWeather?city=chuncheon&cityName=??????'">??????</button>
  <button class="gangneung" type="button" onclick="location.href='localWeather?city=gangneung&cityName=??????'">??????</button>
  <button class="cheongju" type="button" onclick="location.href='localWeather?city=cheongju&cityName=??????'">??????</button>
  <button class="daejeon" type="button" onclick="location.href='localWeather?city=daejeon&cityName=??????'">??????</button>
  <button class="jeonju" type="button" onclick="location.href='localWeather?city=jeonju&cityName=??????'">??????</button>
  <button class="daegu" type="button" onclick="location.href='localWeather?city=daegu&cityName=??????'">??????</button>
  <button class="gwangju" type="button" onclick="location.href='localWeather?city=gwangju&cityName=??????'">??????</button>
  <button class="busan" type="button" onclick="location.href='localWeather?city=busan&cityName=??????'">??????</button>
  <button class="jeju" type="button" onclick="location.href='localWeather?city=jeju&cityName=??????'">??????</button>

</div>
</div>
</body>
</html>
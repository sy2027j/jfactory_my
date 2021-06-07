<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
</head>
<body>
<style>

p{
text-align:center;
}

button.seoul {
  position: absolute;
  top: 464px;
  left : 925px; 
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}

button.chuncheon {
  position: absolute;
  top: 400px;
  left : 1060px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}

button.gangneung {
  position: absolute;
  top: 435px;
  left : 1130px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif; 
}
button.dokdo {
  position: absolute;
  top: 540px;
  left : 1270px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.cheongju {
  position: absolute;
  top: 560px;
  left : 1060px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.daejeon {
  position: absolute;
  top: 650px;
  left : 980px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.jeonju {
  position: absolute;
  top: 760px;
  left : 930px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.daegu {
  position: absolute;
  top: 720px; 
  left : 1120px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.gwangju {
  position: absolute;
  top: 825px;
  left : 900px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.busan {
  position: absolute;
  top: 810px;
  left : 1160px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
}
button.jeju {
  position: absolute;
  top: 1020px;
  left : 875px;
  border: 3px solid #9370DB;
  background-color : rgba(0,0,0,0);
  color: black;
  font-size: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px; 
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;  
  font-family: 'Do Hyeon', sans-serif;
} 


</style>
<br>
<h3 style='text-align:center'> 지역을 선택해보세요 ! </h3>
<br>
<h5 style='text-align:center'> " 제이팩토리에서 오늘의 날씨에 따른 화장품 추천을 받아보세요! " </h5>
<br>
<p>
<img src="//r.yna.co.kr/m-kr/home/v01/img/m_map_city.png" alt="전국지도"/>
</p>
<div id="testImg">

  <button class="seoul" type="button"  onclick="location.href='localWeather?city=Seoul&cityName=서울'">서울</button> 
  <button class="chuncheon" type="button" onclick="location.href='localWeather?city=chuncheon&cityName=춘천'">춘천</button>
  <button class="gangneung" type="button" onclick="location.href='localWeather?city=gangneung&cityName=강릉'">강릉</button>
  <button class="cheongju" type="button" onclick="location.href='localWeather?city=cheongju&cityName=청주'">청주</button>
  <button class="daejeon" type="button" onclick="location.href='localWeather?city=daejeon&cityName=대전'">대전</button>
  <button class="jeonju" type="button" onclick="location.href='localWeather?city=jeonju&cityName=전주'">전주</button>
  <button class="daegu" type="button" onclick="location.href='localWeather?city=daegu&cityName=대구'">대구</button>
  <button class="gwangju" type="button" onclick="location.href='localWeather?city=gwangju&cityName=광주'">광주</button>
  <button class="busan" type="button" onclick="location.href='localWeather?city=busan&cityName=부산'">부산</button>
  <button class="jeju" type="button" onclick="location.href='localWeather?city=jeju&cityName=제주'">제주</button>

</div>

</body>
</html>
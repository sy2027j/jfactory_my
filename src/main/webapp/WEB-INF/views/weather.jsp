<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
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
}

button.chuncheon {
  position: absolute;
  top: 400px;
  left : 1060px;
}

button.gangneung {
  position: absolute;
  top: 435px;
  left : 1130px;
}
button.dokdo {
  position: absolute;
  top: 540px;
  left : 1270px;
}
button.cheongju {
  position: absolute;
  top: 560px;
  left : 1060px;
}
button.daejeon {
  position: absolute;
  top: 650px;
  left : 980px;
}
button.jeonju {
  position: absolute;
  top: 760px;
  left : 930px;
}
button.daegu {
  position: absolute;
  top: 720px;
  left : 1120px;
}
button.gwangju {
  position: absolute;
  top: 400px;
  left : 1060px;
}
button.busan {
  position: absolute;
  top: 400px;
  left : 1060px;
}
button.jeju {
  position: absolute;
  top: 400px;
  left : 1060px;
}


</style>
<br>
<h3 style='text-align:center'>지역 선택해보셈 한번 </h3>
<br>
<h5 style='text-align:center'>선택한 지역의 날씨에 따라 화장품을 추천해드립니다 </h5>
<br>
<p>
<img src="//r.yna.co.kr/m-kr/home/v01/img/m_map_city.png" alt="전국지도"/>
</p>
<div id="testImg">
  <button class="seoul" type="button" onclick="javascript:sensorBtnClick('btn1');">서울</button>
  <button class="chuncheon" type="button" onclick="javascript:sensorBtnClick('btn2');">춘천</button>
  <button class="gangneung" type="button" onclick="javascript:sensorBtnClick('btn2');">강릉</button>
  <button class="dokdo" type="button" onclick="javascript:sensorBtnClick('btn2');">독도</button>
  <button class="cheongju" type="button" onclick="javascript:sensorBtnClick('btn2');">청주</button>
  <button class="daejeon" type="button" onclick="javascript:sensorBtnClick('btn2');">대전</button>
   <button class="jeonju" type="button" onclick="javascript:sensorBtnClick('btn2');">전주</button>
  <button class="daegu" type="button" onclick="javascript:sensorBtnClick('btn2');">대구</button>
  <button class="gwangju" type="button" onclick="javascript:sensorBtnClick('btn2');">광주</button>
  <button class="busan" type="button" onclick="javascript:sensorBtnClick('btn2');">부산</button>
  <button class="jeju" type="button" onclick="javascript:sensorBtnClick('btn2');">제주</button>

</div>

</body>
</html>
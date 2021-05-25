<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script defer src="https://use.fontawesome.com/releases/v5.15.2/js/all.js" integrity="sha384-vuFJ2JiSdUpXLKGK+tDteQZBqNlMwAjhZ3TvPaDfN9QmbPb7Q8qUpbSNapQev3YF" crossorigin="anonymous"></script>
<script type="text/javascript"> 
$(document).ready(function() { 
   
   let weatherIcon = { 
         '01' : 'fas fa-sun', 
         '02' : 'fas fa-cloud-sun', 
         '03' : 'fas fa-cloud', 
         '04' : 'fas fa-cloud-meatball', 
         '09' : 'fas fa-cloud-sun-rain', 
         '10' : 'fas fa-cloud-showers-heavy', 
         '11' : 'fas fa-poo-storm', 
         '13' : 'far fa-snowflake', 
         '50' : 'fas fa-smog' }; 
   
   $.ajax({ 
      url:'http://api.openweathermap.org/data/2.5/weather?q=incheon&APPID=f819f3ac4b0076eb8e81c19dac977945&units=metric', 
      dataType:'json', 
      type:'GET', 
      success:function(data){ 
         var $Icon = (data.weather[0].icon).substr(0,2); 
         var $Temp = Math.floor(data.main.temp) + 'º'; 
         var $city = data.name; 
         var $humidity = data.main.humidity;
         
         $('.CurrIcon').append('<i class="' + weatherIcon[$Icon] +'"></i>'); 
         $('.CurrTemp').prepend($Temp); 
         $('.City').append($city); 
         $('.humidity').append('습도 : ' + $humidity + "%");
      
      } 
      
   }) 
   
}); 

</script>
   

</head>

<body>

  <div class="container">

   <br/><br/>
    <h3 align="center"> ★ 오늘의 날씨 ★</h3>
    <h6 align="center">제이팩토리에서 오늘의 날씨에 따른 화장품 추천을 받아보세요!</h6>
   <br/><br/></div><hr>
   <br/><br/>

    <div class="weather"> 
      <div class="CurrIcon"></div> 
      <div class="CurrTemp"></div> 
      <div class="City"></div> 
      <div class="humidity"></div>
   
   </div>

</body>


<%@ include file="./footer.jsp" %>

</body>
</html>
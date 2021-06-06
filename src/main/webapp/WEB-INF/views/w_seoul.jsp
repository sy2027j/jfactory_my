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
         '01' : 'fas fa-sun',  //맑음
         '02' : 'fas fa-cloud-sun', //흐림
         '03' : 'fas fa-cloud', //흐림
         '04' : 'fas fa-cloud-meatball', // 
         '09' : 'fas fa-cloud-sun-rain', 
         '10' : 'fas fa-cloud-showers-heavy', //장마
         '11' : 'fas fa-poo-storm',  //번개
         '13' : 'far fa-snowflake', //눈
         '50' : 'fas fa-smog' //안개
         }; 
   
   
   //습도 꿉꿉 쾌적 건조
   //온도 더워 추워 적당
   //날씨 맑음 흐림 구름 많음 눈 비 
   
   
   $.ajax({ 
      url:'http://api.openweathermap.org/data/2.5/weather?q=seoul&APPID=f819f3ac4b0076eb8e81c19dac977945&units=metric', 
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
<style>
div.CurrIcon{font-size: 600%;}
div.weather_info{font-size: 120%;}
</style>
  <div class="container">

   <br/><br/>
    <h3 align="center"> ★ 서울의 날씨 ★</h3>
    <h6 align="center">제이팩토리에서 오늘의 날씨에 따른 화장품 추천을 받아보세요!</h6>
   <br/></div><hr>

    <div class="weather" align="center"> 
   	 <div class="CurrIcon" ></div> 
    	<div class="weather_info">
    	  <div class="CurrTemp"></div> 
	      <div class="City"></div> 
	      <div class="humidity"></div>
    	</div>
   </div>
   <hr>
   
<div class="container px-4 px-lg-5"> 
<h3 style="text-align:center">B E S T</h3>
  <div class="row gx-4 gx-lg-5">
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">Card One</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">Card Two</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">Card Three</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
            </div>
        </div>
<br>

<%@ include file="./footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="resources/css/weather-icons.min.css" rel="stylesheet">
<link href="resources/css/weather-icons.css" rel="stylesheet">
<link href="resources/css/weather-icons-wind.css" rel="stylesheet">
<link href="resources/css/weather-icons-wind.min.css" rel="stylesheet">
<script type="text/javascript"> 
$(document).ready(function() { 
   
   let weatherIcon = { 
         '01' : 'wi-day-sunny',  //맑음
         '02' : 'wi-day-cloudy', //흐림
         '03' : 'wi-cloud', //흐림
         '04' : 'wi-day-sunny-overcast', // 
         '09' : 'wi-rain', 
         '10' : 'wi-umbrella', //장마
         '11' : 'wi-lightning',  //번개
         '13' : 'wi-snow', //눈
         '50' : 'wi-fog' //안개
         }; 
   
   
   $.ajax({
      url:'http://api.openweathermap.org/data/2.5/weather?q=${param.city}&APPID=f819f3ac4b0076eb8e81c19dac977945&units=metric', 
      dataType:'json', 
      type:'GET', 
      success:function(data){ 
         var $Icon = (data.weather[0].icon).substr(0,2); 
         var $temp = Math.floor(data.main.temp) + 'º'; 
         var $city = data.name; 
         var $humidity = data.main.humidity;
         var $temp2 = Math.floor(data.main.temp);

         $('.CurrIcon').append('<i class="' + weatherIcon[$Icon] +'"></i>'); 
         $('.CurrTemp').prepend($temp); 
         $('.City').append($city); 
         $('.humidity').append('습도 : ' + $humidity + "%");
         
         humidity_tag($humidity);
         Temp_tag($temp2);
      }
   });
   

	 function Temp_tag(temp) {
		   
		   var Temp_value = {'temp' : temp};
		   
		   $.ajax({
			      url:'getProductTag2', 
			      dataType:'json',
			      type:'POST',
			      data: Temp_value,
			      success:function(data){ 
			    	  $("#product_name2").append(data.pd_name);
			    	  $("#product_img2").html("<img src='<c:url value='/resources/image/product/" + data.pd_main_stored_file + "'/>'>")
			      }
			});
		}
	   

   function humidity_tag(humidity) {
	   
	   var humidity_value = {'humidity' : humidity};
	   
	   $.ajax({
		      url:'getProductTag3', 
		      dataType:'json',
		      type:'POST',
		      data: humidity_value,
		      success:function(data){ 
		    	  $("#product_name3").append(data.pd_name);
		    	  $("#product_img3").html("<img src='<c:url value='/resources/image/product/" + data.pd_main_stored_file + "'/>'>")
		      }
		});
	}
   
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
    <h3 align="center"> ★ ${param.cityName }의 날씨 ★</h3>
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
		                    <div class="card ">
		                            <div id="product_name2" class="card-header"></div>
		                            	<div id="product_img2" class="card-body"></div>
		                        			<div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">상세정보</a></div>
		                    	</div>
		               		</div>
		                <div class="col-md-4 mb-5">
		                    <div class="card">
		                            <div id="product_name3" class="card-header"></div>
		                            	<div id="product_img3" class="card-body"></div>
		                       				<div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">상세정보</a></div>
		                    </div>
		                </div>
                
           		 </div>
        </div>
  
<br>
<%@ include file="./footer.jsp" %>
</body>
</html>
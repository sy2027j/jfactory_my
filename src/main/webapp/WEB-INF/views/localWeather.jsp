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
   
   
   //습도 꿉꿉 쾌적 건조 (pd_tag3)
   //건조 : 40% 미만
   //쾌적 : 40% -60%
   //꿉꿉 : 60% 초과 
   
   //온도 더워 추워 적당 (pd_tag2)
   //더워 : 22도 초과
   //적당 : 17-22도
   //추워 : 17 미만
   
   //날씨 맑음 흐림 구름많음 눈 비 (pd_tag1)
  //맑음 : 01
  //흐림 : 02,03
  //구름많음 : 04 , 50
  //눈 : 13
  //비 : 09, 10, 11
   
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
         
         Icon_tag($Icon);
         humidity_tag($humidity);
         Temp_tag($temp2);
      }
   });
   
   
	 function Icon_tag(Icon) {
		   
		   var Icon_value = {'Icon' : Icon};
		   
		   $.ajax({
			      url:'getProductTag1', 
			      dataType:'json',
			      type:'POST',
			      data: Icon_value,
			      success:function(data){ 
			    	  $("#product_name1").append(data.pd_name);
			    	  $("#product_img1").html("<img src='<c:url value='/resources/image/product/" + data.pd_main_stored_file + "'/>'>")
			      }
			});
		}
   
   
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
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 id="product_name1" class="card-title"></h2>
                            <p id="product_img1" class="card-text"></p>	
                          </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 id="product_name2" class="card-title"></h2>
                            <p id="product_img2" class="card-text"></p>	
                          </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 id="product_name3" class="card-title"></h2>
                            <p id="product_img3" class="card-text"></p>
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
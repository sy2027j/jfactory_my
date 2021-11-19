<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<link href='<c:url value="/resources/css/weather-icons.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/weather-icons-wind.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<script src="resources/vendor/jquery/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		let weatherIcon = {
			'01d' : 'wi wi-day-sunny',
			'02d' : 'wi wi-day-cloudy',
			'03d' : 'wi wi-cloud',
			'04d' : 'wi wi-cloudy',
			'09d' : 'wi wi-day-rain',
			'10d' : 'wi wi-showers',
			'11d' : 'wi wi-storm-showers',
			'13d' : 'wi wi-snow-wind',
			'50d' : 'wi wi-sandstorm',

			'01n' : 'wi wi-night-clear',
			'02n' : 'wi wi-night-alt-cloudy',
			'03n' : 'wi wi-cloudy',
			'04n' : 'wi wi-night-alt-snow',
			'09n' : 'wi wi-night-rain',
			'10n' : 'wi wi-night-showers',
			'11n' : 'wi wi-night-alt-storm-showers',
			'13n' : 'wi wi-night-alt-snow-wind',
			'50n' : 'wi wi-sandstorm'
		};

		$.ajax({
			url : 'http://api.openweathermap.org/data/2.5/weather?q=${param.city}&APPID=f819f3ac4b0076eb8e81c19dac977945&units=metric',
			dataType : 'json',
			type : 'GET',
			success : function(data) {
				
				var $Icon = (data.weather[0].icon);console.log($Icon);
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
				url : 'getProductTag2',
				dataType : 'json',
				type : 'POST',
				data : Temp_value,
				success : function(data) {
					$("#product_name2").append(data.pd_name);
					$("#product_a").attr("href", "product_detail?pd_name=" + data.pd_name);
					$("#product_img2").attr("src", "resources/image/product/" + data.pd_main_stored_file)
				}
			});
		}

		function humidity_tag(humidity) {
			var humidity_value = {'humidity' : humidity};

			$.ajax({
				url : 'getProductTag3',
				dataType : 'json',
				type : 'POST',
				data : humidity_value,
				success : function(data) {
					$("#product_name3").append(data.pd_name);
					$("#product_b").attr("href", "product_detail?pd_name=" + data.pd_name);
					$("#product_img3").attr( "src", "resources/image/product/" + data.pd_main_stored_file)
				}
			});
		}
	});
</script>
<style>
	.CurrIcon {font-size: 700%;}
	.weather_info {font-size: 100%;}
</style>
</head>
<body>
	<jsp:include page="./header.jsp"/>
		<hr>
	<div class="container">
		<div style="text-align: center" class="mt-5">
			<img id="img2" class="img2" src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https:%2F%2Fblog.kakaocdn.net%2Fdn%2FbaYmDt%2Fbtq6Be6sFtv%2FtPGxhLdwctgiSvwkVkOEo0%2Fimg.gif" style="width: 8%">
			<h3>
				<strong>${param.cityName }의 날씨</strong>
			</h3>
		</div>
		<h5 align="center">제이팩토리에서 오늘의 날씨에 따른 화장품 추천을 받아보세요!</h5>
		<br/>
	</div>
	<hr/>
	<div class="container">
    
    <br/><br/><br/>
    <div class="row">
      <div class="col-lg-6"><h4 style="text-align:center">오늘같은 날씨에는 ...</h4><br/><br/><br/>
      
        <div class="weather" style="border:solid 2px; border-color:lightgray;  width:400px; height:300px; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); border-radius: 10px; background-size: cover; background-image: url('https://media.istockphoto.com/photos/looking-across-a-grass-field-as-the-storm-clouds-move-in-picture-id182413018?b=1&k=20&m=182413018&s=170667a&w=0&h=nTEp0pwSoZBQXlXIn8gqoKZxYy78qsfl9SgOyyfwIwo=')">
					<br/>
					<div class="CurrIcon" style="text-align:center"></div>
					<div class="weather_info">
						<div class="CurrTemp" style="font-weight: bold; font-size: 140%; text-align:center"></div>
						<div class="humidity" style="font-weight: bold; font-size: 120%; text-align:center"></div>
					</div>
				</div></div>
      <div class="col-lg-6">
        
				<div class="row">
					<div class="col-sm-6">
						<div class="card h-100">
							<a id="product_a" href=""><img id="product_img2" class="card-img-top" src="" alt=""></a>
							<div class="card-body">
								<h5 class="card-title"><span style="color:black; font-size:15pt" id="product_name2" ></span></h5>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="card h-100">
							<a id="product_b" href=""><img id="product_img3" class="card-img-top" src="" alt=""></a>
							<div class="card-body">
								<h5 class="card-title">
									<span style="color:black; font-size:15pt" id="product_name3"></span>
								</h5>
							</div>
						</div>
					</div>
				</div><br/>
				<h4 style="text-align:center">이 제품 어떠신가요?</h4>
      </div>
    </div>
     <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    </div>
	<jsp:include page="./footer.jsp"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
	integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css"
	integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css"
	integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css"
	integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css"
	integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css"
	integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css"
	integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css"
	integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/main.css">
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<!-- <script src="/resources/js/main.js"></script> -->

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="/resources/js/mobiscroll.jquery.min.js"></script>
<script src="https://kit.fontawesome.com/8d1d3d3a2e.js"
	crossorigin="anonymous"></script>
<link rel="shortcut icon" href="#">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
<script type="text/javascript">
	function wea() {

		if (window.navigator.geolocation) {
			window.navigator.geolocation.getCurrentPosition(showLocation4,
					showError4)
		}

		function showLocation4(event) {
			var latitude = event.coords.latitude
			var longitude = event.coords.longitude

			let apiKey = "059aa9eae2040819bfb97ec8742f408c"
			var apiURI = "https://api.openweathermap.org/data/2.5/weather?lat="
					+ latitude + "&lon=" + longitude + "&lang=kr&appid="
					+ apiKey;
			$.ajax({
				url : apiURI,
				dataType : "json",
				type : "GET",
				async : "false",
				success : function(resp) {
					console.log("???????????? : " + (resp.main.temp - 273.15));
					console.log("???????????? : " + resp.main.humidity);
					console.log("?????? : " + resp.weather[0].main);
					console.log("?????????????????? : " + resp.weather[0].description);
					console.log("?????? ????????? : " + resp.weather[0].icon);
					console.log("??????   : " + resp.wind.speed);
					console.log("??????   : " + resp.sys.country);
					console.log("????????????  : " + resp.name);
					console.log("??????  : " + (resp.clouds.all) + "%");
					/* 					let imgURL = "../resources/img/wb/" + resp.weather[0].icon + ".png";
					 $("#wicon").attr("src", imgURL);

					 let nameURL = resp.weather[0].description;
					 document.querySelector("#wename").textContent = nameURL; */
				}
			})

		}

		function showError4(event) {
			alert("?????? ????????? ?????? ??? ????????????.")
		}
	}
</script>
<script type="text/javascript">
	function wea2() {

		var sl = $('#Slocation').val().split("::");
		//console.log(sl);

		var latitude = sl[0];
		var longitude = sl[1];

		let apiKey = "059aa9eae2040819bfb97ec8742f408c"
		var apiURI = "https://api.openweathermap.org/data/2.5/weather?lat="
				+ latitude + "&lon=" + longitude + "&lang=kr&appid=" + apiKey;
		$.ajax({
			url : apiURI,
			dataType : "json",
			type : "GET",
			async : "false",
			success : function(resp) {
				console.log("???????????? : " + (resp.main.temp - 273.15));
				console.log("???????????? : " + resp.main.humidity);
				console.log("?????? : " + resp.weather[0].main);
				console.log("?????????????????? : " + resp.weather[0].description);
				console.log("?????? ????????? : " + resp.weather[0].icon);
				console.log("??????   : " + resp.wind.speed);
				console.log("??????   : " + resp.sys.country);
				console.log("????????????  : " + resp.name);
				console.log("??????  : " + (resp.clouds.all) + "%");
				/* 					let imgURL = "../resources/img/wb/" + resp.weather[0].icon + ".png";
				 $("#wicon").attr("src", imgURL);

				 let nameURL = resp.weather[0].description;
				 document.querySelector("#wename").textContent = nameURL; */
			}
		})

		function showError4(event) {
			alert("?????? ????????? ?????? ??? ????????????.")
		}
	}
</script>
<script type="text/javascript">
function wea3() {

	if (window.navigator.geolocation) {
		window.navigator.geolocation.getCurrentPosition(showLocation4,
				showError4)
	}

	function showLocation4(event) {
		var latitude = event.coords.latitude
		var longitude = event.coords.longitude

		let apiKey = "3eae638f314564da1ed023477b14ae79"
		var apiURI = "https://api.openweathermap.org/data/2.5/onecall?lat="
				+ latitude + "&lon=" + longitude + "&exclude=alerts&lang=kr&appid="
				+ apiKey;
		$.ajax({
			url : apiURI,
			dataType : "json",
			type : "GET",
			async : "false",
			success : function(resp) {
				console.log(resp.hourly)
				console.log(resp.daily)
			}
		})

	}

	function showError4(event) {
		alert("?????? ????????? ?????? ??? ????????????.")
	}
}
</script>
</head>
<body>
	????????? ????????? ????????? ????????? + ????????? ????????? ????????? ???????????? ????????? ???????????? ?????????<br>
	????????? ?????? ???????????? ????????? ???????????? ??????????????? ????????? ?????? ??????????????? ????????? ??????????????? ????????????<br>
	?????????????????? ????????????! ???????????? ????????? ???????<br><br>
	<button onclick="wea()">??????</button>
	<button onclick="wea2()">??????2</button>
	<select id="Slocation">
		<option value="33.36::126.54" selected="selected" hidden="hidden">?????????
			???????????????</option>
		<option value="37.56::126.97">??????</option>
		<option value="36.35::127.38">??????</option>
		<option value="35.80::128.58">??????</option>
		<option value="35.20::129.05">??????</option>
		<option value="35.52::129.23">??????</option>
		<option value="37.47::126.57">??????</option>
		<option value="35.12::126.83">??????</option>
		<option value="33.36::126.54">??????</option>
		<option value="37.56::127.20">?????????</option>
		<option value="37.55::128.20">?????????</option>
		<option value="36.58::127.35">?????????</option>
		<option value="35.26::127.02">?????????</option>
		<option value="35.75::128.66">?????????</option>
	</select>
	<hr>
	<button onclick="wea3()">??????3</button>
</body>
</html>
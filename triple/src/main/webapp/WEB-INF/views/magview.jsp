<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1300">
	<title>Triple</title>
	<link rel="stylesheet" href="/resources/css/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css" integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css" integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css" integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css" integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css" integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css" integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css" integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/resources/css/common.css">
	<link rel="stylesheet" href="/resources/css/magview.css">
	

	<script src="/resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
	<script src="/resources/js/main.js"></script>
	
	<link rel="shortcut icon" href="#">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<script type="text/javascript">
	var c = '${heart}';
	function heart() {
		var h = '${mvo.mgz_id}';
		
		$.ajax({
			type : "POST",
			url : "/rest/hearton",
				dataType : "json",
				async:false,
				data : {
					mem_id : $("#sat").text(),
					heart_id : h,
					cheart : c,
					heart_cate : '2'
				},
				success : function(data) {
	           		 // C?????? ????????? ???????????? ?????? ????????????
	           		//console.log(data);
	           		 //window.location.reload();
					if (data=='hearton') {
						c = 'solid';
					}else {
						c = 'regular'
					}
	           		$('#ffhd').load(location.href+' #ffhd');
				},
				error : function(a){
					console.log(a);
	            }
			});
	}
	
	function heart2() {
		alert("???????????? ????????????")		
	}
</script>
<body>

    <jsp:include page="/WEB-INF/views/header.jsp" flush="true"/>

    <section id="sec">
        <div class="magviewpg">
        	<div class="magtitle">
	            <div class="magtitleleft">
	            	<!-- mag_title -->
	           	 	<h2>${mvo.mgz_title}</h2>
	            	<!-- mag_smalltitle -->
	            	<h3>${mvo.mgz_smalltitle}</h3>
	            	<!-- mgz_city -->
	            	<p>${mvo.mgz_city}</p>
	            	<!-- mgz_category -->
	            	<p>${mvo.mgz_category}</p>
	            	<p>${mvo.mgz_date}</p>
	            </div>
	            <div class="magtitleright">
	            <security:authorize access="isAnonymous()">
	            	<div class="magaddbtn magbtn_com" onclick="heart2()">
	            		<i class="fa-regular fa-heart"></i>
	            	</div>
	            </security:authorize>
	            <security:authorize access="isAuthenticated()">
						<div  onclick="heart()">
							<div id="ffhd">
								<div style="display: inline-block;">
									<i class="fa-${heart} fa-heart magaddbtn magbtn_com" style="color: red;"></i>
								</div>
								<div style="display: inline-block;">
									${heartcount}
								</div>
							</div>
						</div>
					</security:authorize>
	            	<div class="magheartbtn magbtn_com" style="display: none;">
	            		<i class="fa-solid fa-bookmark"></i>
	            	</div>
	            </div>
           	 </div>
            <div class="magview_in">
                <!-- ????????? ?????? ???????????? -->
                <!-- mgz_content -->
                ${mvo.mgz_content}
                <div class="magviewword">

				</div>
            </div>
            <div class="magview_bottom" style="display: none;">
                <div class="gotomaglistbtn" onclick="location.href=''">
                    <p>????????????</p>
                </div>
            </div>
        </div>
    </section>
    
	<%@ include file="footer.jsp"%>
	
</body>
</html>
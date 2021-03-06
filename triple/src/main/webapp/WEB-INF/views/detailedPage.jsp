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
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
        integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css"
        integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css"
        integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css"
        integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css"
        integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css"
        integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css"
        integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css"
        integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/css/detaile.css">
    <link rel="stylesheet" href="/resources/css/kakaomap.css">


    <script src="/resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="/resources/js/mobiscroll.jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
    <script src="/resources/js/main.js"></script>

    <link rel="shortcut icon" href="#">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
        
        <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script type="text/javascript">
		//?????? ?????? ?????? ???????????????????????????
		function kgkg(paydata) {
			var pay1 = '${pvo.product_id}';
			var pay2 = paydata.children.item(1).innerText;
			const pay3 = $('#start_date').val();
			var pay4 = '';
			
			$.ajax({
				type : "POST",
				url : "/rest/payinfo",
				async : "false",
				dataType: 'json',
				data : {
					product_id : pay1,
					pd_id : pay2
				},
				success : function(data) {
					// C?????? ????????? ???????????? ?????? ????????????
					//console.log(data.amount);
					pay4 = data.name;
					requestPay();
					
					//????????????
					function requestPay() {
						var IMP = window.IMP; // ?????? ??????
				    	IMP.init("imp90205064"); // ???: imp00000000
						// IMP.request_pay(param, callback) ????????? ??????
						IMP.request_pay({ // param
							
							pg : "html5_inicis",
							pay_method : "card",
							merchant_uid : 'triple_' + new Date().getTime(),
							name : data.name,
							amount : data.amount,
							buyer_email : data.buyer_email,
							buyer_name : data.buyer_name,
							buyer_tel : data.buyer_tel
			
						}, function(rsp) { // callback
							if (rsp.success) { // ?????? ?????? ???: ?????? ?????? ?????? ???????????? ????????? ????????? ??????
															
									var msg = '????????? ?????????????????????.';
									msg += '??????ID : ' + rsp.imp_uid;
									msg += '?????? ??????ID : ' + rsp.merchant_uid;
									msg += '?????? ?????? : ' + rsp.paid_amount;
									msg += '?????? ???????????? : ' + rsp.apply_num;
																
								// jQuery??? HTTP ??????
								jQuery.ajax({
									url : "/rest/paywan", // ???: https://www.myservice.com/payments/complete
									method : "POST",
									async : "false",
									data : {
										imp_uid : rsp.imp_uid,
										merchant_uid : rsp.merchant_uid,
										paid_amount : rsp.paid_amount,
										apply_num : rsp.apply_num,
										name : pay4,
										product_id : pay1,
										start_day : pay3
									}
								}).done(function(wdata) {
									// ????????? ?????? ?????? API ????????? ??????
									// ????????????!!
									alert(msg);
								})
							} else {
								alert("????????? ?????????????????????. ?????? ??????: " + rsp.error_msg);
							}
						});
					}	//?????????
					
					//???????????????
				},
				error : function(a) {
					//console.log(a);
				}
			}); 
		}
	
		//???????????? ?????? api!

		
	</script>
<script type="text/javascript">
	var c = '${heart}';
	function heart() {
		var h = '${pvo.product_id}';		
		var he = $("#ffh");
		//var c = '${heart}';
		console.log(c);
		$.ajax({
			type : "POST",
			url : "/rest/hearton",
				dataType : "json",
				async:false,
				data : {
					mem_id : $("#sat").text(),
					heart_id : h,
					cheart : c,
					heart_cate : '1'
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
<script type="text/javascript">
function intra() {
	$.ajax({
		type : "POST",
		url : "/rest/ftravel",
		dataType : "json",
		data : {
			mem_id : $("#sat").text()
		},
		success : function(data) {
        // C?????? ????????? ???????????? ?????? ????????????
		//console.log(data);
		$("#plusListIn").html("");
			for (var i = 0; i < data.length; i++) {
				$("#plusListIn").append(
                    "<div onclick='travel_insert(this)'>" +
                        "<span style='display:none'>" + data[i].plan_id + "</span>" +
                        "<p>" + data[i].plan_name + "</p>" +
                        "<p>" + data[i].startdate + "</p>" +
						"<p>" + data[i].enddate + "</p>" +
						'<h5><i class="fa-solid fa-xmark"></i></h5>' +
					"</div>"
                );
			}  	
		},
		error : function(a){
			console.log(a);
        }
	});
}
	
	function travel_insert(insert) {
		//console.log(insert.children.item(0).innerText);
		var tra_in = insert.children.item(0).innerText;
		var tra_pid = "${pvo.product_id}";
		//console.log(tra_pid);
		//location.href="";
		$.ajax({
			type : "POST",
			url : "/rest/travin",
				dataType : "json",
				async:false,
				data : {
					product_id : tra_pid,
					plan_id : tra_in
				},
				success : function(data) {
	           		 // C?????? ????????? ???????????? ?????? ????????????
	           		//console.log(data);
					alert("????????????");
					$(".plusList, .plusListCover, body").removeClass("on");
				},
				error : function(a){
					console.log(a);
	            }
			});
	}
	
</script>
<!-- <script type="text/javascript">
	 const drawStar = (target) => {
		var ss = target.value*10;
		console.log(target.value*10);
		$('#star_r').css('width',ss+'%')
	    //document.querySelector('.star span').style.width = '${target.value*10}%';
		
	  } 

</script> -->

<script type="text/javascript">
	function rs() {
		var filech = $("#rimage_file_name").val();
		
		var r_contentd2 = document.getElementById('r_contentd2')
		document.getElementById('r_comment').value = r_contentd2.value;
		//console.log(r_contentd2.value);
		var today = new Date();
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var ti = hours + minutes + seconds;
		if(!filech){
			
		}else {
			var fileValue = $("#rimage_file_name").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // ?????????
			/* console.log(fileName); image_file_name_h */
			const a = $('#rimg_h').val(ti+fileName);
			const b = $('#rimage_file_name_h').val(ti+fileName);
		}
		
	}
	
	function rreadURL(input) {
	      var file = input.files[0] //????????? ?????? ??????
	     /*  console.log(file) */
	      if (file != '') {
	         var reader = new FileReader();
	         reader.readAsDataURL(file); //????????? ????????? ????????? ????????? ?????? 
	         reader.onload = function (e) { // ?????? ????????? ?????? ????????????
	          //e : ????????? ?????? result?????? ????????? ????????? ????????? ??????.
	/*             console.log(e)
	            console.log(e.target)
	            console.log(e.target.result) */
	           $('#rpreview').attr('src', e.target.result);
	          }
	      }
	  } 
</script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script type="text/javascript">
	$(function() {
		$('#start_date').daterangepicker(
				{
					"locale" : {
						"format" : "YYYYMMDD",
						"separator" : " ~ ",
						"applyLabel" : "??????",
						"cancelLabel" : "??????",
						"fromLabel" : "From",
						"toLabel" : "To",
						"customRangeLabel" : "Custom",
						"weekLabel" : "W",
						"daysOfWeek" : [ "???", "???", "???", "???", "???", "???", "???" ],
						"monthNames" : [ "1???", "2???", "3???", "4???", "5???", "6???",
								"7???", "8???", "9???", "10???", "11???", "12???" ],
					},
					"singleDatePicker" : true,
					"startDate" : new Date(),
					"endDate" : new Date(),
					"drops" : "down",
					"opens" : "center"
				},
				function(start, end, label) {
					console.log('New date range selected: '
							+ start.format('YYYY-MM-DD') + ' to '
							+ end.format('YYYY-MM-DD') + ' (predefined range: '
							+ label + ')');
				});
	}); 
</script>

</head>

<body>
    <jsp:include page="header.jsp" flush="true"/>
<!-- <button onclick="jal()">?????????</button> -->
    <section id="sec">
        <div class="main">
            <div class="main_in">
                <div class="tapName tapTop">
                 
                    <div class="nameIn">
                        <ul>
                            <li class="on">
                                <h2>????????????</h2>
                            </li>
                            <li>
                                <h2>????????????</h2>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="tapCon">
                    <div class="conIn">

                        <div class="tapMenu">
                            <div class="menuIn">
                                <div class="one">
                                    <div class="oneIn">
                                        <div class="left">
                                            <div class="tit">
                                                <h2>${pvo.product_name}</h2>
                                                <h3>${pvo.product_shortword}</h3>
                                                <h3>${pvo.product_address}</h3>

                                                <!-- ????????????????????? -->
                                                <security:authorize access="isAnonymous()">
                                                    <div class="heartBox" style="top:150px ;">
                                                        <div onclick="heart2()" class="heartIcon" style="font-size: 24px">
                                                            <i class="fa-regular fa-heart"></i>
                                                            <div class="heartNum">${heartcount}</div>
                                                        </div>
                                                    </div>
                                                </security:authorize>
                                                <!-- ?????????????????? -->
                                                <security:authorize access="isAuthenticated()">
                                                    <div class="heartBox" style="top:150px ;">
                                                        <div class="proaddbtn probtn_com" onclick="heart()">
                                                            <div id="ffhd" class="heartIcon">
                                                                <div style="font-size: 24px">
                                                                    <i class="fa-${heart} fa-heart" style="color:red" id="ffh"></i>
                                                                </div>
                                                                <div class="heartNum">${heartcount}</div>
                                                            </div>
                                                        </div>
        
                                                        <div class="proaddbtn probtn_com onePlusBtn" onclick="intra()">
                                                            <span>????????? ??????</span>
                                                        </div>
                                                    </div>
                                                </security:authorize>
                                            </div>

                                            <div class="context">
                                                <ul><!-- ??? ????????? ?????? ???????????? ????????? -->
                                                    <c:forEach items="${tList}" var="tl">
                                                    <li>                     
                                                        <div class="img">
                                                            <img src="/resources/img/tag_final/${tl.tag_tag}.png" id="icon">
                                                        </div>
                                                        <div class="txt">
                                                            <h2>${tl.tag_tag}</h2>
                                                        </div>
                                                    </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="right">
                                            <div class="swiper mySwiper2">
                                                <div class="swiper-wrapper">
                                                	<!-- ???????????? ?????????5????????? ????????? -->
                                                    <div class="swiper-slide">
                                                        <div class="img" style=" background: url(/resources/img/upload/${pvo.product_img1}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img2}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img3}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img4}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img5}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                </div>
                                                <div class="btn">
                                                    <div class="swiper-button-prev">
                                                        <i class="fa-solid fa-angle-left"></i>
                                                    </div>

                                                    <div class="swiper-pagination"></div>
                                                    
                                                    <div class="swiper-button-next">
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div thumbsSlider="" class="swiper mySwiper">
                                                <div class="swiper-wrapper">
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img1}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img2}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img3}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img4}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: url(/resources/img/upload/${pvo.product_img5}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tow">
                                    <div class="towIn">
                                        <h2>${pvo.product_subcontent}</h2>
                                        <!-- ?????????????????? ?????? pvo.product_subcontent??? ?????? model??? ??????
                                        ???????????? ????????? ?????? ????????? ?????? ???????????? ?????? ????????? ???????????????
                                        ?????? pvo.product_subcontent??? ????????? ???????????? ???????????? -->
                                        <!-- <h2 class="hiddenText">?????????????????????<br>????????????????????????</h2>
                                        <div class="hiddenBtn on">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div>
                                        <div class="plus btnHidden on">?????????<i class="fa-solid fa-angle-right"></i></div>
                                        <div class="down btnHidden">?????????<i class="fa-solid fa-xmark"></i></div> -->
                                    </div>
                                </div>

								<!--2???????????? ?????? ?????? ????????????????????? -->
                                <!-- <div class="three" style="display: none;">
                                    <div class="threeIn">
                                        <div class="tit">
                                            <h2>?????? ??????</h2>
                                        </div>

                                        <div class="threeCon">
                                            <ul>
                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>??????</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>??????</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>??????</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>??????</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>??????</h3>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div> -->

                                <div class="four">
                                    <div class="fourIn">
                                        <div class="tit">
                                            <h2>${pvo.product_category}??????</h2>
                                        </div>

                                        <div class="fourCon">
                                            <div class="left">
                                                <div class="info1">
                                                    <h2>????????????</h2>
                                                    <ul>
                                                        <li>
                                                            <h2>????????????</h2>
                                                            <h3>1?????? 15,000???</h3>
                                                        </li>
                                                        <li>
                                                            <h2>?????????</h2>
                                                            <h3>????????? 15:00 ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2>????????????</h2>
                                                            <h3>???????????? 12:00 ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2>????????????</h2>
                                                            <h3>????????? ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2>????????????</h2>
                                                            <h3>?????? ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2>????????????</h2>
                                                            <h3>?????? ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2>????????????</h2>
                                                            <h3>?????? ??????</h3>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="info2">
                                                    <h2>?????? ??? ??????</h2>
                                                    <ul>
                                                        <li>
                                                            <h2>??????</h2>
                                                            <h3>???????????? ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>??? 1??? ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>???????????? ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>??????????????? ??????</h3>
                                                        </li>
                                                        <li>
                                                            <h2>??????</h2>
                                                            <h3>??????????????? ?????????</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>???????????????</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>?????????</h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="right">
                                                <div class="txt">
                                                    <h2>????????????</h2>
                                                    <h3>- ???????????? ???????????? ??? ?????? ????????? ?????? ???????????? ????????????.</h3>
                                                    <h3>- ?????? ??? ????????????, ??????????????? ???????????? ??? ?????? ??????????????? ?????????.</h3>
                                                    <h3>- ?????? ?????? ????????? 10%??? ???????????? ????????????.</h3>
                                                </div>

                                                <div class="table">
                                                    <table>
                                                        <tbody>
                                                            <tr>
                                                                <th>?????? 7??? ???</th>
                                                                <th>?????? 6??? ???</th>
                                                                <th>?????? 5??? ???</th>
                                                                <th>?????? 4??? ???</th>
                                                                <th>?????? 3??? ???</th>
                                                                <th>?????? 2??? ???</th>
                                                                <th>?????? 1??? ???</th>
                                                                <th>?????? ??????</th>
                                                            </tr>
                                                            <tr>
                                                                <td>90% ??????</td>
                                                                <td>80% ??????</td>
                                                                <td>70% ??????</td>
                                                                <td>60% ??????</td>
                                                                <td>50% ??????</td>
                                                                <td>40% ??????</td>
                                                                <td>30% ??????</td>
                                                                <td>?????? ?????????</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="five">
                                    <div class="fiveIn">
                                        <div class="tit">
                                            <h2>??????</h2>
                                        </div>

                                        <div class="map_wrap">
										    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
										    <ul id="category">
										        <li id="BK9" data-order="0"> 
										            <span class="category_bg bank"></span>
										            ??????
										        </li>       
										        <li id="MT1" data-order="1"> 
										            <span class="category_bg mart"></span>
										            ??????
										        </li>  
										        <li id="PM9" data-order="2"> 
										            <span class="category_bg pharmacy"></span>
										            ??????
										        </li>  
										        <li id="OL7" data-order="3"> 
										            <span class="category_bg oil"></span>
										            ?????????
										        </li>  
										        <li id="CE7" data-order="4"> 
										            <span class="category_bg cafe"></span>
										            ??????
										        </li>  
										        <li id="CS2" data-order="5"> 
										            <span class="category_bg store"></span>
										            ?????????
										        </li>      
										    </ul>
										</div>
                                    </div>
                                </div>
                                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6325d6dc315ae205e4c0d801d1732810&libraries=services"></script>
								<script type="text/javascript" src="/resources/js/kakaoMap.js"></script> 
								<script type="text/javascript">
										window.onload = function real() {
										var setA = 1;
										var setB = 2;
										setA = ${pvo.product_locationx};
										setB = ${pvo.product_locationy};
										console.log(setA);
										console.log(setB); 
										
										 // ????????? ?????? ?????? ????????? ??????????????? 
									    var moveLatLon = new kakao.maps.LatLng(setA, setB);
									    
									    // ?????? ????????? ?????? ????????????
									    map.setCenter(moveLatLon);
									    
									 	// ????????? ????????? ??????????????? 
									    var markerPosition  = new kakao.maps.LatLng(setA, setB); 
									    
										 // ????????? ???????????????
									    var marker = new kakao.maps.Marker({
									        position: markerPosition
									    });
									    
									 	// ????????? ?????? ?????? ??????????????? ???????????????
									    marker.setMap(map);
									}
								</script>
								<!-- ???????????? -->
                                <div class="six">
                                    <div class="sixIn">
                                    	<security:authorize access="isAuthenticated()">
                                        <div class="tit">
                                            <h2>????????????</h2>
                                        </div>
                                        
                                        <div class="reviewWrap">
                                            <form method="post" action="/review" enctype="multipart/form-data"
                                                onsubmit="rs()">
                                                <ul>
                                                    <li>
                                                        <h2>??????</h2>
                                                        <span class="star">
                                                            ???????????????
                                                            <span id="star_r">???????????????</span>
                                                            <input type="range" oninput="drawStar(this)" value="1"
                                                                step="1" min="0" max="10" name="r_star">
                                                        </span>
                                                    </li>

                                                    <li>
                                                        <textarea placeholder="????????? ??????????????????"
                                                            contenteditable="true" id="r_contentd2"></textarea>
                                                        <input type="submit" value="????????????" class="reviewBtn">
                                                    </li>

                                                    <li>
                                                        <h2>?????????</h2>
                                                        <div class="preview">
                                                            <img id="rpreview" src="/resources/img/?????????????????????.png" />
                                                        </div>
                                                        <input type="file" name="rimage_file_name" id="rimage_file_name"
                                                            onchange="rreadURL(this);" />
                                                        <input type="hidden" name="r_img1" id="rimg_h">
                                                        <input type="hidden" name="rimage_file_name_h"
                                                            id="rimage_file_name_h">
                                                        <input type="hidden" value="${pvo.product_id}"
                                                            name="product_id">
                                                    </li>
                                                </ul>
                                                <input type="hidden" id="r_comment" name="r_comment">
                                            </form>
                                        </div>
                                        </security:authorize>
                                        
                                        <div class="tit">
                                            <h2>????????????</h2>
                                        </div>
                                        <div class="sixCon">
                                            <ul>
                                                <!-- ??????????????? ?????? -->
                                                <c:forEach items="${reviewList}" var="rl">
                                                    <li>
                                                        <div class="info">
                                                            <div>
                                                                <pre>${rl.r_comment}</pre>
                                                            </div>

                                                            <div class="user">
                                                                <img src="/resources/img/upload/${rl.mem_img}">
                                                                <div class="userIn">
                                                                    <h3>${rl.mem_id}</h3>
                                                                    <h4>${rl.r_date}</h4>
                                                                    <span class="star2"> ??????????????? <span id="star_r"
                                                                            style="width: ${rl.r_star*10}%">???????????????</span></span>
                                                                </div>
                                                                <div class="close" style="display: none;">
                                                                    <i class="fa-solid fa-xmark"></i>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="img">
                                                            <%-- <img src="/resources/img/upload/${rl.r_img1}"> --%>
                                                            <div style="border: none; background: url('/resources/img/upload/${rl.r_img1}') no-repeat 50% 50%; background-size: cover;width: 100%;height: 100%;"></div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>

                                            <div class="plusBtn">
                                                <h2>?????????<i class="fa-solid fa-arrow-down"></i></h2>

                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="tapMenu">
                        	<!-- ???????????? -->
                            <div class="calendar">
                                <ul>
                                    <li>
                                        <h2>???????????? ?????? ??????</h2>
                                        <input id="start_date" name="start_date">
                                    </li>
                                </ul>
                            </div>
							<!-- ??????????????? -->
							<c:forEach items="${dList}" var="dl">
                            <div class="room">
                                <div class="roomIn">
                                    <div class="left">
                                        <div class="swiper detailedSlider">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide" style="background: url(/resources/img/upload/${dl.pd_img1}) no-repeat 50% 50%; background-size:cover;"></div>
                                                <div class="swiper-slide" style="background: url(/resources/img/upload/${dl.pd_img2}) no-repeat 50% 50%; background-size:cover;"></div>
                                                <div class="swiper-slide" style="background: url(/resources/img/upload/${dl.pd_img3}) no-repeat 50% 50%; background-size:cover;"></div>
                                            </div>
                                            <div class="arrowBtn">
                                                <div class="swiper-button-prev">
                                                    <i class="fa-solid fa-angle-left"></i>
                                                </div>
                                                <div class="swiper-pagination"></div>
                                                <div class="swiper-button-next">
                                                    <i class="fa-solid fa-angle-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="right">
                                    	
                                        <div class="tit">
                                            <h2>${dl.pd_name}<span style="display: none;"><i class="fa-solid fa-user-group"></i>?????? {??} ~ ?????? {??}</span>
                                            </h2>
                                            <h3>${dl.pd_contents}</h3>
                                        </div>

                                        <div class="tag" style="display: none;">
                                            <ul>
                                                <li>
                                                    <div class="img">
                                                        <img src="" alt="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>????????????</h3>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="money" >
                                        	<div>
                                        		${dl.pd_price}???
                                        	</div>
                                            <table style="display: none;">
                                                <tbody>
                                                    <tr>
                                                        <th>??????</th>
                                                        <th>??????</th>
                                                        <th>?????????</th>
                                                        <th>??????</th>
                                                    </tr>
                                                    <tr>
                                                        <td>?????????</td>
                                                        <td>??????</td>
                                                        <td>??????</td>
                                                        <td>??????</td>
                                                    </tr>
                                                    <tr>
                                                        <td>?????????</td>
                                                        <td>??????</td>
                                                        <td>??????</td>
                                                        <td>??????</td>
                                                    </tr>
                                                    <tr>
                                                        <td>????????????</td>
                                                        <td>??????</td>
                                                        <td>??????</td>
                                                        <td>??????</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
										<security:authorize access="isAnonymous()">
                                        <div class="re" onclick="heart2()">
                                            <h2>????????????</h2>
                                        </div>
                                        </security:authorize>
                                        <security:authorize access="isAuthenticated()">
                                        <div class="re" onclick="kgkg(this)">
                                            <h2>????????????</h2>
                                            <span style="display: none;">${dl.pd_id}</span>
                                        </div>
                                        </security:authorize>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            <!-- ??????????????? -->
                        </div>

                    </div>
                </div>

                <div class="tapName tapBottom">
                    <div class="nameIn">
                        <ul>
                            <li class="on">
                                <h2>????????????</h2>
                            </li>
                            <li>
                                <h2>????????????</h2>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <div class="plusList">
        <div class="tit">
            <div class="travelName">
                <h2>?????????????????? ??????????????????</h2>
                <span>????????????</span>
                <span>????????????</span>
                <span>????????????</span>
            </div>
        </div>
        <div class="plusListIn" id="plusListIn"></div>
    </div>
    <div class="plusListCover"></div>

    <%@ include file="footer.jsp"%>
</body>

</html>
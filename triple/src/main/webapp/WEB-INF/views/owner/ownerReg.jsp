<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=1300">
        <title>Triple</title>
        <link rel="stylesheet" href="/resources/css/reset.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
        <link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css" integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css" integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css" integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css" integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css" integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css" integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css" integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="/resources/css/common.css">
        <link rel="stylesheet" href="/resources/css/ownerReg.css">
        
    
        <script src="/resources/js/jquery-3.6.0.min.js"></script>
        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="/resources/js/mobiscroll.jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
        <script src="/resources/js/main.js"></script>
        
        <link rel="shortcut icon" href="#">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        
        <script type="text/javascript">
        
        
       	
        </script>
    </head>
<body>

	<jsp:include page="../header.jsp" flush="true"/>

    <section id="sec">
        <div class="oReg">
            <div class="oReg_in">
                <!-- ???????????? ?????? -->
                <h3>????????????</h3>
                <div class="oReg_reg">
                    <div class="reg_product">
                    	<!-- <div class="pname p_com">
                            <p>???????????????</p>
                        </div> -->
                        <div class="pname p_com">
                            <p>????????????</p>
                        </div>
                        <div class="pword p_com">
                            <p>????????????</p>
                        </div>
                       
                        <div class="pcategory p_com">
                            <p>????????????</p>
                        </div>
                        <div class="ptag p_com">
                            <p>??????</p>
                        </div>
                        <div class="paddr p_com">
                            <p>??????</p>
                        </div>
                        <div class="pcity p_com">
                            <p>??????</p>
                        </div>
                        <div class="pxy p_com">
                            <p>??????</p>
                        </div>
                        <div class="pimg p_com">
                            <p>?????????</p>
                        </div>
                         <div class="prword p_com">
                            <p>????????????</p>
                        </div>
                    </div>

                    <!-- ???????????? ??? -->
                    <div class="product_form">
                        <form action="/proRegister" method="post" id="product" onsubmit="tos()" enctype="multipart/form-data">
                            <!-- <div class="pfname pf_com">
                                <input type="text" placeholder="??????????????? ????????? ?????????." onfocus="this.placeholder=''" onblur="this.placeholder='??????????????? ????????? ?????????.'" name="product_id">
                            </div> -->
                            <div class="pfname pf_com">
                                <input type="text" placeholder="???????????? ????????? ?????????." onfocus="this.placeholder=''" onblur="this.placeholder='???????????? ????????? ?????????.'" name="product_name" required="required">
                            </div>
                            <div class="pfword pf_com">
                                <input type="text" placeholder="???????????? ????????? ?????????." onfocus="this.placeholder=''" onblur="this.placeholder='??????????????? ????????? ?????????.'" name="product_shortword">
                            </div>

                            	
                            	<input type="hidden" name="product_subcontent" id="product_subcontent">

							<div class="pfcategory pf_com">
								<select name="product_category" id="product_category"
									onchange="change_tag()">
									<option value="??????" selected="selected" hidden="hidden">???????????????
										????????? ?????????.</option>
									<option value="??????">??????</option>
									<option value="?????????">?????????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????????????????">??????????????????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="???????????????">???????????????</option>
									<option value="??????">??????</option>
								</select>
							</div>

                            <div class="pftag pf_com">
                                <div id="tag_div">
                                    <!-- <button onclick="tag_p()">????????????</button> -->
                                    <div class="tag_box" onclick="tag_p()">
                                    	<i class="fa-solid fa-tag"></i>
                                    </div>
                                    <!-- <div class="tag_frame"></div> -->
                                    <div id="tag_frame"></div> 
                                    <div class="tag_del" onclick="tagdelete()">
                                        <i class="fa-solid fa-xmark"></i>
                                    </div>                
                                </div>
                            </div>

							<div class="pfaddr pf_com">
                                <input type="text" placeholder="????????? ????????? ?????????." onfocus="this.placeholder=''" onblur="this.placeholder='????????? ????????? ?????????.'" name="product_address">
                            </div>

                            <div class="pfcity pf_com">
                                <select name="product_city" id="">
                                    <option value="??????" selected="selected" hidden="hidden">????????? ????????? ?????????.</option>
                                    <option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="?????????">?????????</option>
									<option value="?????????">?????????</option>
									<option value="?????????">?????????</option>
									<option value="?????????">?????????</option>
									<option value="?????????">?????????</option>
								</select>
                            </div>
                            <div class="pfxy pf_com">
                                <span>X </span>
                                <input type="text" placeholder="?????? ????????? ?????????."onfocus="this.placeholder=''" onblur="this.placeholder='?????? ????????? ?????????.'" name="product_locationx" required="required">
                                <span>Y </span>
                                <input type="text" placeholder="?????? ????????? ?????????."onfocus="this.placeholder=''" onblur="this.placeholder='?????? ????????? ?????????.'" name="product_locationy" required="required">
                                <div class="mapbtn" style="display: none;">
                                    <i class="fa-solid fa-location-dot"></i>
                                </div>
                            </div>

                            <div class="pfimgframe">
                                <div class="pfimg pf_com" id="pfimglist">
                                    <div class="pfimg1 pfimg_com" id="pf_img1"></div>
                                    <!-- <div class="pfimg2 pfimg_com" id="pf_img2"></div>
                                    <div class="pfimg3 pfimg_com" id="pf_img3"></div>
                                    <div class="pfimg4 pfimg_com" id="pf_img4"></div>
                                    <div class="pfimg5 pfimg_com" id="pf_img5"></div> -->
                                </div>
                                <div class="pfinputframe" id="pfinputframe">
                                    <input type="file" id="oimage_file_name0"  accept="image/*" onchange="pfpreview(event);" name="oimage_file_name0">
                                </div>
                            </div>
                            <input type="hidden" name="product_id" id="product_id">
							<input type="hidden" name="tag_list_h" id="tag_list_h">
							<input type="hidden" name="tag_cate_h" id="tag_cate_h">
							<input type="hidden" name="image_h" id="image_h">
							<input type="hidden" name="product_img1" id="product_img1" value="def">
							<input type="hidden" name="product_img2" id="product_img2" value="def">
							<input type="hidden" name="product_img3" id="product_img3" value="def">
							<input type="hidden" name="product_img4" id="product_img4" value="def">
							<input type="hidden" name="product_img5" id="product_img5" value="def">

                            
							<div class="pfprword pf_com pf_height" contenteditable="true" id="p_subcontentd">
								<p>????????? ??????????????????!</p>
							</div>
                        </form>
                        <div class="bottomline"></div>
                    </div>
                    
                    <!-- ???????????? ??? ??? -->
                    
                </div>
                <!-- ???????????? ??? -->
				
				
<%-- 				<div id="tag_div">
					<button onclick="tag_p()">????????????</button>
					
				</div>
					<button onclick="dt()">????????????</button>
					<button onclick="tos()">???????????????</button>
					<button onclick="filetest()">???????????????</button>
				<div>
				<c:forEach items="${tnList}" var="tl">
					${tl.key}
					<c:forEach items="${tl.value}" var="tk">
						${tk}
					</c:forEach>
				</c:forEach>
				</div> --%>	
				
                <div class="bottombtn">
                    <div class="backbtn btn_com" onclick="location.href='/admin/oL'">
                        <span>????????????</span>
                    </div>
                    <div class="regbtn btn_com" onclick="$('#product').submit()">
                        <span>????????????</span>
                    </div>
                </div>


            </div>
        </div>
    </section>


    <%@ include file="../footer.jsp"%>

	<script type="text/javascript">
			
        // ???????????? ????????? ?????????
        var filename = new Array();
        var pfcount = 0;
        let pfarr = new Array();
        var arr = [];
        var c = 0;
        function pfpreview(event) { 
        	
        	var file = event.target.files[0]; //????????? ?????? ??????
    		filename.push(file.name);
        	console.log(file);
        	
            for (var pfimgpreview of event.target.files) { 
                var reader = new FileReader(); 
                reader.onload = function(event) { 
                    var img = document.createElement("img"); 
                    img.setAttribute("src", event.target.result); 
                    img.setAttribute("id", "productimg"+pfcount); 
                    //document.querySelector("#pf_img"+pfcount).appendChild(img);
                    document.querySelector("#pf_img1").appendChild(img);
                    
                    pfcount++;
                    if(pfcount <= 4){
                    //document.write(event.target.result);
                    const element2 = document.getElementById('pfinputframe');
                    const newInput = document.createElement('input');
    				newInput.setAttribute("type", "file");
    				newInput.setAttribute("id", "oimage_file_name" + pfcount);
    				newInput.setAttribute("name", "oimage_file_name" + pfcount);
    				newInput.setAttribute("onchange", "pfpreview(event);");
    				element2.appendChild(newInput);
                    }
    				
                };  
                    
                } 
                if(pfcount > 4){
                    alert("???????????? ?????? 5????????? ?????? ???????????????.")
                }else{
                    reader.readAsDataURL(pfimgpreview);  
                }
            }

       
    
        // ?????? ?????? ?????? ?????? ????????????
        $('#sec_reg .mapbtn').click(function(){
            window.open("ownerRoom.html","popup01","width=300","height=300");
        });
        
        function filetest() {
			var ftest = $('#pfimgpreview').val();
			console.log(ftest);
		}
        
	    var tarr = [];
	    //???????????? ????????????
	    function tos() {
	    	
	    	const p_subcontentd = document.getElementById('p_subcontentd')
			document.getElementById('product_subcontent').value = p_subcontentd.innerHTML;
	    	
			for (var i = 0; i < c; i++) {
				var tost = $('#tag_s'+i).val();
				tarr.push(tost);
				console.log(tarr[i]);
			}
			$('#tag_list_h').val(tarr);
			var ttt = $('#tag_list_h').val();
			console.log(ttt);
			//???????????????
			var today = new Date();
			var year = today.getFullYear();
			var month = ('0' + (today.getMonth() + 1)).slice(-2);
			var day = ('0' + today.getDate()).slice(-2);
			var hours = ('0' + today.getHours()).slice(-2);
			var minutes = ('0' + today.getMinutes()).slice(-2);
			var seconds = ('0' + today.getSeconds()).slice(-2);
			var fArray = new Array();
			for (var i = 0; i < pfcount; i++) {
				var ti = hours + minutes + seconds;
				var fnn = i + ti + filename[i];
				fArray.push(fnn);
				$('#product_img'+(i+1)).val(fnn);				
				console.log(fArray);
			}
			var pid = year + month + day + hours + minutes + seconds
			$('#product_id').val(pid);
			$('#image_h').val(fArray);
			console.log($('#image_h').val());
		}
		
	    // ????????? ?????? ??? ??????
        $('#pf_img1').click(function(e){
            var pfdel = e.target.getAttribute('id');
            
            $("#oimage_file_name"+re).val("");
            if(pfcount==0){
            	
            }else{
            	console.log(pfdel);
                e.target.remove();
                var re = pfcount-1;
                $("#oimage_file_name"+re).val("");
            	$("input").remove("#oimage_file_name"+pfcount);
                pfcount--;
            }
            
        });
	    //??????----------------------------------------------
       
        	function tag_p() {
        		//const a = $('#tag_div .tag_frame');
        		const a = $('#tag_frame');
        		var ta = $("#product_category").val();
        		if (ta == "") {
        			alert("??????????????? ??????????????????")
				}else {
					a.append('<div id="tdl'+c+'">');
					if(c<5){
	    				var tdl = $('#tdl'+c);
	    				tdl.append('<select id="tag_s'+c+'">');
	    				var d = $('#tag_s'+c);
	    				for (var i = 0; i < arr.length; i++) {	    					
	    					d.append("<option>"+arr[i]+"</option>");
	    				}
	    				c++;
	    				//console.log(c);
	        		}else{
	        			alert("?????? ??????????????? ???");
	        			c = 4;
	        		}
				}		      						
			}
       
        	function dt() {
        		if (c==0) {
					alert("????????? ??????????????????");
				}else {
					var dtc = c-1;
	        		var ths = $('#tag_s'+dtc);
	        		ths.remove();
	        		c--;
				}
			}
        	
        	function tagdelete(){
                var tta = $("#product_category").val();
                if (tta == "") {
        			alert("??????????????? ??????????????????")
                } else if(c==0){
                    alert("????????? ????????? ????????????.");
                } else {
                    var cc = c -1;
                    $('#tdl' + cc).remove();
                    c--;
                }

        		
        	}
        	
        function change_tag() {
        	
        	$.ajax({
				url : "/rest/tagList",
				dataType : "json",
				type : "POST",
				data : {
					tag_cate : $("#product_category").val(),
				},
				success : function(data) {
						//??????????????? ???????????? ????????????
						arr = [];
						$("#tag_cate_h").val(Object.keys(data));
						for (var i = 0; i < (data[Object.keys(data)]).length; i++) {
							//console.log(data[Object.keys(data)][i]);
							arr.push(data[Object.keys(data)][i]);							
						}


						//console.log(arr);
						//console.log(c);
						//console.log(Object.keys(data));	//??????????????? ???
						//console.log(data[Object.keys(data)]);	//??????????????? ???						
				}
			})
		}
        

    </script>

</body>
</html>
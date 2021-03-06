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
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
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
        <link rel="stylesheet" href="/resources/css/magReg.css">
        
    
        <script src="/resources/js/jquery-3.6.0.min.js"></script>
        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="/resources/js/mobiscroll.jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
        <script src="/resources/js/main.js"></script>
        
        <link rel="shortcut icon" href="#">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    </head>
<body>

    <jsp:include page="/WEB-INF/views/header.jsp" flush="true"/>
    
    <section id="sec">
        <div class="magreg_frame">
            <div class="mag_reg">
                <h3>????????? ??????</h3>
                <!-- <button onclick="magregsave()">?????????</button> -->
                <div class="magreg_in">
                    <form action="/writesave" onsubmit="magregsave()" method="post" id="writeform" enctype="multipart/form-data">
                        <div class="magform_in">
                            <div class="mag_top">
                                <input type="text" placeholder="????????? ??????????????????." name="mgz_title" required="required">
                                <div class="mag_city">
                                    <select name="mgz_city" id="mgz_city">
                                        <option value="??????" selected="selected" hidden="hidden">?????? ??????</option>
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
                                <div class="mag_catagory">
                                    <select name="mgz_category" id="mgz_category">
                                        <option value="??????" selected="selected" hidden="hidden">???????????? ??????</option>
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
                                <div class="magaddimg" onclick="fileb()">
                                <i class="fa-solid fa-image"></i>
                                    <!-- <label for="image_file_name0">
                                        
                                    </label> -->
                                    
                                </div>
                                <button class="magreg_submit">
                                    <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                            </div>
                            
                            <div class="mag_smalltitle">
                                <input type="text" placeholder="???????????? ??????????????????." name="mgz_smalltitle" required="required">
                            </div>
                            <div class="mag_smallcon" contenteditable="true" id="mgz_smallcontentd">
                                <p>????????? ????????? ??????????????????.</p>
                            </div>

                            <div class="mag_word" contenteditable="true" id="magwrite">
                                <p>????????? ??????????????????.</p>
                            </div>
                            
                        </div>
                        <input type="hidden" name="mgz_smallcontent" id="mgz_smallcontent">
                        <input type="hidden" name="mgz_id" id="mgz_id">
                        <input type="hidden" name="mgz_content" id="mgz_content">
                     <input type="hidden" name="mimage_file_name_h" id="mimage_file_name_h">
                     <div id="fileinh" style="display: none;">
                        <input type="file" id="image_file_name0" name="image_file_name0" onchange="readURL(this);">
                     </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
        <%@ include file="../footer.jsp"%>
        
    <script type="text/javascript">
        var count = 0;
       var filename = new Array();
       
       function fileb() {
          $('#image_file_name' + count).click();
      }

        function readURL(input) {
            var file = input.files[0] //????????? ?????? ??????
            filename.push(file.name);
            //console.log(input.value);
            //$('#image_file_name' + count).val(file);
            if (file != '') {
                var reader = new FileReader();
                //????????? ????????? ????????? ????????? ?????? 
                reader.readAsDataURL(file); 
                // ?????? ????????? ?????? ????????????
                reader.onload = function(e) { 
                    //e : ????????? ?????? result?????? ????????? ????????? ????????? ??????.
                    
                    $('#preview' + count).attr('src', e.target.result);
                    // ????????? ??????
                    const element = document.getElementById('magwrite');
                    // new div ??????
                    /* const newdivv = document.createElement('div');
                    newdivv.setAttribute("id","div" + count);
                    element.appendChild(newdivv); */
                    const newImg = document.createElement('img');
                    newImg.setAttribute("src", e.target.result);
                    //???????????? ??????????????? ??????????????? id??? ??????
                    newImg.setAttribute("id", "img" + (count++));
                    element.appendChild(newImg);
    
                    /* $("#writeform").append("<br>"); */
                    const fileinh = document.getElementById('fileinh');
                    const newInput = document.createElement('input');
                    //newInput.setAttribute("type", "file");
                    newInput.setAttribute("type", "file");
                    newInput.setAttribute("id", "image_file_name" + count);
                    newInput.setAttribute("name", "image_file_name" + count);
                    newInput.setAttribute("onchange", "readURL(this);");
                    fileinh.appendChild(newInput);
    

                }
            }
        }
        $('.mag_word').click(function(e){
            var magimgdel = e.target.getAttribute('id');
            var magimgid = magimgdel.substring(0,3);
            var maginput = "image_file_name";
            var maginputid = maginput + count;
            
            if(magimgid == 'img'){
               $('input').remove('#image_file_name' + count);
               e.target.remove();
               count--;
            }
        });

        function magregsave() {
        	
           mfilech = $('#image_file_name0').val()
           const mgz_smallcontentd = document.getElementById('mgz_smallcontentd')
          document.getElementById('mgz_smallcontent').value = mgz_smallcontentd.innerHTML;
           //console.log(mgz_smallcontentd.innerHTML);
           
           const element = document.getElementById('magwrite');
            var today = new Date();
         var year = today.getFullYear();
         var month = ('0' + (today.getMonth() + 1)).slice(-2);
         var day = ('0' + today.getDate()).slice(-2);
            var hours = ('0' + today.getHours()).slice(-2);
            var minutes = ('0' + today.getMinutes()).slice(-2);
            var seconds = ('0' + today.getSeconds()).slice(-2);
            
            if(!mfilech){
             
          }else {
            var fArray = new Array();
               for (var i = 0; i < count; i++) {
                   //????????? ????????? ???????????? id???         
                   var img = document.getElementById('img' + i);
                   var ti = hours + minutes + seconds;
                   var fnn = i + ti + filename[i];
                   //id?????? ????????? ???????????? img??????
                   img.setAttribute("src", "/resources/img/upload/" + fnn); 
                   fArray.push(fnn);
               }
               
               $("#mimage_file_name_h").val(fArray);
          }
            
            var mid = year + month + day + hours + minutes + seconds
            document.getElementById('mgz_content').value = element.innerHTML;
            $("#mgz_id").val(mid);
        }

    </script>
</body>
</html>
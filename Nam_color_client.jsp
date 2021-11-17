<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        :root {
            --text-color: rgba(255, 255, 255, 0.918);
            --background-color: rgba(0, 0, 0, 0.911);
            --accent-color: rgb(236, 27, 27);
              background-image: linear-gradient( 109.6deg,  rgba(0,0,0,1) 60.2%, rgba(247,30,30,1) 200.3% );  
 /* background-image: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda 79%, #7ac5d8 100%); */ 
 /* background-image: linear-gradient(to right, #09203f 0%, #537895 100%);   */
 /* background-image: linear-gradient(to left, #3ab5b0 0%, #3d99be 31%, #56317a 100%); */ 

        }

        body {
            margin: 0;
            font-family: "Source Sans Pro";
            background-color: rgb(26, 26, 26);
        }

        a {
            text-decoration: none;
            color: var(--text-color);
        }
        .custom-shape-divider-bottom-1637040446 {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    overflow: hidden;
    line-height: 0;
    transform: rotate(180deg);
}

.custom-shape-divider-bottom-1637040446 svg {
    position: relative;
    display: block;
    width: calc(229% + 1.3px);
    height: 183px;
    transform: rotateY(180deg);
}

.custom-shape-divider-bottom-1637040446 .shape-fill {
    fill: #A60311A1;
}
}
         .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: var(--background-color);
             padding: 8px 12px; 
            
        } 

        

        .Container {
            position: absolute;
            border-radius: 8px;
            padding: 10px 20px;
            top: 170px;
            
            left: 1030px;
            background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            font-size: 20px;
            color: var(--text-color);
            align-items: center;
        }

        .Container:hover {
            /* background-color: var(--accent-color); */
            border-radius: 8px;
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
        }
        .rotate {
            position: absolute;
            border-radius: 8px;
            padding: 10px 20px;
            top: 150px;
            
            left: 1030px;
            background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            font-size: 20px;
            color: var(--text-color);
            align-items: center;
        }

        .rotate:hover {
            /* background-color: var(--accent-color); */
            border-radius: 8px;
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
        }
        .Containerr {
            position: absolute;
            border-radius: 8px;
            padding: 9px 13px;
            top: 330px;
            
            left: 700px;
            background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            font-size: 20px;
            color: var(--text-color);
            align-items: center;
        }

        .Containerr:hover {
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
            border-radius: 8px;
        }
        .sel {
            position: absolute;
            border-radius: 8px;
            padding: 10px 20px;
            top: 250px;
            
            left: 380px;
            background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            font-size: 20px;
            color: var(--text-color);
            align-items: center;
        }

        .sel:hover {
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
            border-radius: 8px;
        }
        .func {
            position: absolute;
            border-radius: 8px;
            padding: 9px 13px;
            top: 430px;
            
            left: 780px;
            background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            font-size: 20px;
            color: rgb(38,8,8);
            align-items: center;
        }

        .func:hover {
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
            border-radius: 8px;
        }
        
        .zoom {
            position: absolute;
            border-radius: 8px;
            padding: 10px 20px;
            top: 150px;
            
            left: 700px;
            background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            font-size: 20px;
            color: var(--text-color);
            align-items: center;
        }

        .zoom:hover {
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
            border-radius: 8px;
        }
        .val {
            position: absolute;
            border-radius: 8px;
            padding: 10px 48px;
            top: 150px;
            
            left: 380px;
            background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            font-size: 20px;
            color: var(--text-color);
            align-items: center;
        }

        .val:hover {
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
            border-radius: 8px;
        }
        
        .filee {
            position: absolute;
            border-radius: 8px;
            padding: 10px 10px;
            top: 250px;
            
            left: 1030px;
            /* background-color: var(--background-color); */
            font-size: 20px;
            color: var(--text-color);
            
background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            align-items: center;
        }

        .filee:hover {
            background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
            border-radius: 8px;
        }
        .run {
            position: absolute;
            border-radius: 8px;
            padding: 10px 14px;
            top: 450px;
            
            left: 800px;
            /* background-color: var(--background-color); */
            font-size: 30px;
            color: var(--text-color);
            
            
             background: rgb(13,13,13);
background: linear-gradient(32deg, rgba(13,13,13,1) 6%,
 rgba(38,8,8,1) 15%, rgba(64,9,9,1) 30%,
  rgba(191,15,15,1) 44%, rgba(242,22,22,1) 52%,
   rgba(115,10,10,1) 64%, rgba(64,9,9,1) 76%,
    rgba(13,13,13,1) 89%);
            
            

            align-items: center;
        }

        .run:hover {
           background: rgb(38,8,8);
background: linear-gradient(163deg, rgba(38,8,8,1) 21%, rgba(64,9,9,1) 30%, rgba(13,13,13,1) 40%, rgba(64,9,9,1) 56%, rgba(13,13,13,1) 87%);
            border-radius: 8px;
        }

        

        .navbar__logo {
        padding: 20px 20px;
            font-size: 40px;
            color: var(--text-color);
            background: rgb(64,9,9);
background: linear-gradient(32deg, rgba(64,9,9,1) 12%, rgba(191,15,15,1) 39%, rgba(38,8,8,1) 54%, rgba(13,13,13,1) 57%, rgba(115,10,10,1) 68%, rgba(64,9,9,1) 79%, rgba(13,13,13,1) 90%);
        }

        .navbar__logo i {
            color: var(--accent-color);
        }

        
        .navbar__menu {
            margin-right: 50px;
            display: flex;
            list-style: none;
            padding-left: 0;
        }

        .navbar__menu li {
            padding: 8px 12px;
        }

        .navbar__menu li:hover {
            background-color: var(--accent-color);
            border-radius: 4px;
        }

        .navbar__toggleBtn {
            display: none;
            position: absolute;
            right: 32px;
            font-size: 24px;
            color: var(--accent-color);
        }

        /* .Container {
        display: none;
        position: absolute;
      } */

        @media screen and (max-width: 1300px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
                padding: 8px 24px;
            }

            .navbar__menu {
                display: none;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }

            .navbar__menu li {
                width: 100%;
                text-align: center;
            }

            .navbar__toggleBtn {
                display: block;
            }

            .navbar__menu.active {
                display: flex;
            }
        }



       

        
    </style>
     <script src="https://kit.fontawesome.com/efbc8e86d9.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
    
<title>Image Processing by Nam</title>
</head>
<body>
<div class="custom-shape-divider-bottom-1637040446">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
    </svg>
</div>
<div class="navbar__logo">
                <i class="fas fa-magic"></i>
                <a href="#" onClick="window.location.reload()">Image processing </a>

            </div>
            <hr color="indianred">
            
           <!--  <p >
           <select class="sel" name="algo">
				<button  class="func" value="101"   id="reverse">반전 처리</button>
				<button class="func" value="102" id="dark">밝게/어둡게</button>
				<button class="func" value="103"  id="para">파라볼라</button>
				<button class="func" value="104"  id="equal">평활화</button>
				<button class="func" value="105"  id="CI">양선형보간법</button>
				<button class="func" value="106"  id="rotate">입력회전</button>
			</select>
		</p>    -->

	<form method="post" action="Nam_color_server.jsp"
		enctype="multipart/form-data">
		
		  <p>
			 <select class="sel" name="algo">
				<option class="func" value="">선택 하세요</option>
				<option class="func" value="101">반전 처리</option>
				<option class="func" value="102">밝게/어둡게</option>
				<option class="func" value="103">파라볼라</option>
				<option class="func" value="104"> 흑백 </option>
				<option class="func" value="201">양선형보간법</option>
				<option class="func" value="202">입력회전</option>
				<option class="func" value="203">상하반전</option>
				<option class="func" value="204">좌우반전</option>
				<option class="func" value="301">평활화</option>
				<option class="func" value="302">엔드인</option>
				<option class="func" value="303">엠보싱</option>
				<option class="func" value="304">블러링</option>
				<option class="func" value="401">경계선</option>
				<option class="func" value="402">유사연산자</option>
				<option class="func" value="404">LOG</option>
				<option class="func" value="405">DOG</option>
				<option class="func" value="406">라플라시안</option>
			</select>  
			
		</p>   
		<!-- <a>
				<div class="Container">
					<font size=3 id="slider_value_view6">0</font> 
					<input type="range"
						class="realRotate2" id="realRotate2" name="rotate" min="0"
						max="360" value="0" step="1" onclick="zoomRotate2()" /> 
						<label
						for="회전 각도"><b><i>회전 각도 (0º ~ 360º)</i></b>
				</div>
				 </label>
			</a>-->
		<p class= "rotate">
		
			각도: <input type='text' value=0 name='rotate'>
		</p>
		<p class= "zoom">
		
			확대/축소: <input type='text' value=0 name='scale'>
		</p>
		<!-- <p> 회전각도: <input type='text' value=0 name='rotate'></p> -->
		<p class="val" >
			값: <input type='text' value=0 name='val'>
		</p>
		<p >
			 <input class="filee" type='file' name='filename' >
		</p>
		<p >
			<input class="run" type='submit' value='영상처리(칼라)'>
		</p>

	</form>
	<script language="javascript">
        function ShowSliderValue5(sVal) {
            var obValueView2 = document.getElementById("slider_value_view6");
            obValueView2.innerHTML = sVal
        }

        var RangeSlider2 = function() {
            var range2 = $('.realRotate2');

            range2.on('input', function() {
                ShowSliderValue5(this.value);
            });
        };

        RangeSlider2();
    </script>


</body>
</html>
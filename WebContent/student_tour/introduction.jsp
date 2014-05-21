<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Introduction</title>
	<style>
	      html, body{
			height: 100%;
	        margin: 0px;
	        padding: 0px
	      }
		  #map-canvas {
	        width: 720px;
			height: 480px;
	        margin: 10px;
			margin-right: 10px;
			padding: 5px;
			float: left;
			border-width: 1px;
			border-color: #7f7f7f;
			border-style: dotted;
			border-radius:10px;
	      }
	      #open-popup {padding:20px} 
	      .white-popup {
				  position: relative;
				  background: #FFF;
				  padding: 40px;
				  width: auto;
				  max-width: 200px;
				  margin: 20px auto;
				  text-align: center;
		  }
		  .masking-window {
		    display: none;
		    position: absolute;
		    top: 0%;
		    left: 0%;
		    width: 100%;
		    height: 120%;
		    background-color: black;
		    z-index: 1001;
		    -moz-opacity: 0.4;
		    opacity: .80;
		    filter: alpha(opacity=80);
			}
		
		.popup-window {
		    display: none;
		    position: absolute;
		    top: 20%;
		    left: 20%;
		    width: 50%;
		    height: auto;
		    padding: 16px;
		    border: 10px solid #E2A9F3;
		    background-color: #ECCEF5;
		    z-index: 1002;
		    overflow: auto;
		    border-radius:5px;
		}
	      
	</style>
	<link href="css/demo_modal.css" rel="stylesheet">
	<link href="css/modal.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/demo_imgzoom.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<noscript>
		<link rel="stylesheet" type="text/css" href="css/styleNoJS.css" />
	</noscript>
	<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Ultra' rel='stylesheet' type='text/css' />
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	
	<link href="http://vjs.zencdn.net/4.5/video-js.css" rel="stylesheet">
	<script src="http://vjs.zencdn.net/4.5/video.js"></script>
	
	<script>
	
		function initialize() {
		  var myLatlng = new google.maps.LatLng(40.694045,-73.986913);
		  var mapOptions = {
			zoom: 13,
			center: myLatlng
		  }
		  var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
		  var contentString = '<div id="content">'+
	      '<div id="siteNotice">'+
	      '</div>'+
	      '<h4 id="firstHeading" class="firstHeading">NYU Polytechnic School of Engineering</h4>'+
	      '<div id="bodyContent">'+
	      '<p><b>NYU Poly</b> is a comprehensive school of engineering,'+'<br>'+
		  'applied sciences, technology and research,'+'<br>'+
		  'and is rooted in a 158-year tradition of invention,'+'<br>'+ 
		  'innovation and entrepreneurship: i2e.' +'<br>'+
		  '<p><a href="#modal" class="btn go">Start Looking into Campus</a></p>'+'<br>'+
	      '<p><a href="https://engineering.nyu.edu/>NYU Poly</a></p>'+
	      '</div>'+
	      '</div>';
		
		
			var infowindow = new google.maps.InfoWindow({
			  content: contentString
			});
			var marker = new google.maps.Marker({
				position: new google.maps.LatLng(40.694045,-73.986913),
				map: map,
				title: 'NYU Polytechnic School of Engineering'
			});
			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(map,marker);
				map.setZoom(18);
				map.setCenter(marker.getPosition());
			});
			google.maps.event.addListener(infowindow,'closeclick',function(){
				map.setZoom(14);
				map.setCenter(new google.maps.LatLng(40.694045,-73.986913));
			});
			
		}
	
		google.maps.event.addDomListener(window, 'load', initialize);
    </script>
	<script type="text/javascript" language="javascript" src="js/ajax.js"></script>
</head>
<body bgcolor="#57068c">
	<h1><center><font color="white">Introduction</font></center></h1>
	<a href="student_tour/logout.jsp"><font color="white">Logout</font></a>
	<form method="post" action="SOEcur">
			<input type="hidden" name="navigation" value="next">	
			<center><table>
				<tr><td><font face="verdana,arial" size=-1>&nbsp;</td><td><font face="verdana,arial" size=-1><input type="submit" value="Next"></font></td></tr>
			</table></center>
	</form>
	<button onclick="DisplayPopUp(this, '2');">Next Poll</button>
	<div id="map-canvas"></div>
	<div>
	<h1><font color="white">Welcome to NYU Polytechnic School of Engineering</font> </h1>	
	<p><font color="white">The New York University Polytechnic School of Engineering offers programs in engineering, applied sciences, technology and research, and is rooted in a 160-year tradition of invention, innovation and entrepreneurship: i2e.</font></p>
	<div id="toolTip" class="popup-window">
    <h2></h2>
            <div id="d1">
            	<video width="100%" height="100%" controls>
  				<source src="movie.mp4" type="video/mp4">
  				<source src="movie.ogg" type="video/ogg">
  				Your browser does not support the video tag.
				</video>
            </div>
            <div id="d2">
            	<form action="">
            		<h1>Quiz Question</h1>
					<input type="radio" name="quiz" value="1">Answer 1<br>
					<input type="radio" name="quiz" value="2">Answer 2<br>
					<input type="radio" name="quiz" value="3">Answer 3<br>
					<input type="radio" name="quiz" value="4">Answer 4<br>
					<button id="btnClose" onclick="ClosePopup(); return false;" class="right">Submit & move to next Panel</button>
				</form>
				
            </div>
            <div>
            	<button id="btnClose" onclick="ClosePopup(); return false;" class="right">Close</button>
			</div>
        </div>
        <div id="mask" class="masking-window"></div>
		<center><button onclick="DisplayPopUp(this, '1');">Introduction Video</button></center>
<div id="video_container"></div>
	</div>
	<div id="modal">
		<div class="modal-content">

			<div class="cf footer">
				<a href="#" class="btn">Close</a>
				</div>
			<div class="container">
				<div id="zt-container" class="zt-container">
						<div class="zt-item" data-id="zt-item-1">
							<img class="zt-current" src="images/image1.jpg" />
							<div class="zt-tag" data-dir="1" data-link="zt-item-2" data-zoom="14" data-speed="950" data-delay="150" style="top:69px;left:65px;"></div>
							<div class="zt-tag" data-dir="1" data-link="zt-item-3" data-zoom="6" data-speed="850" data-delay="20" style="width:150px;height:111px;top:241px;left:135px;"></div>
							<div class="zt-tag" data-dir="1" data-link="zt-item-4" data-zoom="9" data-speed="800" data-delay="70" style="top:227px;left:346px;"></div>
							<div class="zt-tag" data-dir="1" data-link="zt-item-5" data-zoom="12" data-speed="800" data-delay="150" style="top:73px;left:410px;"></div>
							</div>
						<div class="zt-item" data-id="zt-item-2">
							<img class="zt-current" src="images/image1_1.jpg" />
							<div class="zt-tag" data-dir="1" data-link="zt-item-6" data-zoom="6" data-speed="950" data-delay="150" style="top:348px;left:459px;"></div>
							<div class="zt-tag zt-tag-back" data-dir="-1" data-link="zt-item-1" data-zoom="14" data-speed="750" data-delay="80"></div>
							</div>
						<div class="zt-item" data-id="zt-item-3">
							<img class="zt-current" src="images/image1_2.jpg" />
							<div class="zt-tag zt-tag-back" data-dir="-1" data-link="zt-item-1" data-zoom="6" data-speed="550" data-delay="20"></div>
							</div>
						<div class="zt-item" data-id="zt-item-4">
							<img class="zt-current" src="images/image1_3.jpg" />
							<div class="zt-tag zt-tag-back" data-dir="-1" data-link="zt-item-1" data-zoom="9" data-speed="700" data-delay="70"></div>
							</div>
						<div class="zt-item" data-id="zt-item-5">
							<img class="zt-current" src="images/image1_4.jpg" />
							<div class="zt-tag zt-tag-back" data-dir="-1" data-link="zt-item-1" data-zoom="12" data-speed="700" data-delay="10"></div>
							</div>
						<div class="zt-item" data-id="zt-item-6">
							<img class="zt-current" src="images/image1_5.jpg" />
							<div class="zt-tag zt-tag-back" data-dir="-1" data-link="zt-item-2" data-zoom="12" data-speed="700" data-delay="20"></div>
						</div>
				</div>
			</div>
		</div>
		<div class="overlay"></div>
	</div>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.transform-0.9.3.min_.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.zoomtour.js"></script>
	<script type="text/javascript">
		$(function() {
				$('#zt-container').zoomtour();	
			});
	</script>
</body>
</html>

<script>
function DisplayPopUp(sender, text) {
	var panelNo=1;
	makeRequest(panelNo);
	var data = text;
    if (data == "") {
        data = sender.innerHTML;
    }

    var toolTip = document.getElementById("toolTip");
    //toolTip.childNodes[3].innerHTML = data;
    //toolTip.childNodes[1].innerHTML = heading;

    toolTip.style.display = 'block';
    document.getElementById('mask').style.display = 'block';
    document.getElementById('d1').style.display = 'block';
    if(text== '2')
    {
    	document.getElementById('d1').style.display = 'none';
    	document.getElementById('d2').style.display = 'block';
	}
    if(text== '1')
    {
    	document.getElementById('d1').style.display = 'block';
    	document.getElementById('d2').style.display = 'none';
	}
}

// Hide popup
function ClosePopup() {
    document.getElementById('toolTip').style.display = 'none';
    document.getElementById('mask').style.display = 'none';
}

</script>
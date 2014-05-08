<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Placement AP</title>
<style type="text/css">
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
</head>

<body bgcolor="#57068c">
<h1><center><font color="white">Placement AP</font></center></h1>
<a href="student_tour/logout.jsp"><font color="white">Logout</font></a>
<form method="post" action="expFreshamenPrg">
		<input type="hidden" name="navigation" value="next">	
		<center><table>
			<tr><td><font face="verdana,arial" size=-1>&nbsp;</td><td><font face="verdana,arial" size=-1><input type="submit" value="Next"></font></td></tr>
		</table></center>
</form>
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
					<input type="radio" name="quiz" value="4">Answer 4
				</form>
            </div>
            <button id="btnClose" onclick="ClosePopup(); return false;" class="right">OK </button>
        </div>
        <div id="mask" class="masking-window"></div>
<button onclick="DisplayPopUp(this, '1');">test1</button>
<button onclick="DisplayPopUp(this, '2');">test2</button>
</body>
</html>
<script>
function DisplayPopUp(sender, text) {
    var data = text;
    if (data == "") {
        data = sender.innerHTML;
    }

    var toolTip = document.getElementById("toolTip");
    //toolTip.childNodes[3].innerHTML = data;
    //toolTip.childNodes[1].innerHTML = heading;

    toolTip.style.display = 'block';
    document.getElementById('mask').style.display = 'block';
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
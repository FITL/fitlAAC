<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<title>SOE Curriculum</title>

</head>
<script>
$(document).ready(function(){
	$('.open_video').click(function(){
		$('#shadow').css({opacity:0.5});
		$('#shadow,#video'),fadeIn('slow');
		
		return false;
	});
	$('#shadow,#close').click(function(){
		$('#shadow,#video'),fadeOut(1000);
	});
});
</script>
<style type="text/css">
*{margin:0px; padding:0px;text-decoration:none;}
.open_video{color:#000;}
#video{width:560px;min-height:100%;position:adsoulute; left:50px;top:50px; 
margin-left:-290px; margin-top:-160px;z-index:1;display:none;
border:10px solid #fff;border-radius:5px;-moz-border-radius:5px; -o-border-radius:5px;-webkit-border-radius:5px;}
#shadow{width:100%;min-height:100%;background:#000;position:adsoulute; left:0px;top:0px;z-index:0;display:none;}
#close{width:100%;height:50%;position:absolute; top:-50px;right:-50px;color:#FFF;}

</style>
<body bgcolor="#57068c">
<h1><center><font color="white">SOE Curriculum</font></center></h1>
<a href="student_tour/logout.jsp"><font color="white">Logout</font></a>
<form method="post" action="placementAP">
		<input type="hidden" name="navigation" value="next">	
		<center><table>
			<tr><td><font face="verdana,arial" size=-1>&nbsp;</td><td><font face="verdana,arial" size=-1><input type="submit" value="Next"></font></td></tr>
		</table></center>
</form>
<a class="open_video" href="#" ><font color="white">Pop Up Video</font></a>
<div id="video">
<div id="close">Closes</div>
<iframe width="560" height="315" src="//www.youtube.com/embed/G3LbGa-1EcI" frameborder="0" allowfullscreen></iframe>
</div>
<div id="shadow">

</div>
</body>
</html>
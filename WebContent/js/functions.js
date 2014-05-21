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
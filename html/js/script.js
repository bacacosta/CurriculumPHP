function getXmlHttpObject() {
	var xmlHttp = null;

	try {
		//Firefox, Opera 8.0+, Safari
		xmlHttp = new XMLHttpRequest();
	} catch (e) {
		try {
			//Internet Explorer 6.0+
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				//Internet Explorer 5.5+
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				alert("Your browser does not support AJAX.");
				return false;
			}
		}
	}

	return xmlHttp;
}

function getData() {
	var xmlHttp = getXmlHttpObject();

	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4) {
			document.getElementById("main").innerHTML = xmlHttp.responseText;
		} else {
			document.getElementById("main").innerHTML = "Loading...";
		}
	}

	xmlHttp.open("GET", "data/testing.html", true);
	xmlHttp.send(null);
}
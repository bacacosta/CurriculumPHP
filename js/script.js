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

function editExperience(id) {
	var xmlHttp = getXmlHttpObject();
	var url = "control/experience.ctrl.php?id=" + id +
			  "&companyWidth=" + document.getElementById("company-" + id).offsetWidth +
			  "&cityWidth=" + document.getElementById("city-" + id).offsetWidth +
			  "&countryWidth=" + document.getElementById("country-" + id).offsetWidth +
			  "&startWidth=" + document.getElementById("start-" + id).offsetWidth +
			  "&endWidth=" + document.getElementById("end-" + id).offsetWidth +
			  "&functionWidth=" + document.getElementById("function-" + id).offsetWidth +
			  "&descriptionHeight=" + document.getElementById("description-" + id).offsetHeight;

	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4) {
			document.getElementById("experience-" + id).style.border = "1px #000000 solid";
			document.getElementById("experience-" + id).innerHTML = xmlHttp.responseText;
		}
	}

	xmlHttp.open("GET", url, true);
	xmlHttp.send(null);
}
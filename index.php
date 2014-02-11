<?php
switch ($_GET["site"]) {
	case "info": $require = "info"; break;
	case "experience": $require = "experience"; break;
	default: $require = "start";
}

require("control/menu.ctrl.php");
require("control/".$require.".ctrl.php");
include("templates/main.tpl.php");
?>
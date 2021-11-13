<?php
	require("suti.php");
	$server = new SoapServer("suti.wsdl");
	$server->setClass('SutiInterface');
	$server->handle();
?>

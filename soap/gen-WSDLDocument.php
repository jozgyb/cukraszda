<?php
	//error_reporting(0);
	require 'suti.php';
	require 'WSDLDocument/WSDLDocument.php';
	$wsdl = new WSDLDocument('SutiInterface', "http://localhost/web2/soap/server.php", "http://localhost/web2/soap/");
	$wsdl->formatOutput = true;
	$wsdlfile = $wsdl->saveXML();
	echo $wsdlfile;
	file_put_contents ("suti.wsdl" , $wsdlfile);
?>

<?php

class Kilepes_Model
{
	public function get_data()
	{
		$retData['eredmény'] = "OK";
		$retData['uzenet'] = "Visszontlátásra kedves ".$_SESSION['userlastname']." ".$_SESSION['userfirstname']."!";
		$_SESSION['userid'] =  0;
		$_SESSION['userlastname'] =  "";
		$_SESSION['userfirstname'] =  "";
		$_SESSION['bejelentkezes'] =  "";
		$_SESSION['userlevel'] = "/1[0-1][0-1]/";
		Menu::setMenu();
		return $retData;
	}
}

?>
<?php

class Regisztracio_Controller
{
	public $baseName = 'regisztracio';  //meghatározni, hogy melyik oldalon vagyunk
	public function main(array $vars) // a router által továbbított paramétereket kapja
	{
		//betöltjük a nézetet
		$regisztracioModel = new Regisztracio_Model;
		$retData = $regisztracioModel->get_data($vars);
		
		$view = new View_Loader($this->baseName."_main");
		foreach($retData as $name => $value)
			$view->assign($name, $value);
	}
}

?>
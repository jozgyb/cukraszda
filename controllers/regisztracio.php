<?php

class Regisztracio_Controller
{
	public $baseName = 'belepes';  //meghatározni, hogy melyik oldalon vagyunk
	public function main(array $vars) // a router által továbbított paramétereket kapja
	{
		//betöltjük a nézetet
		$regisztracioModel = new Regisztracio_Model;
		$regisztracioModel->regisztracio();
		
		/*$view = new View_Loader($this->baseName."_main");
		foreach($retData as $name => $value)
		{
			$view->assign($name, $value);
		}*/
	}
}
?>
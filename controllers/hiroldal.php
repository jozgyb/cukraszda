<?php

class Hiroldal_Controller
{
	public $baseName = 'hiroldal';

	public function main(array $vars)
	{
		
		$hiroldalModel = new Hiroldal_Model;
		$retData = $hiroldalModel->lekeres($vars);
		$hiroldalModel->beuszras();
		$hiroldalModel->beszuraskomment();
		
		
		$view = new View_Loader($this->baseName."_main");
		
		foreach($retData as $nev => $value)
		{
			$view->assign($nev, $value);
		}
	

	}
}


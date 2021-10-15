<?php

class Hiroldal_Controller
{
	public $baseName = 'hiroldal';
	public function main(array $vars)
	{
		$hiroldalModel = new Hiroldal_Model;
		$retData = $hiroldalModel->lekeres($vars);
		$retData2 = $hiroldalModel->lekeres2($vars);
		$hiroldalModel->beszuraskomment();
		$hiroldalModel->beuszras();
		
		$view = new View_Loader($this->baseName."_main");
		
		foreach($retData as $nev => $value)
		{
			$view->assign($nev, $value);
		}
	foreach($retData2 as $nev => $value)
		{
			$view->assign($nev, $value);
		}

	}
}


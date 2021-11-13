<?php

class Arlista_Controller
{
	public $baseName = 'arlista';
	public function main(array $vars)
	{
        $arlistaModel = new Arlista_Model;
        if(isset($_POST['mentes']))
        {
            $sutik = $arlistaModel->getSutik($_POST['mentes']);
        } else {
            $sutik = $arlistaModel->getSutik('');
        }

		$view = new View_Loader($this->baseName."_main");
        $view->assign('sutik', $sutik->sutik);
	}
}

?>
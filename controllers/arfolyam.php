<?php

class Arfolyam_Controller
{
    public $baseName = 'arfolyam';

    public function main(array $vars)
    {

        $arfolyamModel = new Arfolyam_Model;
        if(isset($_POST['day']) && $_POST['dailyCurrencyNames'])
        {
            $napiArfolyam = $arfolyamModel->getDailyExchangeRates($_POST['day'], $_POST['dailyCurrencyNames']);
        }
        if(isset($_POST['startDate']) && $_POST['endDate'] && $_POST['monthlyCurrencyNames'])
        {
            $haviArfolyam = $arfolyamModel->getMonthlyExchangeRates($_POST['startDate'], $_POST['endDate'], $_POST['monthlyCurrencyNames']);
        }

        $view = new View_Loader($this->baseName . "_main");

        if(isset($napiArfolyam))
        {
            $view->assign('napiArfolyam', $napiArfolyam);
            $currencies = explode(',', $_POST['dailyCurrencyNames']);
            $view->assign('dailyCurrencyNames', $currencies);
            $view->assign('day', $_POST['day']);
        }
        if(isset($haviArfolyam))
        {
            $view->assign('haviArfolyam', $haviArfolyam);
            $view->assign('monthlyCurrencyNames', $_POST['monthlyCurrencyNames']);
        }


    }
}

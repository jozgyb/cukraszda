<?php

class Arfolyam_Controller
{
    public $baseName = 'arfolyam';

    public function main(array $vars)
    {

        $arfolyamModel = new Arfolyam_Model;
        if(!empty($_POST['day']) && !empty($_POST['currencyDataList']))
        {
            $napiArfolyam = $arfolyamModel->getDailyExchangeRates($_POST['day'], $_POST['currencyDataList']);
        }
        if(!empty($_POST['startDate']) && !empty($_POST['endDate']) && !empty($_POST['monthlyCurrencyNames']))
        {
            $haviArfolyam = $arfolyamModel->getMonthlyExchangeRates($_POST['startDate'], $_POST['endDate'], $_POST['monthlyCurrencyNames']);
        }

        $view = new View_Loader($this->baseName . "_main");

        if(!empty($napiArfolyam))
        {
            $view->assign('napiArfolyam', $napiArfolyam);
            $currencies = explode(',', $_POST['currencyDataList']);
            $view->assign('currencyDataList', $currencies);
            $view->assign('day', $_POST['day']);
        }
        if(!empty($haviArfolyam))
        {
            $view->assign('haviArfolyam', $haviArfolyam);
            $view->assign('monthlyCurrencyNames', $_POST['monthlyCurrencyNames']);
        }

        $availableCurrencies = $arfolyamModel->getCurrencies();
        $view->assign('currencies', $availableCurrencies);
    }
}

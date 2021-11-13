<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <title>Sütik</title>
</head>

<?php
$options = array(

    'keep_alive' => false,
    //'trace' =>true,
    //'connection_timeout' => 5000,
    //'cache_wsdl' => WSDL_CACHE_NONE,
);
$client = new SoapClient('http://localhost/web2/soap/suti.wsdl', $options);

$sutik = $client->getMentesSutik('G');
echo "<pre>";
print_r($sutik);
echo "</pre>";
?>

<body>
</body>

</html>
<?php

//alkalmaz�s gy�k�r k�nyvt�ra a szerveren
define('SERVER_ROOT', $_SERVER['DOCUMENT_ROOT'].'/web2/');
// set_include_path(get_include_path().PATH_SEPARATOR.SERVER_ROOT.'models');
// set_include_path(get_include_path().PATH_SEPARATOR.SERVER_ROOT.'views');

//URL c�m az alkalmaz�s gy�ker�hez
define('SITE_ROOT', 'http://localhost/web2/');

// a router.php vez�rl� bet�lt�se
require_once(SERVER_ROOT . 'controllers/' . 'router.php');

?>
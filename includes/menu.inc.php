<?php

class Menu
{
    public static $visibleMenu = array();
    private static $menu = array(
        'nyitolap' => array('nev' => 'Nyitólap', 'szulo' => '', 'jogosultsag' => '111', 'sorrend' => '10'),
        'arlista' => array('nev' => 'Árlista', 'szulo' => '', 'jogosultsag' => '111', 'sorrend' => '20'),
        'hiroldal' => array('nev' => 'Híroldal', 'szulo' => '', 'jogosultsag' => '011', 'sorrend' => '25'),
        'arfolyam' => array('nev' => 'Árfolyam', 'szulo' => '', 'jogosultsag' => '111', 'sorrend' => '30'),
        'belepes' => array('nev' => 'Belépés', 'szulo' => '', 'jogosultsag' => '100', 'sorrend' => '60'),
        'kilepes' => array('nev' => 'Kilépés', 'szulo' => '', 'jogosultsag' => '011', 'sorrend' => '70')
    );

    public static function setMenu()
    {
        self::$visibleMenu = array();
        foreach (self::$menu as $url => $menuData) {
            if (preg_match($_SESSION['userlevel'], $menuData['jogosultsag'], $match)) {
                self::$visibleMenu[$url] = array($menuData['nev'], $menuData['szulo'], $menuData['jogosultsag']);
            }
        }
    }

    public static function isAuthorizedToLoadPage($url)
    {
        return preg_match($_SESSION['userlevel'], self::$menu[$url]['jogosultsag'], $match);
    }

    public static function getMenu($sItems)
    {
        $submenu = "";

        $menu = "<ul class=\"m-0\">";
        foreach (self::$visibleMenu as $menuindex => $menuitem) {
            if ($menuitem[1] == "") {
                $menu .= "<li><a href='" . SITE_ROOT . $menuindex . "' " . ($menuindex == $sItems[0] ? "class='selected'" : "") . ">" . $menuitem[0] . "</a></li>";
            } else if ($menuitem[1] == $sItems[0]) {
                $submenu .= "<li><a href='" . SITE_ROOT . $sItems[0] . "/" . $menuindex . "' " . ($menuindex == $sItems[1] ? "class='selected'" : "") . ">" . $menuitem[0] . "</a></li>";
            }
        }
        $menu .= "</ul>";

        if ($submenu != "")
            $submenu = "<ul>" . $submenu . "</ul>";

        return $menu . $submenu;
    }
}

Menu::setMenu();

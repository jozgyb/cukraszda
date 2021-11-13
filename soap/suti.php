<?php
class Suti
{
    /**
     * @var string
     */
    public $nev;
    /**
     * @var string
     */
    public $tipus;
    /**
     * @var boolean
     */
    public $dijazott;
    /**
     * @var string
     */
    public $mentes;
    /**
     * @var string
     */
    public $egyseg;
    /**
     * @var integer
     */
    public $ertek;
}

class Sutik
{
    /**
     * @var Suti[]
     */
    public $sutik;
}

class SutiInterface
{
    private static $db_handler;

    public static function getConnection()
    {
        if (!self::$db_handler) {
            self::$db_handler = new PDO(
                'mysql:host=localhost;dbname=cuki_soap',
                'root',
                '',
                array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
            );
            self::$db_handler->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
        }
        return self::$db_handler;
    }

    /**
     *  @param string $allergen
     *  @return Sutik
     */
    public function getMentesSutik($allergen)
    {
        $query = "SELECT nev, tipus, dijazott, mentes, egyseg, ertek FROM suti JOIN tartalom ON suti.id = tartalom.sutiid JOIN ar ON suti.id = ar.sutiid GROUP BY nev HAVING tartalom.mentes like '%{$allergen}%'";

        return array('sutik' => self::$db_handler->query($query)->fetchAll(PDO::FETCH_ASSOC));
    }
}

SutiInterface::getConnection();

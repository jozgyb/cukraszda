<?php
require_once('../includes/database.inc.php');
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
    /**
     *  @param string $allergen
     *  @return Sutik
     */
    public function getMentesSutik($allergen)
    {
        $query = "SELECT nev, tipus, dijazott, mentes, egyseg, ertek FROM suti JOIN tartalom ON suti.id = tartalom.sutiid JOIN ar ON suti.id = ar.sutiid GROUP BY nev HAVING tartalom.mentes like '%{$allergen}%'";

        return array('sutik' => Database::getConnection()->query($query)->fetchAll(PDO::FETCH_ASSOC));
    }
}

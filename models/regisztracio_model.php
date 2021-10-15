<?php
class Regisztracio_Model
{
	public function get_data($vars)
	{
		$retData['eredmeny'] = "";
		$retData['uzenet'] = "";
		try {
			$connection = Database::getConnection();
			if(isset($_POST['csaladi_nev']) && isset($_POST['utonev']) && isset($_POST['bejelenkezes']) && isset($_POST['password']))
            {
		    $_POST['csaladi_nev'] = trim($_POST['csaladi_nev']);
            $_POST['utonev'] = trim($_POST['utonev']);
		    $_POST['bejelenkezes'] = trim($_POST['bejelenkezes']);
			$_POST['password'] = trim($_POST['password']);
			$jogosultsag = "_1_";

		if($_POST['csaladi_nev'] != "" && $_POST['utonev'] != "" && $_POST['bejelenkezes'] != "" && $_POST['password'] != "")
        {

			$sql = "insert into felhasznalok values (0, '".$_POST['csaladi_nev']."', '".$_POST['utonev']."', '".$_POST['bejelenkezes']."', '".sha1($_POST['password'])."', '".$jogosultsag."')";

			  $count = $connection->query($sql);
              $newid = $connection->lastInsertId();
			
			}
			}
		}
		catch (PDOException $e) {
			$retData['eredmény'] = "ERROR";
					$retData['uzenet'] = "Adatbázis hiba: ".$e->getMessage()."!";
		}
		return $retData;
		
	}
	
}
?>
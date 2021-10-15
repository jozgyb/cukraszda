<?php
class Regisztracio_Model
{
	public function regisztracio()
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
            $retData['eredmeny'] = "OK";
			$retData['uzenet'] = "Sikeres regisztráció";
			$sql = "insert into felhasznalok values (0, '".$_POST['csaladi_nev']."', '".$_POST['utonev']."', '".$_POST['bejelenkezes']."', '".sha1($_POST['password'])."', '".$jogosultsag."')";

			  $count = $connection->query($sql);
              $newid = $connection->lastInsertId();
			
			}
			elseif($_POST['csaladi_nev'] == "" && $_POST['utonev'] == "" && $_POST['bejelenkezes'] == "" && $_POST['password'] == "")
			{
				  echo "Hiba: Nem adott meg egy adatot sem"; 
			}
			elseif($_POST['csaladi_nev'] == "" )
			{
				 echo "Hiba: Nem adott meg család nevet"; 
			}
			elseif($_POST['utonev'] == "" )
			{
				 echo "Hiba: Nem adott meg kereszt nevet"; 
			}
			elseif($_POST['bejelenkezes'] == "" )
			{
				 echo "Hiba: Nem adott meg felhasználónevet"; 
			}
			elseif($_POST['password'] == "" )
			{
				 echo "Hiba: Nem adott meg jelszót"; 
			}
			
			}
	
		}
		catch (PDOException $e) {
			$retData['eredmény'] = "ERROR";
					$retData['uzenet'] = "Adatbázis hiba: ".$e->getMessage()."!";
		}

	
		
	}
		
}
?>
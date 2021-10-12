<?php

class Hiroldal_Model
{
	public function get_data($vars)
	{
		$retData['eredmeny'] = "";
	try
	{
		$connection = Database::getConnection();
		$sql = "select id, nev, uzenet, datum from hirek";
		$stmt = $connection->query($sql);
		$hir = $stmt->fetchAll(PDO::FETCH_ASSOC);
		
		switch(count($hir)) {
		case 0:
					$retData['eredmeny'] = "ERROR";
					$retData['uzenet'] = "Még nincs egy hír sem!";
					break;
		case 1:
				$retData['eredmény'] = "OK";
				$retData['uzenet'] = $hir[0]['nev']." ".$hir[0]['uzenet'];
				$_SESSION['id'] =  $felhasznalo[0]['id'];
				$_SESSION['nev'] =  $felhasznalo[0]['nev'];
				$_SESSION['uzenet'] =  $felhasznalo[0]['uzenet'];
				$_SESSION['datum'] = $felhasznalo[0]['datum'];
				Menu::setMenu();
				break;
		default:
		$retData['eredmény'] = "ERROR";
		}
		
	}
		
		
		/*while($row=$sth->fetch(PDO::FETCH_ASSOC)) {
	?><div class="nevresz"> <div class="tartalom"> <?php
	echo $row["id"];
       echo  $row["nev"];
 ?> </div><div class="tartalom2"><?php
	   echo  $row["uzenet"];
	 ?>   </div> <div class="tartalom"><?php
	    echo $row["datum"];
	 ?>Véleményezés</div></div><?php*/
	 

	
	catch (PDOException $e) {
				
					$retData['uzenet'] = "Adatbázis hiba: ".$e->getMessage()."!";
		}
		return $retData;
}
}

?>
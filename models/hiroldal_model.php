<?php

class Hiroldal_Model
{
	public function lekeres($vars)
	{
		$retData['eredmeny'] = "";
		$retData['uzenet'] =array();
	try
	{
		$connection = Database::getConnection();
		$sql = "select * from hirek";
		$stmt = $connection->query($sql);
		$stmt -> execute();
		$hirek = $stmt->fetchAll(PDO::FETCH_ASSOC);
		
		if(count($hirek)==0) {
		$retData['eredmeny'] = "ERROR";
		$retData['uzenet'] = "Még nincs egy hír sem!";
		}
		else
		{
				$retData['eredmény'] = "OK";
				foreach($hirek as $hir)
				{
				array_push($retData['uzenet'], $hir['id']."<br>".$hir['nev']."<br>".$hir['uzenet']."<br>".$hir['datum']);
				}
			Menu::setMenu();
		}
	
		}

	catch (PDOException $e) {
				
					$retData['uzenet'] = "Adatbázis hiba: ".$e->getMessage()."!";
		}
		return $retData;
}
public function beuszras()
{
	try
	{
		$connection = Database::getConnection();
		$datum=date("Y-m-d");
		if(isset($_POST['nev']) && isset($_POST['uzenet']))
    {
	
        $_POST['nev'] = trim($_POST['nev']);
        $_POST['uzenet'] = trim($_POST['uzenet']);

       if($_POST['nev'] != "" && $_POST['uzenet'] != "")
     {

        $sql = "insert into hirek values (0, '".$_POST['nev']."', '".$_POST['uzenet']."', '".$datum."')";
       $count = $connection->query($sql);
       $newid = $connection->lastInsertId();
	   
      }
       elseif($_POST['nev'] == "" && $_POST['uzenet'] == "")
       {
        echo "Hiba: Nem meg semmit"; 
       }
       elseif($_POST['nev'] == "")
       {
        echo "Hiba: Nem adott meg felhasználónevet"; 
        }
       elseif($_POST['uzenet'] == "")
        {
       echo "Hiba: Nem adott meg tartalmat"; 
       }
       }
	}
	catch (PDOException $e) {
   echo "Hiba: ".$e->getMessage();
  }
}

}

?>
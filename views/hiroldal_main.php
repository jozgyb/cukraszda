
<h2> Híroldal</h2>
<h4>Ha bármilyen híre van kérem ossza megvelünk!</h4>
<div class="hiroldal">

<div class="hiroldal2">
<form method="post" name="hirek" >
<div class="sor"><input type="text" name="nev" placeholder="Név" id="nev"></div>
<div class="sor"><textarea name="uzenet" placeholder="Üzenet"  rows="4" cols="50"></textarea></div>
<div class="sor"><input type=submit id="gomb" name="gomb" value="Küldés"></div>
</form>

 <h3>Hírek</h3>
 <?php
 $i=1;
 foreach($viewData['uzenet'] as $uzenet){
	 ?><div class="nevresz">

	 <div class="tartalom2">
	 <?php
 echo $uzenet."<br>";
 ?></div><div class="tartalom">
 <form method="post">
 <h5>Komment</h5>
 <textarea rows="2" cols="105" class="komment" name="komment"></textarea><input type="text" class="tuntes" name="tuntes" value="<?php echo $i; $i++;?>"><input name="komigomb" class="komigomb" type="submit">
 </form>
 </div>
 <?php
 foreach($viewData['komment'] as $komm){
	 echo $komm."<br>";
 }
 ?>
 
 </div><?php
 }

 ?>


<div class="belso">
<div class="belep">

<form action="<?= SITE_ROOT ?>beleptet" method="post">
  <fieldset>
<legend><h2>Belépés</h2></legend>
    <label for="login">Felhasználó:</label><input type="text" name="login" id="login"><br>
    <label for="password">Jelszó:</label><input type="password" name="password" id="password" ><br>
    <input type="submit" class="gombi" value="Bejelentkezés">
  </fieldset>
</form>
<h2><br><?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br></h2>
</div>
<div class="regisztracio">
<form method="post">
  <fieldset>
<legend><h2>Regisztráció</h2></legend>
<label for="Csaladi_nev">Családi_név:</label><input type="text" name="Csaladi_nev" id="login"><br>
<label for="utonev">Utónév:</label><input type="text" name="utonev" id="login"><br>
<label for="bejelenkezes">Felhasználó:</label><input type="text" name="bejelenkezes" id="login"><br>
 <label for="password">Jelszó:</label><input type="password" name="jelszo" id="password" ><br>
    <input type="submit" class="gombi" value="Regisztáció"><br>
  </fieldset>
</form>
</div>
</div>


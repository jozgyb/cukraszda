<form method="post" id="arlistaForm">
    <div class="row">
        <div class="mt-3 col-lg-2">
            <div class="btn-group" role="group">
                <input type="radio" class="btn-check" name="mentes" id="osszes" value="" checked>
                <label class="btn btn-outline-primary" for="osszes">Összes</label>

                <input type="radio" class="btn-check" name="mentes" id="glutenmentes" value="G">
                <label class="btn btn-outline-primary" for="glutenmentes">Gluténmentes</label>

                <input type="radio" class="btn-check" name="mentes" id="laktozmentes" value="L">
                <label class="btn btn-outline-primary" for="laktozmentes">Laktózmentes</label>
            </div>
        </div>
        <div class="mt-3 col">
            <button type="submit" class="btn btn-primary mx-auto col-lg-1">Keresés</button>
        </div>
    </div>
</form>

<div class="row">
    <table class="table table-hover">
        <thead>
            <?php foreach ($viewData['sutik'][0] as $fejlec => $ertek) {
                echo "<th>{$fejlec}</th>";
            } ?>
        </thead>
        <tbody>
            <?php foreach ($viewData['sutik'] as $suti) {
                echo "<tr>";
                foreach ($suti as $tulajdonsag) {
                    echo "<td>{$tulajdonsag}</td>";
                }
                echo "</tr>";
            } ?>
        </tbody>
    </table>
</div>
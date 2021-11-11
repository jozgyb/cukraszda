<script>
    $(function() {
        $("#day").datepicker();
        $("#day").datepicker("option", "dateFormat", "yy-mm-dd");
    });
</script>
<form method="post" id="napiForm">
    <div class="row">
        <div class="form-floating mt-3 col-lg-2 mx-auto">
            <input class="form-control" type="text" id="day" name="day">
            <label for="day">Árfolyam nap:</label>
        </div>
    </div>
    <div class="row">
        <div class="form-floating mt-3 col-lg-2 mx-auto">
            <!-- <input class="form-control " id="" name="dailyCurrencyNames">-->
            <input class="form-control" list="currenciesAvailable" id="currencyDataList" name="currencyDataList">
            <label for="currencyDataList">Adjon meg egy devizát:</label>
            <datalist id="currenciesAvailable">
                <?php foreach($viewData['currencies']['Currencies']->Curr as $curr)
                {
                    echo "<option value=\"{$curr}\">";
                }?>
            </datalist>
        </div>
    </div>
    <div class="row">
        <button type="submit" class="btn btn-primary mx-auto col-lg-1 mt-3">Keresés</button>
    </div>
</form>
<?php if (isset($viewData['currencyDataList']) && isset($viewData['napiArfolyam'])) { ?>
    <div>
        <p>
            <?php if (empty($viewData['napiArfolyam'])) {
                $currencies = implode(", ", $viewData['currencyDataList']);
                echo "A megadott napra ({$viewData['day']}) és devizá(k)ra ({$currencies}) nem található árfolyam adat.";
            } else {
                $chosen_day = $viewData['napiArfolyam']['Day']['date'];
                echo "<br> {$chosen_day} <br>";
                $rates = $viewData['napiArfolyam']['Day']->Rate;
                $rateIndex = 0;
                foreach ($rates as $rate) {
                    $currencyName = $viewData['currencyDataList'][$rateIndex];
                    $rateIndex++;
                    echo "<br> {$currencyName} : {$rate} <br>";
                }
            } ?>
        </p>
    </div>
<?php } ?>
<?php if (isset($viewData['monthlyCurrencyNames']) && isset($viewData['haviArfolyam'])) { ?>
    <div>
        <table>
            <thead>
                <th>Dátum</th>
                <?php foreach ($viewData['monthlyCurrencyNames'] as $currencyName) { ?>
                    <th><?php echo $currencyName; ?></th>
                <?php } ?>
            </thead>
            <tbody>
                <?php foreach ($havi_arfolyam['Day'] as $nap => $xml) { ?>
                    <tr>
                        <td><?php print($xml['date']); ?></td>
                        <?php foreach ($xml->Rate as $rate) { ?>
                            <td><?php echo $rate . " HUF"; ?></td>
                        <?php } ?>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
<?php } ?>
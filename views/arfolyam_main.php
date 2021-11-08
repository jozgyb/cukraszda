<script>
    $(function() {
        $("#day").datepicker();
        $("#day").datepicker("option", "dateFormat", "yy-mm-dd");
    });
</script>
<form method="post">
    <div class="col-auto">
        <p>Napi árfolyam: <input class="form-control" type="text" id="day" name="day" placeholder="Válasszon napot árfolyamhoz:"></p>
    </div>
    <div class="col-auto">
        <input class="form-control " id="dailyCurrencyNames" name="dailyCurrencyNames" placeholder="Adjon meg egy devizát:">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<?php if (isset($viewData['dailyCurrencyNames']) && isset($viewData['napiArfolyam'])) { ?>
    <div>
        <p>
            <?php if (empty($viewData['napiArfolyam'])) {
                $currencies = implode(", ", $viewData['dailyCurrencyNames']);
                echo "A megadott napra ({$viewData['day']}) és devizá(k)ra ({$currencies}) nem található árfolyam adat.";
            } else {
                $chosen_day = $viewData['napiArfolyam']['Day']['date'];
                echo "<br> {$chosen_day} <br>";
                $rates = $viewData['napiArfolyam']['Day']->Rate;
                $rateIndex = 0;
                foreach($rates as $rate)
                {
                    $currencyName = $viewData['dailyCurrencyNames'][$rateIndex];
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
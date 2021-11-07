<?php if (isset($viewData['dailyCurrencyNames']) && isset($viewData['napiArfolyam'])) { ?>
<div>
    <p>
        <?php echo $viewData['napiArfolyam']; ?>
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
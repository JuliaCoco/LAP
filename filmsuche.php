<?php
/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 04.02.2018
 * Time: 18:27
 */
include 'config.php';

?>
    <form action="filmsuche.php" method="get">
        suchen nach:
        <input type="hidden" name="aktion" value="suchen">
        <input type="text" name="suchbegriff" id="suchbegriff">
        <input type="submit" value="suchen">
    </form>
<?php

if ( isset($_GET['suchbegriff']) and trim ($_GET['suchbegriff']) != '' ) {
    $suchbegriff = trim($_GET['suchbegriff']);
    echo "<p>Gesucht wird nach: <b>$suchbegriff</b></p>";
    $suche_nach = "%{$suchbegriff}%";
}

    $query = 'SELECT f.titel, f.erscheinungs_datum, p.bezeichnung
                     FROM film f, produktionsfirma p
                     WHERE f.titel LIKE ? OR p.bezeichnung LIKE ?';

$stmt = $connect->prepare($query);
$stmt->bindParam(1, $suche_nach, PDO::PARAM_STR);
$stmt->bindParam(2, $suche_nach, PDO::PARAM_STR);

$stmt->execute();
$result = $stmt->fetchAll();

echo '<table border="1">';
foreach ($result as $foundfilm) {
    echo '<tr>';
    echo '<td>'.$foundfilm["titel"].'</td>';
    echo '<td>'.$foundfilm["erscheinungs_datum"].'</td>';
    echo '<td>'.$foundfilm["bezeichnung"].'</td>';
    echo '<tr>';
}
echo '</table>';




<?php
/*
 * update values, don't forget the where clause!
 * never write the values directly into the statement!!!
 * use bindParam und write ? into the statement
 */

include 'config.php';

$query = 'update event set eve_termin = ?, dra_id = ? where id = 1';
$stmt = $con->prepare($query);
$stmt->bindParam(1, $datetime);
$stmt->bindParam(2, $dra_id);
$stmt->execute();
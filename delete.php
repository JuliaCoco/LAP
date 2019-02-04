<?php
/*
 * delete values
 * never write the values directly into the statement!!!
 * use bindParam und write ? into the statement
 */

include 'config.php';

$query = 'delete event where eve_termin = ? and dra_id = ?';
$stmt = $con->prepare($query);
$stmt->bindParam(1, $datetime);
$stmt->bindParam(2, $dra_id);
$stmt->execute();
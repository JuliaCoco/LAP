<?php
/*
 * insert values into database
 * never write the values directly into the statement!!!
 * use bindParam und write ? into the statement
 */

include 'config.php';

$query = 'insert into event (eve_termin, dra_id) values (?, ?)';
$stmt = $con->prepare($query);
$stmt->bindParam(1, $datetime);
$stmt->bindParam(2, $dra_id);
$stmt->execute();
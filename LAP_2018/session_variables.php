<?php

// declare the session variables
session_start();
$_SESSION['anzahl'] = 5;
$_SESSION['sum'] = 5;

// get the value from session variables
session_start();
$anzahl = $_SESSION['anzahl'];
$sum = $_SESSION['sum'];
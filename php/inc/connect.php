<?php
header('Content-Type: text/html; charset=utf-8');
date_default_timezone_set('Europe/Istanbul');

$servername = "localhost";

$username = "root";
$password = "";
$dbname = "3kelime";
/*
$username = "emrecoban_3kelime";
$password = "Y{?EYM0Q$!H!";
$dbname = "emrecoban_3kelime";
*/

$conn = mysqli_connect($servername, $username, $password, $dbname);
$conn->set_charset("utf8");
?>
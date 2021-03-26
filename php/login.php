<?php
session_start();
include("inc/connect.php");

$mail = @$_POST["mail"];
$pass = @$_POST["pass"];

$sqlBak = "SELECT mail, pass, userID, kontrol FROM userlist WHERE mail='$mail' AND pass='$pass'";
$kayitSayisi = mysqli_num_rows(mysqli_query($conn, $sqlBak));
$idAl = mysqli_fetch_assoc(mysqli_query($conn, $sqlBak));

if($kayitSayisi > 0){
	$_SESSION["userID"] = $idAl["userID"];
	$_SESSION["kontrol"] = $idAl["kontrol"];
	$_SESSION["girisOK"] = "1";
	header('Location: index.php?giris=OK');
}else{
	header('Location: index.php');
}
?>
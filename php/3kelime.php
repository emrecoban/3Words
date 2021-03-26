<?php
session_start(); 
include("inc/connect.php");

$kelime1 = @$_POST["kelime1"];
$kelime2 = @$_POST["kelime2"];
$kelime3 = @$_POST["kelime3"];
$kimden = @$_SESSION["userID"];
$kime = @$_POST["kime"];

$sql = "INSERT INTO 3kelime(kelime1, kelime2, kelime3, kimden, kime) VALUES('$kelime1', '$kelime2', '$kelime3', '$kimden', '$kime')";
if (mysqli_query($conn, $sql)) {
	header('Location: index.php?U='.$kime);
} else {
	echo "Beklenmedik bir sorun var." . mysqli_error($conn);
}
mysqli_close($conn);
?>
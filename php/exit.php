<?php
session_start();
unset($_SESSION['userID']);
unset($_SESSION['girisOK']);
header('Location: index.php');
?>
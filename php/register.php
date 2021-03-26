<?php
include("inc/connect.php");

$reelname = @$_POST["reelname"];
$mail = @$_POST["mail"];
$pass = @$_POST["pass"];

$sqlBak = "SELECT mail FROM userlist WHERE mail='$mail'";
$kayitSayisi = mysqli_num_rows(mysqli_query($conn, $sqlBak));

if($kayitSayisi > 0){
	echo "Bu e-posta adresi daha önce kullanılmış.";
}else{
	$sql = "INSERT INTO userlist(reelname, mail, pass) VALUES('$reelname', '$mail', '$pass')";
	if (mysqli_query($conn, $sql)) {
		echo "<b>" . $mail . "</b> e-posta adresini kullanarak başarıyla kayıt oldunuz. <br /><br />Belirlediğiniz parola ile giriş yapabilirsiniz.";
	} else {
		echo "Beklenmedik bir sorun var." . mysqli_error($conn);
	}
}
mysqli_close($conn);
?>
<br /><br />
<button style="background-color:#3E606F" onclick="kayitBox()">Kapat</button>
<?php session_start(); 
include("inc/connect.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>3Kelime</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	function kayitBox(){
		var x = document.getElementById("kayitBox");
		var y = document.getElementById("kayitLink");
		if (x.style.display === "none") {
			x.style.display = "block";
			y.style.color = "#FFF";
			y.style.backgroundColor = "#91AA9D";
		} else {
			x.style.display = "none";
			y.style.color = null;
			y.style.backgroundColor = null;
		}
	}
$(document).ready(function(){
    $("#submitle").click(function(){
        var reelname = $("#reelname").val();
		var mail = $("#mail").val();
		var pass = $("#pass").val();
		if(reelname=="" || mail=="" || pass==""){
			alert("Bu alanlar boş bırakılamaz.");
		}else{
			$.post("register.php", {reelname: reelname, mail: mail, pass: pass}, function(result){
				$("#gelenSonuc").html(result);
				$("#formEleman").css("display", "none");
			});
		}
    });
});
</script>
</head>

<body>
<?php include("inc/bar.php"); ?>
<div id="mainDiv">
	<div id="mainLeft">
    <?php
	$user = @$_GET["U"];
	if(isset($user)){
		$sqlBilgi = "SELECT userID, img, reelname, bio, kontrol FROM userlist WHERE userID='".$user."'";
		$rows = mysqli_fetch_assoc(mysqli_query($conn, $sqlBilgi));
	?>
    <div id="profilbar">
    	<div id="profilbarleft"><div class="avatarR"><img src="./img/<?=$rows["img"]?>" width="40" height="40" border="0" /></div></div>
        <div id="profilbarright"><h1><?=$rows["reelname"];?></h1></div>
    </div>
    
        <div class="icerik">
        <p align="left"><b>Bio:</b> <?=$rows["bio"];?></p>
        <hr style="width:615px;float:left;height:1px;border:none;" color="#09F" />
        <div style="clear:left;"></div>
        <?php if(@$_SESSION["girisOK"] == "1" && @$_SESSION["kontrol"] == "1"){ ?>
        <?php 
			$islem = @$_GET["islem"];
			if(!empty($islem)){
				if($islem == "hesapsil"){
					$sqlSil = "DELETE FROM userlist WHERE userID=" . $_GET["id"];
					mysqli_query($conn, $sqlSil);
					$sqliletiSil = "DELETE FROM 3kelime WHERE kimden=" . $_GET["id"] . " or kime=" . $_GET["id"];
					mysqli_query($conn, $sqliletiSil);
					header('Location: users.php');
				}else if($islem == "yonetici"){
					$kontrol = $_GET["kontrol"];
					$sqlUpt = "UPDATE userlist SET kontrol='$kontrol' WHERE userID=". $_GET["id"];
					mysqli_query($conn, $sqlUpt);
					header('Location: index.php?U=' . $_GET["id"]);
				}else if($islem == "kelimesil"){
					$sqlSil2 = "DELETE FROM 3kelime WHERE kelimeID=" . $_GET["kelimeid"];
					mysqli_query($conn, $sqlSil2);
					header('Location: index.php?U=' . $_GET["id"]);
				}
			
			}
		?>
        
        <input type="button" onclick="location.href='index.php?U=<?=$user?>&islem=hesapsil&id=<?=$user?>';" class="inpBtn" style="background-color:#C30;width:300px;" value="Hesabı Kaldır" style="margin-top:5px;" />
        <?php if($rows["kontrol"] == "0"){ ?>
        <input type="button" onclick="location.href='index.php?U=<?=$user?>&islem=yonetici&id=<?=$user?>&kontrol=1';" class="inpBtn" style="background-color:#0C6;width:300px;" value="Yönetici Yap" style="margin-top:5px;" />
        <?php }else{ ?>
        <input type="button" onclick="location.href='index.php?U=<?=$user?>&islem=yonetici&id=<?=$user?>&kontrol=0';" class="inpBtn" style="background-color:#C30;width:300px;" value="Yöneticiyi Kaldır" style="margin-top:5px;" />
		<?php } ?>
        <hr style="width:615px;float:left;height:1px;border:none;" color="#09F" />
        <?php } ?>
        <?php if(@$_SESSION["girisOK"] == "1"){ ?>
        	<h2>Bir şeyler yaz</h2>
        	<form action="3kelime.php" method="POST">
            	<input type="hidden" name="kime" value="<?=$user?>" />
            	<input type="text" name="kelime1" class="inputs inputsWd" placeholder="1. Kelime" required="required" maxlength="17" autocomplete="off" />
                <input type="text" name="kelime2" class="inputs inputsWd" placeholder="2. Kelime" required="required" maxlength="17" autocomplete="off" />
                <input type="text" name="kelime3" class="inputs inputsWd" placeholder="3. Kelime" required="required" maxlength="17" autocomplete="off" />
                <input type="submit" value="3 Kelime Gönder!" class="inpBtn" style="width:620px;" />
            </form>
            <br />
            <hr style="width:615px;float:left;height:1px;border:none;" color="#09F" />
        <div style="clear:left;"></div>
        <?php } ?>
            <h2>En son yazanlar</h2>
            <?php
				$sqlLoop = "SELECT * FROM 3kelime WHERE kime=".$user." ORDER BY kelimeID DESC LIMIT 100";
				$sonuc = mysqli_query($conn, $sqlLoop);
				while($birT = mysqli_fetch_assoc($sonuc)){
					$sqlProfil = "SELECT userID, img, reelname FROM userlist WHERE userID='".$birT["kimden"]."'";
					$Profil = mysqli_fetch_assoc(mysqli_query($conn, $sqlProfil));
			?>
            <div id="profilbar">
                <div id="profilbarleft"><div class="avatarR"><img src="./img/<?=$Profil["img"]?>" width="40" height="40" border="0" /></div></div>
                <div id="profilbarright"><p><a href="index.php?U=<?=$Profil["userID"]?>"><b><?=$Profil["reelname"]?></b></a> demiş ki; <b><?=$birT["kelime1"]?></b>, <b><?=$birT["kelime2"]?></b> ve <b><?=$birT["kelime3"]?></b>.<?php if(@$_SESSION["girisOK"] == "1" && @$_SESSION["kontrol"] == "1"){ ?><BR /><a href="index.php?U=<?=$user?>&islem=kelimesil&id=<?=$user?>&kelimeid=<?=$birT["kelimeID"]?>" style="color:#C30;"><b>Bu İletiyi Sil</b></a><?php } ?></p></div>
            </div>
            <?php } ?>
        </div>
    <?php }else{ ?>
    	<h1>Neler oluyor?</h1>
        <div class="icerik">
        	<?php
				$sqlLoop = "SELECT * FROM 3kelime ORDER BY kelimeID DESC LIMIT 30";
				$sonuc = mysqli_query($conn, $sqlLoop);
				while($birT = mysqli_fetch_assoc($sonuc)){
					$sqlProfil = "SELECT userID, img, reelname FROM userlist WHERE userID=".$birT["kimden"]."";
					$profilSonuc = mysqli_query($conn, $sqlProfil);
					$Profil = mysqli_fetch_assoc($profilSonuc);
					$sqlProfil2 = "SELECT userID,reelname FROM userlist WHERE userID=".$birT["kime"]."";
					$profilSonuc2 = mysqli_query($conn, $sqlProfil2);
					$Profil2 = mysqli_fetch_assoc($profilSonuc2);
					if(!$profilSonuc2){
						echo "".mysqli_error($conn);
						}
			?>
            <div id="profilbar">
                <div id="profilbarleft"><div class="avatarR"><img src="./img/<?=$Profil["img"]?>" width="40" height="40" border="0" /></div></div>
                <div id="profilbarright"><p><a href="index.php?U=<?=$Profil["userID"]?>"><b><?=$Profil["reelname"]?></b></a>,  <a href="index.php?U=<?=$Profil2["userID"]?>"><b><?=$Profil2["reelname"]?></b></a> için demiş ki; <b><?=$birT["kelime1"]?></b>, <b><?=$birT["kelime2"]?></b> ve <b><?=$birT["kelime3"]?></b>.</p></div>
            </div>
            <?php } ?>
        </div>
    <?php } ?>
    </div>
    <div id="mainRight">
    	<?php include("inc/rightBox.php"); ?>
    </div>
</div>
<?php include("inc/footer.php"); ?>
</body>
</html>

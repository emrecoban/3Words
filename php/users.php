<?php session_start(); 
include("inc/connect.php");
if(@$_SESSION["girisOK"] == "1" && @$_SESSION["kontrol"] == "1"){
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kullanıcı Ara - 3Kelime</title>
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
    	<h1>Kullanıcı Ara</h1>
        <div class="icerik">
        <form action="users.php" method="GET">
        <input type="text" name="ara" value="<?=@$_GET["ara"]?>" class="inputs inputsWd2" placeholder="E-posta veya ad soyad..." required="required" autocomplete="off" />
        <input type="submit" value="Ara" class="inpBtn" style="width:620px;" />
        </form>
        	<?php
				$aranacak = @$_GET["ara"];
				$sqlLoop = "SELECT * FROM userlist WHERE reelname LIKE '%$aranacak%' or mail LIKE '%$aranacak%' ORDER BY userID DESC LIMIT 50";
				$sonuc = mysqli_query($conn, $sqlLoop);
				if(mysqli_num_rows($sonuc) < 1){
					echo "<p align='center'><b>Böyle bir kayıt yok.</b></p>";	
				}
				while($birT = mysqli_fetch_assoc($sonuc)){
				
			?>
            <div id="profilbar">
                <div id="profilbarleft"><div class="avatarR"><img src="./img/<?=$birT["img"]?>" width="40" height="40" border="0" /></div></div>
                <div id="profilbarright"><p><a href="index.php?U=<?=$birT["userID"]?>"><b><?=$birT["reelname"]?></b></a></p></div>
            </div>
            <?php } ?>
        </div>
    </div>
    <div id="mainRight">
    	<?php include("inc/rightBox.php"); ?>
    </div>
</div>
<?php include("inc/footer.php"); ?>
</body>
</html>
<?php } ?>
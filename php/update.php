<?php session_start(); 
include("inc/connect.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ayarlar - 3Kelime</title>
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
    <?php if(@$_SESSION["girisOK"] == "1"){ 
		
		if(@$_SERVER['REQUEST_METHOD'] == 'POST'){
				$reelname = htmlspecialchars(@$_POST["reelname"]);
				$bio = htmlspecialchars(@$_POST["bio"]);
				$pass = htmlspecialchars(@$_POST["pass"]);
				$resim = @$_FILES['img']['name'];
				$updateSQL="UPDATE userlist SET reelname='$reelname', bio='$bio', pass='$pass' WHERE userID='".$_SESSION["userID"]."'";
					if(!empty($resim)){
						$no1=rand(10,100);
						$no2=rand(100,1000);
						$no3=rand(1000,10000);
						$uzanti = explode('.', $resim);
						$uzanti = $uzanti[count($uzanti)-1];
						$yeniisim= $no1.$no2.$no3.".".$uzanti;
						$dosya = $_FILES['img']['tmp_name'];
						move_uploaded_file($dosya, 'img/' . $yeniisim);
						$updateSQL="UPDATE userlist SET reelname='$reelname', bio='$bio', pass='$pass', img='$yeniisim' WHERE userID='".$_SESSION["userID"]."'";
					}
			if (mysqli_query($conn, $updateSQL)) {
				echo "<script>alert('Başarıyla güncellendi!')</script>";
			} else {
				echo "<script>alert('Bir hata oluştu:".mysqli_error($conn)."')</script>";
			}
		}
			
		$profilAl = "SELECT userID, img, mail, reelname, bio, pass FROM userlist WHERE userID='".$_SESSION["userID"]."'";
		$profil = mysqli_fetch_assoc(mysqli_query($conn, $profilAl));
	?>
    	<h1>Ayarlar</h1>
        <div class="icerik">
        	<form action="" method="POST" enctype="multipart/form-data">
            	<input type="text" value="<?=$profil["mail"]?>" class="inputs inputsWd2" style="border-bottom:3px solid #CCC;" disabled="disabled" />
                <br />
                <b>Ad Soyad:</b>
            	<input type="text" name="reelname" value="<?=$profil["reelname"]?>" class="inputs inputsWd2" placeholder="Ad Soyad" required="required" autocomplete="off" />
                <br />
                <b>Bio:</b>
                <input type="text" name="bio" value="<?=$profil["bio"]?>" class="inputs inputsWd2" placeholder="Senin hakkında bir şeyler... (bio)" required="required" autocomplete="off" />
                <br />
                <b>Parola:</b>
                <input type="password" name="pass" value="<?=$profil["pass"]?>" class="inputs inputsWd2" required="required" autocomplete="off" />
                <label for="file"><b>Profil Resmi:</b></label> <input type="file" id="file" name="img" class="inputfile" />
                <input type="submit" value="Güncelle" class="inpBtn" />
            </form>
        </div>
        <?php }else{ header('Location: index.php');}?>
    </div>
    <div id="mainRight">
    	<?php include("inc/rightBox.php"); ?>
    </div>
</div>
<?php include("inc/footer.php"); ?>
</body>
</html>

<?php session_start(); 
include("inc/connect.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nedir? - 3Kelime</title>
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
    	<h1>Nedir?</h1>
        <div class="icerik">
        	3Kelime, kullanıcıların kendileri hakkında 3 sözcük ile birbirlerine tanımlamalarına olanak sağlayan bir mini sosyal ağ projesidir. Bu proje, Bilgisayar ve Öğretim Teknolojileri Eğitimi bölümü Çoklu Ortam Tasarımı ve Üretimi dersi kapsamında oluşturulmuştur.
            <br />
            <br />
            Kullanıcıların kendilerine ait e-posta adresleriyle sisteme dahil olarak, diğer kullanıcılar için paylaşımda bulunabilir. Aynı zamanda kendine ait profillerine özelleştirebilirler.
            <br />
            <br />
            Ön yüz tarafında CSS, HTML ve JavaScript (+jQuery) teknolojilerinden yararlanılmıştır. Sunucu tarafında PHP ile işlenen veriler MySQL veritabanında saklanmaktadır. 
        </div>
    </div>
    <div id="mainRight">
    	<?php include("inc/rightBox.php"); ?>
    </div>
</div>
<?php include("inc/footer.php"); ?>
</body>
</html>

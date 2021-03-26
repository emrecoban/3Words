		<div class="rightBox">
        <?php 
		if(@$_SESSION["girisOK"] == "1"){
		$sqlBilgi = "SELECT userID, img, mail, reelname, bio, kontrol FROM userlist WHERE userID=".$_SESSION["userID"]."";
		$rows = mysqli_fetch_assoc(mysqli_query($conn, $sqlBilgi));
		?>
        	<h1>Profilim</h1>
            <table width="280" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100" height="100" rowspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><img src="./img/<?php echo $rows["img"] ?>" width="70" height="70" /></td>
                <td width="10" rowspan="2" align="center" valign="middle">&nbsp;</td>
                <td width="170" height="23" align="left" valign="middle"><?php echo $rows["reelname"] ?></td>
              </tr>
              <tr>
                <td height="72" align="left" valign="top"><i><?php echo substr($rows["bio"],0,40); ?>...</i></td>
              </tr>
            </table>
            <?php if($rows["kontrol"]=="1"){ ?>
            <input type="button" onclick="location.href='users.php';" class="inpBtn" value="Kullanıcı Ara" style="margin-top:5px;" />
            <?php } ?>
            <input type="button" onclick="location.href='update.php';" class="inpBtn" value="Ayarlar" style="margin-top:5px;" />
            <input type="button" onclick="location.href='index.php?U=<?=$_SESSION["userID"];?>';" class="inpBtn" value="Profiline Bak" style="margin-top:5px;" />
  		<?php }else{?>
            <h1>Giriş Yap</h1>
            <form action="login.php" method="POST">
                <input type="email" name="mail" placeholder="E-Posta adresi" class="inputs" required="required" />
                <input type="password" name="pass" placeholder="****" class="inputs" required="required" />
                <input type="submit" value="Giriş Yap" class="inpBtn" />
            </form>
        <?php } ?>
        </div>
        <div class="rightBox">
        	<h1>En Yeniler</h1>
            <table width="280" border="0" cellspacing="0" cellpadding="0">
            <?php
				$sqlLoop = "SELECT img, reelname, userID FROM userlist ORDER BY userID DESC LIMIT 25";
				$sonuc = mysqli_query($conn, $sqlLoop);
				while($birT = mysqli_fetch_assoc($sonuc)){
			?>
              <tr class="sirali">
                <td width="63" height="70" align="center" valign="middle"><div class="avatarR"><a href="index.php?U=<?=$birT["userID"]?>"><img src="./img/<?=$birT["img"]?>" width="40" height="40" border="0" /></a></div></td>
                <td width="10">&nbsp;</td>
                <td width="207" align="left" valign="middle"><a href="index.php?U=<?=$birT["userID"]?>"><?=$birT["reelname"]?></a></td>
              </tr>
             <?php } ?>
            </table>
        </div>
        <div class="rightBox">
        	<h1>3Kelime</h1>
            <p align="left">
                <ul>
                    <li><a href="nedir.php">Nedir?</a></li>
                    <li><a href="http://www.omu.edu.tr">OMÜ</a></li>
                    <li><a href="http://egitim.omu.edu.tr">Eğitim Fakültesi</a></li>
                    <li><a href="http://www.emrecoban.com.tr">Emre ÇOBAN</a></li>
                </ul>
            </p>
        </div>